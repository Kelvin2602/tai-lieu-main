# Script khởi động tất cả MCP servers
$mcpDir = "D:\tai-lieu-main\MCP\mcp-servers-local"

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "KHOI DONG TAT CA MCP SERVERS" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Danh sách các servers để khởi động
$servers = @(
    @{
        Name = "playwright-mcp-server"
        Path = "$mcpDir\playwright-mcp-server\dist\index.js"
        Command = "node"
        Args = @()
        Description = "Playwright MCP Server"
    },
    @{
        Name = "context7-mcp"
        Path = "$mcpDir\context7-mcp\dist\index.js"
        Command = "node"
        Args = @("--transport", "stdio")
        Description = "Context7 MCP Server"
    },
    @{
        Name = "pdf-reader-mcp"
        Path = "$mcpDir\pdf-reader-mcp\dist\index.js"
        Command = "node"
        Args = @()
        Description = "PDF Reader MCP Server"
    },
    @{
        Name = "sequential-thinking"
        Path = "$mcpDir\modelcontextprotocol-servers\src\sequentialthinking\dist\index.js"
        Command = "node"
        Args = @()
        Description = "Sequential Thinking MCP Server"
    },
    @{
        Name = "memory"
        Path = "$mcpDir\modelcontextprotocol-servers\src\memory\dist\index.js"
        Command = "node"
        Args = @()
        Description = "Memory MCP Server"
    }
)

Write-Host "Cac servers se duoc khoi dong trong cac cua so PowerShell rieng biet" -ForegroundColor Yellow
Write-Host "Ban co the dong cac cua so nay de dung servers" -ForegroundColor Yellow
Write-Host ""

foreach ($server in $servers) {
    if (Test-Path $server.Path) {
        Write-Host "[START] $($server.Name) - $($server.Description)" -ForegroundColor Green
        
        $argsString = ($server.Args | ForEach-Object { "`"$_`"" }) -join " "
        $scriptContent = @"
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "$($server.Name) - $($server.Description)" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Dang khoi dong..." -ForegroundColor Yellow
Write-Host ""
$($server.Command) `"$($server.Path)`" $argsString
Write-Host ""
Write-Host "Server da dong. Nhan phim bat ky de thoat..." -ForegroundColor Yellow
pause
"@
        
        $tempScript = "$env:TEMP\start_$($server.Name).ps1"
        $scriptContent | Out-File -FilePath $tempScript -Encoding UTF8
        
        Start-Process powershell -ArgumentList "-NoExit", "-ExecutionPolicy", "Bypass", "-File", $tempScript
        Start-Sleep -Seconds 1
    } else {
        Write-Host "[SKIP] $($server.Name) - File khong ton tai: $($server.Path)" -ForegroundColor Yellow
    }
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Hoan thanh!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Cac MCP servers da duoc khoi dong trong cac cua so rieng biet" -ForegroundColor Cyan
Write-Host "De dung servers, dong cac cua so PowerShell tuong ung" -ForegroundColor Yellow
Write-Host ""

