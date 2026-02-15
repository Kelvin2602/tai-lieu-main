# Hướng Dẫn Chuyển Các MCP Servers Sang Local

## 🎯 Tổng Quan

Có **2 servers** có thể chuyển sang local ngay:
1. ✅ **Excel** - Đã tải về, cần build
2. ✅ **fetch-python** - Đã tải về, cần cài Python package

Và **4 servers mới** có thể thêm từ repository:
1. ✅ **filesystem** - File system operations
2. ✅ **git** - Git repository operations  
3. ✅ **time** - Time utilities
4. ✅ **everything** - Example server

---

## 📦 1. Chuyển Excel Server Sang Local

### Bước 1: Build TypeScript Launcher

```powershell
cd D:\tai-lieu-main\MCP\mcp-servers-local\excel-mcp-server
npm install
npm run build
```

**Lưu ý:** Nếu build thất bại vì thiếu Go/goreleaser, chỉ cần build TypeScript:

```powershell
cd D:\tai-lieu-main\MCP\mcp-servers-local\excel-mcp-server\launcher
npm install
tsc
```

### Bước 2: Cập Nhật mcp.json

Thay đổi trong `C:\Users\OMG\.cursor\mcp.json`:

```json
"Excel": {
  "command": "node",
  "args": [
    "D:\\tai-lieu-main\\MCP\\mcp-servers-local\\excel-mcp-server\\dist\\launcher.js"
  ],
  "env": {
    "EXCEL_MCP_PAGING_CELLS_LIMIT": "4000"
  },
  "fromGalleryId": "byted-mcp-volcengine.3rd_party_mcp_server_excel"
}
```

**Hoặc nếu có Go binary:**

```json
"Excel": {
  "command": "D:\\tai-lieu-main\\MCP\\mcp-servers-local\\excel-mcp-server\\excel-mcp-server.exe",
  "args": [],
  "env": {
    "EXCEL_MCP_PAGING_CELLS_LIMIT": "4000"
  }
}
```

---

## 🐍 2. Chuyển fetch-python Sang Local

### Bước 1: Cài Đặt Python Package

```powershell
cd D:\tai-lieu-main\MCP\mcp-servers-local\modelcontextprotocol-servers\src\fetch
pip install -e .
```

**Hoặc nếu dùng uv (khuyến nghị):**

```powershell
cd D:\tai-lieu-main\MCP\mcp-servers-local\modelcontextprotocol-servers\src\fetch
uv pip install -e .
```

### Bước 2: Kiểm Tra

```powershell
python -m mcp_server_fetch --help
```

### Bước 3: Cập Nhật mcp.json

Config đã đúng, chỉ cần đảm bảo Python package đã được cài:

```json
"fetch-python": {
  "command": "python",
  "args": [
    "-m",
    "mcp_server_fetch"
  ],
  "fromGalleryId": "modelcontextprotocol.servers_fetch"
}
```

---

## 📁 3. Thêm Filesystem Server

### Bước 1: Build Server

```powershell
cd D:\tai-lieu-main\MCP\mcp-servers-local\modelcontextprotocol-servers\src\filesystem
npm install
npm run build
```

### Bước 2: Thêm Vào mcp.json

```json
"Filesystem": {
  "command": "node",
  "args": [
    "D:\\tai-lieu-main\\MCP\\mcp-servers-local\\modelcontextprotocol-servers\\src\\filesystem\\dist\\index.js"
  ],
  "env": {}
}
```

**Lưu ý:** Filesystem server có thể cần cấu hình allowed directories để bảo mật.

---

## 🔧 4. Thêm Git Server

### Bước 1: Cài Đặt Python Package

```powershell
cd D:\tai-lieu-main\MCP\mcp-servers-local\modelcontextprotocol-servers\src\git
pip install -e .
```

**Hoặc với uv:**

```powershell
uv pip install -e .
```

### Bước 2: Thêm Vào mcp.json

```json
"Git": {
  "command": "python",
  "args": [
    "-m",
    "mcp_server_git"
  ],
  "env": {}
}
```

---

## ⏰ 5. Thêm Time Server

### Bước 1: Cài Đặt Python Package

```powershell
cd D:\tai-lieu-main\MCP\mcp-servers-local\modelcontextprotocol-servers\src\time
pip install -e .
```

### Bước 2: Thêm Vào mcp.json

```json
"Time": {
  "command": "python",
  "args": [
    "-m",
    "mcp_server_time"
  ],
  "env": {}
}
```

---

## 🎨 6. Thêm Everything Server (Example)

### Bước 1: Build Server

```powershell
cd D:\tai-lieu-main\MCP\mcp-servers-local\modelcontextprotocol-servers\src\everything
npm install
npm run build
```

### Bước 2: Thêm Vào mcp.json

```json
"Everything": {
  "command": "node",
  "args": [
    "D:\\tai-lieu-main\\MCP\\mcp-servers-local\\modelcontextprotocol-servers\\src\\everything\\dist\\index.js"
  ],
  "env": {}
}
```

**Lưu ý:** Everything server là example server để test, có thể không cần thiết cho production.

---

## 📋 Script Tự Động

Tạo script để build tất cả:

```powershell
# Build Excel launcher
cd D:\tai-lieu-main\MCP\mcp-servers-local\excel-mcp-server\launcher
npm install
tsc

# Build filesystem
cd D:\tai-lieu-main\MCP\mcp-servers-local\modelcontextprotocol-servers\src\filesystem
npm install
npm run build

# Build everything
cd D:\tai-lieu-main\MCP\mcp-servers-local\modelcontextprotocol-servers\src\everything
npm install
npm run build

# Cài Python packages
cd D:\tai-lieu-main\MCP\mcp-servers-local\modelcontextprotocol-servers\src\fetch
pip install -e .

cd D:\tai-lieu-main\MCP\mcp-servers-local\modelcontextprotocol-servers\src\git
pip install -e .

cd D:\tai-lieu-main\MCP\mcp-servers-local\modelcontextprotocol-servers\src\time
pip install -e .
```

---

## ✅ Checklist Sau Khi Chuyển

- [ ] Excel server đã build và test
- [ ] fetch-python đã cài và test
- [ ] Filesystem server đã build (nếu thêm)
- [ ] Git server đã cài (nếu thêm)
- [ ] Time server đã cài (nếu thêm)
- [ ] mcp.json đã được cập nhật
- [ ] JSON hợp lệ (không có syntax errors)
- [ ] Đã restart Cursor
- [ ] Servers hoạt động trong Cursor

---

## 🚨 Lưu Ý

1. **Excel Server:**
   - Cần Go để build binary (optional)
   - TypeScript launcher có thể đủ

2. **Python Servers:**
   - Cần Python 3.8+
   - Khuyến nghị dùng `uv` thay vì `pip`

3. **Filesystem Server:**
   - Cần cấu hình allowed directories để bảo mật
   - Mặc định có thể không cho phép truy cập

4. **Git Server:**
   - Cần Git đã cài đặt
   - Cần quyền truy cập repositories

---

## 📊 Tổng Kết

Sau khi chuyển, bạn sẽ có:

- **8-12 servers local** (tùy vào số lượng bạn thêm)
- **Không cần internet** cho local servers
- **Có thể sửa đổi** source code
- **Performance tốt hơn**

---

*Hướng dẫn này giúp bạn chuyển các servers có thể chuyển sang local*

