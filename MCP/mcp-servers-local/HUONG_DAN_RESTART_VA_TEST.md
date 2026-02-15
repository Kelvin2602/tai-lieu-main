# Hướng Dẫn Restart Cursor và Test MCP Servers

## 🔄 Bước 1: Restart Cursor

### Cách 1: Restart Thủ Công
1. **Đóng tất cả cửa sổ Cursor**
   - Click vào X để đóng
   - Hoặc dùng `Alt + F4`
   - Đảm bảo tất cả processes đã đóng

2. **Mở lại Cursor**
   - Click vào icon Cursor trên desktop
   - Hoặc tìm "Cursor" trong Start Menu
   - Cursor sẽ tự động load lại file `mcp.json`

### Cách 2: Reload Window (Nhanh hơn)
1. **Trong Cursor, nhấn:** `Ctrl + Shift + P`
2. **Gõ:** `Reload Window`
3. **Chọn:** `Developer: Reload Window`
4. Cursor sẽ reload và load lại MCP servers

---

## 🔍 Bước 2: Kiểm Tra MCP Servers Trong Cursor

### Cách 1: Qua Settings UI
1. **Mở Settings:**
   - Nhấn `Ctrl + ,` (hoặc `File > Preferences > Settings`)
   
2. **Tìm MCP Settings:**
   - Gõ "MCP" hoặc "Model Context Protocol" trong search box
   - Hoặc tìm trong phần "Features" > "MCP"

3. **Xem danh sách servers:**
   - Kiểm tra các servers đang active
   - Xem status của từng server (✅ Connected / ❌ Error)
   - Xem logs nếu có lỗi

### Cách 2: Qua Command Palette
1. **Mở Command Palette:** `Ctrl + Shift + P`
2. **Gõ:** `MCP` hoặc `Model Context Protocol`
3. **Chọn:** Các commands liên quan đến MCP
4. **Xem:** Server status và logs

### Cách 3: Kiểm Tra Logs
1. **Mở Output Panel:**
   - `View > Output` hoặc `Ctrl + Shift + U`
   
2. **Chọn MCP Log:**
   - Dropdown "Show Output From" > chọn "MCP" hoặc server name
   
3. **Xem logs:**
   - Tìm các thông báo lỗi
   - Kiểm tra server có khởi động thành công không

---

## 🧪 Bước 3: Test Các Tools Từ Local Servers

### Test Sequential Thinking

**Trong Cursor Chat, thử:**
```
Help me think through this problem step by step: 
How can I optimize my database queries?
```

**Hoặc:**
```
Use sequential thinking to analyze: 
What are the pros and cons of microservices vs monolithic architecture?
```

**Kết quả mong đợi:**
- Server sẽ break down problem thành các steps
- Phân tích từng bước một cách có hệ thống

---

### Test Playwright

**Trong Cursor Chat, thử:**
```
Navigate to https://example.com and take a screenshot
```

**Hoặc:**
```
Use Playwright to search for "MCP servers" on Google
```

**Kết quả mong đợi:**
- Browser sẽ mở và navigate
- Có thể take screenshots, click elements, etc.

---

### Test Memory

**Trong Cursor Chat, thử:**
```
Remember that I prefer TypeScript over JavaScript for new projects
```

**Hoặc:**
```
Store this information: My favorite color is blue
```

**Sau đó test recall:**
```
What did I tell you about my preferences?
```

**Kết quả mong đợi:**
- Server sẽ lưu thông tin vào knowledge graph
- Có thể retrieve lại thông tin đã lưu

---

### Test PDF Reader

**Trong Cursor Chat, thử:**
```
Read the PDF file at D:\path\to\document.pdf and summarize it
```

**Hoặc:**
```
Extract text from this PDF: D:\path\to\file.pdf
```

**Kết quả mong đợi:**
- Server sẽ đọc PDF
- Trích xuất text và metadata
- Có thể summarize nội dung

---

### Test Context7

**Trong Cursor Chat, thử:**
```
Get documentation for React hooks
```

**Hoặc:**
```
Show me the API documentation for Express.js
```

**Kết quả mong đợi:**
- Server sẽ tìm và trả về documentation
- Up-to-date code documentation

---

## 🔧 Test Với MCP Inspector (Advanced)

MCP Inspector là tool để test và debug MCP servers trực tiếp:

### Cài Đặt Inspector
```powershell
npm install -g @modelcontextprotocol/inspector
```

### Test Sequential Thinking
```powershell
cd D:\tai-lieu-main\MCP\mcp-servers-local\modelcontextprotocol-servers\src\sequentialthinking
npx @modelcontextprotocol/inspector dist/index.js
```

### Test Playwright
```powershell
cd D:\tai-lieu-main\MCP\mcp-servers-local\playwright-mcp-server
npx @modelcontextprotocol/inspector dist/index.js
```

### Test context7
```powershell
cd D:\tai-lieu-main\MCP\mcp-servers-local\context7-mcp
npx @modelcontextprotocol/inspector dist/index.js --transport stdio
```

### Test Memory
```powershell
cd D:\tai-lieu-main\MCP\mcp-servers-local\modelcontextprotocol-servers\src\memory
npx @modelcontextprotocol/inspector dist/index.js
```

### Test PDF Reader
```powershell
cd D:\tai-lieu-main\MCP\mcp-servers-local\pdf-reader-mcp
npx @modelcontextprotocol/inspector dist/index.js
```

**Inspector sẽ mở web interface** để bạn có thể:
- Xem danh sách tools
- Test từng tool
- Xem requests/responses
- Debug issues

---

## 📋 Checklist Kiểm Tra

Sau khi restart Cursor, kiểm tra:

- [ ] Cursor đã restart thành công
- [ ] MCP servers xuất hiện trong settings
- [ ] Không có lỗi trong logs
- [ ] Có thể gọi tools từ chat
- [ ] Servers phản hồi đúng

---

## ⚠️ Troubleshooting

### Server không khởi động

**Kiểm tra:**
1. File path có đúng không?
2. File có tồn tại không?
3. Node.js đã cài đặt chưa?
4. Dependencies đã cài chưa?

**Giải pháp:**
```powershell
# Kiểm tra file
Test-Path "D:\tai-lieu-main\MCP\mcp-servers-local\playwright-mcp-server\dist\index.js"

# Cài lại dependencies
cd D:\tai-lieu-main\MCP\mcp-servers-local\playwright-mcp-server
npm install
npm run build
```

### Lỗi "Cannot find module"

**Giải pháp:**
```powershell
cd <server-directory>
npm install
```

### Server timeout

**Giải pháp:**
- Kiểm tra server có đang chạy không
- Xem logs để tìm lỗi
- Thử restart lại server

### Tools không hoạt động

**Kiểm tra:**
1. Server có được load không?
2. Tool có trong danh sách không?
3. Parameters có đúng không?

**Test với Inspector:**
- Dùng MCP Inspector để test trực tiếp
- Xem error messages chi tiết

---

## 📊 Script Tự Động Kiểm Tra

Chạy script để tự động kiểm tra:

```powershell
cd D:\tai-lieu-main\MCP\mcp-servers-local
.\test_mcp_servers.ps1
```

Script sẽ:
- ✅ Kiểm tra file mcp.json
- ✅ Kiểm tra các file servers
- ✅ Kiểm tra Node.js và dependencies
- ✅ Hiển thị hướng dẫn test

---

## 🎯 Kết Quả Mong Đợi

Sau khi hoàn thành các bước:

1. **Cursor đã restart** và load lại config
2. **MCP servers hiển thị** trong settings
3. **Có thể sử dụng tools** từ local servers
4. **Không có lỗi** trong logs
5. **Performance tốt hơn** (local vs remote)

---

*Hướng dẫn này giúp bạn restart Cursor và test các MCP servers local*

