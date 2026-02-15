# Requires: Tesseract OCR installed (UB Mannheim build recommended)
# Usage: Run in PowerShell (preferably as Administrator if Tesseract was installed system-wide)
# This script extracts text from images used in the article
#   d:\tai-lieu-main\04_Guides_Tutorials\2025-11-06_TOM_TAT_32个AI提示词技巧.md
# and writes per-image .txt files + a combined Markdown.

param(
  [string]$tesseractExe = "",
  [string]$lang = "eng+chi_sim",
  [int]$psm = 6
)

$ErrorActionPreference = 'Stop'

function Resolve-TesseractPath {
  param([string]$custom)
  if ($custom -and (Test-Path -LiteralPath $custom)) { return (Resolve-Path -LiteralPath $custom).Path }
  # Common install locations
  $candidates = @(
    "C:\Program Files\Tesseract-OCR\tesseract.exe",
    "C:\Program Files (x86)\Tesseract-OCR\tesseract.exe",
    "$env:LOCALAPPDATA\Programs\Tesseract-OCR\tesseract.exe",
    "$env:LOCALAPPDATA\Tesseract-OCR\tesseract.exe"
  )
  foreach ($c in $candidates) { if (Test-Path -LiteralPath $c) { return $c } }
  # PATH lookup
  $cmd = Get-Command tesseract -ErrorAction SilentlyContinue
  if ($cmd -and $cmd.Source) { return $cmd.Source }
  throw "Không tìm thấy tesseract.exe. Hãy cài đặt Tesseract (UB Mannheim) và chạy lại, hoặc truyền tham số -tesseractExe 'Đường/Dẫn/tesseract.exe'."
}

# Locate images directory
$repoRoot = "d:\tai-lieu-main"
$imgDir = Join-Path $repoRoot "04_Guides_Tutorials\images\2025-11-06_32_prompt_tips"
if (-not (Test-Path -LiteralPath $imgDir)) { throw "Không tìm thấy thư mục ảnh: $imgDir" }

# Output directory
$outDir = Join-Path $repoRoot "04_Guides_Tutorials\ocr\2025-11-06_32_prompt_tips"
if (-not (Test-Path -LiteralPath $outDir)) { New-Item -ItemType Directory -Force -Path $outDir | Out-Null }

# Resolve Tesseract path
$tess = Resolve-TesseractPath -custom $tesseractExe
Write-Host "Dùng Tesseract: $tess"

# Extract text per image
$images = Get-ChildItem -LiteralPath $imgDir -File -Include *.png, *.jpg, *.jpeg, *.gif, *.webp | Sort-Object Name
if ($images.Count -eq 0) { throw "Không tìm thấy ảnh trong $imgDir" }

$perImage = @()

foreach ($img in $images) {
  $baseName = [System.IO.Path]::GetFileNameWithoutExtension($img.Name)
  $txtOut = Join-Path $outDir ("{0}.txt" -f $baseName)
  $outBase = $txtOut.Replace('.txt','')
  Write-Host "OCR: $($img.Name) -> $([System.IO.Path]::GetFileName($txtOut))"
  $proc = Start-Process -FilePath $tess -ArgumentList @("$($img.FullName)", "$outBase", '-l', "$lang", '--psm', "$psm") -Wait -PassThru
  if ($proc.ExitCode -ne 0) { Write-Warning "Tesseract trả về mã lỗi $($proc.ExitCode) cho ảnh $($img.Name)" }
  $perImage += [PSCustomObject]@{ Image = $img.Name; TextPath = $txtOut }
}

# Combine into Markdown
$mdOut = Join-Path $repoRoot "04_Guides_Tutorials\2025-11-06_TOM_TAT_32_prompt_tips_IMAGES_TEXT.md"
$header = "# OCR output - 32 Prompt Engineering images"
$header | Set-Content -LiteralPath $mdOut -Encoding UTF8
"Source: 04_Guides_Tutorials/2025-11-06_TOM_TAT_32个AI提示词技巧.md" | Add-Content -LiteralPath $mdOut -Encoding UTF8
"Images dir: 04_Guides_Tutorials/images/2025-11-06_32_prompt_tips" | Add-Content -LiteralPath $mdOut -Encoding UTF8
"OCR lang: $lang | PSM: $psm" | Add-Content -LiteralPath $mdOut -Encoding UTF8
"" | Add-Content -LiteralPath $mdOut -Encoding UTF8
"---" | Add-Content -LiteralPath $mdOut -Encoding UTF8
"" | Add-Content -LiteralPath $mdOut -Encoding UTF8

foreach ($row in $perImage) {
  "## $($row.Image)`n" | Add-Content -LiteralPath $mdOut -Encoding UTF8
  if (Test-Path -LiteralPath $row.TextPath) {
    $text = Get-Content -Raw -LiteralPath $row.TextPath
    ($text.Trim()) | Add-Content -LiteralPath $mdOut -Encoding UTF8
  } else {
    "(Không có văn bản trích xuất hoặc lỗi OCR)" | Add-Content -LiteralPath $mdOut -Encoding UTF8
  }
  "`n`n" | Add-Content -LiteralPath $mdOut -Encoding UTF8
}

Write-Host "Hoàn tất. Kết quả:" -ForegroundColor Green
Write-Host " - Thư mục OCR: $outDir" -ForegroundColor Green
Write-Host " - Markdown tổng hợp: $mdOut" -ForegroundColor Green
