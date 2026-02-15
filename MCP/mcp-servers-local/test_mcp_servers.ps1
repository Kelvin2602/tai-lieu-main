# Script kiểm tra và test các MCP servers local
$mcpDir = "D:\tai-lieu-main\MCP\mcp-servers-local"
$mcpJsonPath = "C:\Users\OMG\.cursor\mcp.json"

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "KIEM TRA VA TEST MCP SERVERS" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# 1. Kiểm tra file mcp.json
Write-Host "[1/4] Kiem tra file mcp.json..." -ForegroundColor Yellow
if (Test-Path $mcpJsonPath) {
    Write-Host "  [OK] File ton tai: $mcpJsonPath" -ForegroundColor Green
    
    try {
        $mcpConfig = Get-Content $mcpJsonPath | ConvertFrom-Json
        $localServers = 0
        $remoteServers = 0
        
        foreach ($serverName in $mcpConfig.mcpServers.PSObject.Properties.Name) {
            $server = $mcpConfig.mcpServers.$serverName
            if ($server.command -and $server.args -and $server.args[0] -like "*mcp-servers-local*") {
                $localServers++
                Write-Host "  [LOCAL] $serverName" -ForegroundColor Cyan
            } elseif ($server.type -eq "http" -or $server.url) {
                $remoteServers++
                Write-Host "  [REMOTE] $serverName" -ForegroundColor Gray
            } elseif ($server.command -eq "npx" -or $server.command -eq "python") {
                $remoteServers++
                Write-Host "  [NPM/PYTHON] $serverName" -ForegroundColor Gray
            }
        }
        
        Write-Host ""
        Write-Host "  Tong so servers: $($mcpConfig.mcpServers.PSObject.Properties.Count)" -ForegroundColor Cyan
        Write-Host "  Local servers: $localServers" -ForegroundColor Green
        Write-Host "  Remote/NPM servers: $remoteServers" -ForegroundColor Yellow
    } catch {
        Write-Host "  [ERROR] Khong the parse JSON: $_" -ForegroundColor Red
    }
} else {
    Write-Host "  [ERROR] File khong ton tai!" -ForegroundColor Red
}

Write-Host ""

# 2. Kiểm tra các file servers có tồn tại không
Write-Host "[2/4] Kiem tra cac file servers..." -ForegroundColor Yellow

$serversToCheck = @(
    @{
        Name = "Sequential Thinking"
        Path = "$mcpDir\modelcontextprotocol-servers\src\sequentialthinking\dist\index.js"
    },
    @{
        Name = "Playwright"
        Path = "$mcpDir\playwright-mcp-server\dist\index.js"
    },
    @{
        Name = "context7"
        Path = "$mcpDir\context7-mcp\dist\index.js"
    },
    @{
        Name = "Memory"
        Path = "$mcpDir\modelcontextprotocol-servers\src\memory\dist\index.js"
    },
    @{
        Name = "pdf-reader-mcp"
        Path = "$mcpDir\pdf-reader-mcp\dist\index.js"
    },
    @{
        Name = "Playwright Automation"
        Path = "$mcpDir\playwright-mcp\index.js"
    },
    @{
        Name = "Fetch"
        Path = "$mcpDir\modelcontextprotocol-servers\src\fetch\pyproject.toml"
    }
)

$allExist = $true
foreach ($server in $serversToCheck) {
    if (Test-Path $server.Path) {
        Write-Host "  [OK] $($server.Name)" -ForegroundColor Green
    } else {
        Write-Host "  [ERROR] $($server.Name) - File khong ton tai: $($server.Path)" -ForegroundColor Red
        $allExist = $false
    }
}

if ($allExist) {
    Write-Host ""
    Write-Host "  [SUCCESS] Tat ca cac file servers deu ton tai!" -ForegroundColor Green
} else {
    Write-Host ""
    Write-Host "  [WARNING] Mot so file khong ton tai, can kiem tra lai" -ForegroundColor Yellow
}

Write-Host ""

# 3. Kiểm tra Node.js, Python và dependencies
Write-Host "[3/4] Kiem tra Node.js va Python..." -ForegroundColor Yellow

try {
    $nodeVersion = node --version
    Write-Host "  Node.js: $nodeVersion" -ForegroundColor Green
    
    # Kiểm tra MCP Inspector
    $inspectorCheck = npm list -g @modelcontextprotocol/inspector 2>&1
    if ($LASTEXITCODE -eq 0) {
        Write-Host "  MCP Inspector: Da cai dat" -ForegroundColor Green
    } else {
        Write-Host "  MCP Inspector: Chua cai dat (co the cai: npm install -g @modelcontextprotocol/inspector)" -ForegroundColor Yellow
    }
} catch {
    Write-Host "  [ERROR] Node.js chua duoc cai dat!" -ForegroundColor Red
}

try {
    $pythonVersion = python --version
    Write-Host "  Python: $pythonVersion" -ForegroundColor Green

    # Kiểm tra mcp-server-fetch
    $fetchCheck = python -c "import mcp_server_fetch; print('installed')" 2>&1
    if ($fetchCheck -match "installed") {
        Write-Host "  Fetch Server: Da cai dat (Python module)" -ForegroundColor Green
    } else {
        Write-Host "  Fetch Server: Chua cai dat module (chay: pip install ./modelcontextprotocol-servers/src/fetch)" -ForegroundColor Yellow
    }
} catch {
    Write-Host "  [ERROR] Python chua duoc cai dat!" -ForegroundColor Red
}

Write-Host ""

# 4. Hướng dẫn test
Write-Host "[4/4] Huong dan test servers..." -ForegroundColor Yellow
Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "HUONG DAN TEST" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "1. RESTART CURSOR:" -ForegroundColor Yellow
Write-Host "   - Dong tat ca cua so Cursor" -ForegroundColor White
Write-Host "   - Mo lai Cursor" -ForegroundColor White
Write-Host "   - Cac MCP servers se tu dong khoi dong" -ForegroundColor White
Write-Host ""
Write-Host "2. KIEM TRA TRONG CURSOR:" -ForegroundColor Yellow
Write-Host "   - Mo Settings (Ctrl+,)" -ForegroundColor White
Write-Host "   - Tim 'MCP' hoac 'Model Context Protocol'" -ForegroundColor White
Write-Host "   - Xem danh sach servers dang hoat dong" -ForegroundColor White
Write-Host "   - Kiem tra logs neu co loi" -ForegroundColor White
Write-Host ""
Write-Host "3. TEST VOI MCP INSPECTOR:" -ForegroundColor Yellow
Write-Host ""
Write-Host "   Sequential Thinking:" -ForegroundColor Cyan
Write-Host "   cd $mcpDir\modelcontextprotocol-servers\src\sequentialthinking" -ForegroundColor Gray
Write-Host "   npx @modelcontextprotocol/inspector dist/index.js" -ForegroundColor Gray
Write-Host ""
Write-Host "   Playwright:" -ForegroundColor Cyan
Write-Host "   cd $mcpDir\playwright-mcp-server" -ForegroundColor Gray
Write-Host "   npx @modelcontextprotocol/inspector dist/index.js" -ForegroundColor Gray
Write-Host ""
Write-Host "   context7:" -ForegroundColor Cyan
Write-Host "   cd $mcpDir\context7-mcp" -ForegroundColor Gray
Write-Host "   npx @modelcontextprotocol/inspector dist/index.js --transport stdio" -ForegroundColor Gray
Write-Host ""
Write-Host "   Memory:" -ForegroundColor Cyan
Write-Host "   cd $mcpDir\modelcontextprotocol-servers\src\memory" -ForegroundColor Gray
Write-Host "   npx @modelcontextprotocol/inspector dist/index.js" -ForegroundColor Gray
Write-Host ""
Write-Host "   PDF Reader:" -ForegroundColor Cyan
Write-Host "   cd $mcpDir\pdf-reader-mcp" -ForegroundColor Gray
Write-Host "   npx @modelcontextprotocol/inspector dist/index.js" -ForegroundColor Gray
Write-Host ""
Write-Host "   Fetch:" -ForegroundColor Cyan
Write-Host "   npx @modelcontextprotocol/inspector python -m mcp_server_fetch" -ForegroundColor Gray
Write-Host ""
Write-Host "4. TEST TRONG CURSOR CHAT:" -ForegroundColor Yellow
Write-Host "   - Mo Cursor chat" -ForegroundColor White
Write-Host "   - Thu su dung cac tools tu servers:" -ForegroundColor White
Write-Host "     * Sequential Thinking: 'Help me think through this problem...'" -ForegroundColor Gray
Write-Host "     * Playwright: 'Navigate to a website...'" -ForegroundColor Gray
Write-Host "     * Memory: 'Remember this information...'" -ForegroundColor Gray
Write-Host "     * PDF Reader: 'Read this PDF file...'" -ForegroundColor Gray
Write-Host "     * context7: 'Get documentation for...'" -ForegroundColor Gray
Write-Host "     * Fetch: 'Fetch content from https://example.com...'" -ForegroundColor Gray
Write-Host ""

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Hoan thanh kiem tra!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

