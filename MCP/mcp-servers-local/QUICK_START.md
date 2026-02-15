# Quick Start - Restart và Test MCP Servers

## ⚡ Hướng Dẫn Nhanh

### 1. Restart Cursor

**Cách nhanh nhất:**
- Nhấn `Ctrl + Shift + P`
- Gõ: `Reload Window`
- Chọn: `Developer: Reload Window`

**Hoặc:**
- Đóng tất cả cửa sổ Cursor
- Mở lại Cursor

---

### 2. Kiểm Tra Servers

**Trong Cursor:**
1. `Ctrl + ,` (Settings)
2. Tìm "MCP" hoặc "Model Context Protocol"
3. Xem danh sách servers

**Hoặc xem logs:**
1. `View > Output` hoặc `Ctrl + Shift + U`
2. Chọn "MCP" trong dropdown

---

### 3. Test Nhanh

**Test trong Cursor Chat:**

```
# Sequential Thinking
Help me think through: How to optimize database queries?

# Memory
Remember: I prefer TypeScript over JavaScript

# Playwright  
Navigate to https://example.com and take a screenshot

# PDF Reader
Read and summarize: D:\path\to\file.pdf

# Context7
Get documentation for React hooks
```

---

### 4. Test Với Inspector (Nếu cần debug)

```powershell
# Cài Inspector (một lần)
npm install -g @modelcontextprotocol/inspector

# Test server
cd D:\tai-lieu-main\MCP\mcp-servers-local\playwright-mcp-server
npx @modelcontextprotocol/inspector dist/index.js
```

---

## ✅ Checklist

- [ ] Đã restart Cursor
- [ ] Servers hiển thị trong settings
- [ ] Không có lỗi trong logs
- [ ] Đã test ít nhất 1 tool thành công

---

## 🚨 Nếu Có Lỗi

1. **Kiểm tra file paths:**
   ```powershell
   .\test_mcp_servers.ps1
   ```

2. **Xem logs trong Cursor:**
   - Output panel > MCP logs

3. **Test với Inspector:**
   - Xem error messages chi tiết

---

*Xem file HUONG_DAN_RESTART_VA_TEST.md để biết chi tiết hơn*

