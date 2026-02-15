# Huong dan khoi dong cac MCP servers

## Cac servers da duoc build san:

### 1. playwright-mcp-server
`powershell
cd D:\tai-lieu-main\MCP\mcp-servers-local\playwright-mcp-server
node dist/index.js
`

### 2. context7-mcp
`powershell
cd D:\tai-lieu-main\MCP\mcp-servers-local\context7-mcp
node dist/index.js --transport http
# hoac
node dist/index.js --transport stdio
`

### 3. pdf-reader-mcp
`powershell
cd D:\tai-lieu-main\MCP\mcp-servers-local\pdf-reader-mcp
node dist/index.js
`

### 4. excel-mcp-server
`powershell
cd D:\tai-lieu-main\MCP\mcp-servers-local\excel-mcp-server
.\excel-mcp-server.exe
# hoac neu co launcher
node launcher/launcher.js
`

### 5. Sequential Thinking
`powershell
cd D:\tai-lieu-main\MCP\mcp-servers-local\modelcontextprotocol-servers\src\sequentialthinking
node dist/index.js
`

### 6. Memory
`powershell
cd D:\tai-lieu-main\MCP\mcp-servers-local\modelcontextprotocol-servers\src\memory
node dist/index.js
`

## Su dung voi MCP Inspector

De test cac servers, ban co the su dung MCP Inspector:

`powershell
npx @modelcontextprotocol/inspector node dist/index.js
`

## Su dung trong mcp.json

Ban co the cau hinh trong mcp.json nhu sau:

`json
{
  "mcpServers": {
    "playwright-local": {
      "command": "node",
      "args": [
        "D:\\tai-lieu-main\\MCP\\mcp-servers-local\\playwright-mcp-server\\dist\\index.js"
      ]
    },
    "context7-local": {
      "command": "node",
      "args": [
        "D:\\tai-lieu-main\\MCP\\mcp-servers-local\\context7-mcp\\dist\\index.js",
        "--transport",
        "stdio"
      ]
    }
  }
}
`
