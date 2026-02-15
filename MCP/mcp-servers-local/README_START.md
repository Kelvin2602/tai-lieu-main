# Hướng Dẫn Khởi Động Các MCP Servers

## Tổng Quan

Các MCP servers đã được tải về và cài đặt dependencies. Bạn có thể khởi động chúng theo các cách sau:

---

## Cách 1: Khởi Động Tất Cả Servers (Nhanh)

Chạy script để khởi động tất cả servers trong các cửa sổ riêng biệt:

```powershell
cd D:\tai-lieu-main\MCP\mcp-servers-local
.\start_all_servers.ps1
```

Mỗi server sẽ chạy trong một cửa sổ PowerShell riêng.

---

## Cách 2: Khởi Động Từng Server

### 1. Playwright MCP Server

```powershell
cd D:\tai-lieu-main\MCP\mcp-servers-local\playwright-mcp-server
node dist/index.js
```

### 2. Context7 MCP Server

**STDIO mode:**
```powershell
cd D:\tai-lieu-main\MCP\mcp-servers-local\context7-mcp
node dist/index.js --transport stdio
```

**HTTP mode:**
```powershell
cd D:\tai-lieu-main\MCP\mcp-servers-local\context7-mcp
node dist/index.js --transport http
```

### 3. PDF Reader MCP Server

```powershell
cd D:\tai-lieu-main\MCP\mcp-servers-local\pdf-reader-mcp
node dist/index.js
```

### 4. Sequential Thinking MCP Server

```powershell
cd D:\tai-lieu-main\MCP\mcp-servers-local\modelcontextprotocol-servers\src\sequentialthinking
node dist/index.js
```

### 5. Memory MCP Server

```powershell
cd D:\tai-lieu-main\MCP\mcp-servers-local\modelcontextprotocol-servers\src\memory
node dist/index.js
```

### 6. Excel MCP Server (Nếu đã build Go binary)

```powershell
cd D:\tai-lieu-main\MCP\mcp-servers-local\excel-mcp-server
.\excel-mcp-server.exe
```

Hoặc sử dụng launcher:
```powershell
cd D:\tai-lieu-main\MCP\mcp-servers-local\excel-mcp-server
node launcher/launcher.js
```

---

## Cách 3: Sử Dụng MCP Inspector (Test Servers)

MCP Inspector giúp bạn test và debug các servers:

```powershell
# Test Playwright
cd D:\tai-lieu-main\MCP\mcp-servers-local\playwright-mcp-server
npx @modelcontextprotocol/inspector dist/index.js

# Test Context7
cd D:\tai-lieu-main\MCP\mcp-servers-local\context7-mcp
npx @modelcontextprotocol/inspector dist/index.js --transport stdio

# Test PDF Reader
cd D:\tai-lieu-main\MCP\mcp-servers-local\pdf-reader-mcp
npx @modelcontextprotocol/inspector dist/index.js

# Test Sequential Thinking
cd D:\tai-lieu-main\MCP\mcp-servers-local\modelcontextprotocol-servers\src\sequentialthinking
npx @modelcontextprotocol/inspector dist/index.js

# Test Memory
cd D:\tai-lieu-main\MCP\mcp-servers-local\modelcontextprotocol-servers\src\memory
npx @modelcontextprotocol/inspector dist/index.js
```

---

## Cách 4: Cấu Hình Trong mcp.json

Bạn có thể thêm các servers local vào file `mcp.json` của Cursor:

**File:** `C:\Users\OMG\.cursor\mcp.json`

Thêm vào phần `mcpServers`:

```json
{
  "mcpServers": {
    "playwright-local": {
      "command": "node",
      "args": [
        "D:\\tai-lieu-main\\MCP\\mcp-servers-local\\playwright-mcp-server\\dist\\index.js"
      ],
      "env": {}
    },
    "context7-local": {
      "command": "node",
      "args": [
        "D:\\tai-lieu-main\\MCP\\mcp-servers-local\\context7-mcp\\dist\\index.js",
        "--transport",
        "stdio"
      ],
      "env": {}
    },
    "pdf-reader-local": {
      "command": "node",
      "args": [
        "D:\\tai-lieu-main\\MCP\\mcp-servers-local\\pdf-reader-mcp\\dist\\index.js"
      ],
      "env": {}
    },
    "sequential-thinking-local": {
      "command": "node",
      "args": [
        "D:\\tai-lieu-main\\MCP\\mcp-servers-local\\modelcontextprotocol-servers\\src\\sequentialthinking\\dist\\index.js"
      ],
      "env": {}
    },
    "memory-local": {
      "command": "node",
      "args": [
        "D:\\tai-lieu-main\\MCP\\mcp-servers-local\\modelcontextprotocol-servers\\src\\memory\\dist\\index.js"
      ],
      "env": {}
    }
  }
}
```

Sau đó restart Cursor để các servers được load.

---

## File Cấu Hình Mẫu

Đã tạo file `mcp-local-config.json` với cấu hình sẵn. Bạn có thể:

1. Copy nội dung từ `mcp-local-config.json`
2. Merge vào file `mcp.json` của bạn
3. Restart Cursor

---

## Kiểm Tra Servers Đang Chạy

Để kiểm tra các servers có đang chạy không:

```powershell
Get-Process | Where-Object { $_.ProcessName -like "*node*" -or $_.CommandLine -like "*mcp*" }
```

---

## Troubleshooting

### Lỗi: "Cannot find module"
- Chạy lại script cài đặt: `.\start_mcp_servers.ps1`
- Hoặc vào thư mục server và chạy: `npm install`

### Lỗi: "Build not found"
- Vào thư mục server và chạy: `npm run build`

### Lỗi: "Port already in use" (HTTP mode)
- Đổi port hoặc đóng process đang sử dụng port đó

### Server không khởi động
- Kiểm tra Node.js version: `node --version` (cần >= 18)
- Kiểm tra file có tồn tại không
- Xem log errors trong console

---

## Lưu Ý

1. **STDIO vs HTTP**: 
   - STDIO: Dùng cho MCP clients như Cursor, Claude Desktop
   - HTTP: Dùng cho web-based clients hoặc testing

2. **Ports** (nếu dùng HTTP):
   - Context7 HTTP: Mặc định port 3000
   - Có thể thay đổi qua environment variables

3. **Environment Variables**:
   - Một số servers có thể cần API keys hoặc config
   - Xem README của từng server để biết chi tiết

---

*Hướng dẫn này được tạo tự động sau khi cài đặt các MCP servers*

