# Ví Dụ Test Các MCP Servers

## 🧪 Các Câu Lệnh Test Trong Cursor Chat

### 1. Sequential Thinking 🧠

**Test cơ bản:**
```
Help me think through this problem step by step: 
How can I optimize my database queries for better performance?
```

**Test phức tạp:**
```
Use sequential thinking to analyze the pros and cons of:
- Microservices architecture vs Monolithic architecture
- Consider scalability, maintainability, and complexity
```

**Kết quả mong đợi:**
- Server sẽ break down problem thành các bước
- Phân tích từng aspect một cách có hệ thống
- Đưa ra kết luận dựa trên reasoning

---

### 2. Playwright 🎭

**Test navigation:**
```
Navigate to https://example.com and take a screenshot of the page
```

**Test search:**
```
Use Playwright to search for "MCP servers" on Google and show me the first 5 results
```

**Test interaction:**
```
Go to https://example.com, click on the "About" link, and tell me what you see
```

**Kết quả mong đợi:**
- Browser sẽ mở và navigate
- Có thể take screenshots
- Có thể click elements và interact với page

---

### 3. Memory 💾

**Lưu thông tin:**
```
Remember that I prefer TypeScript over JavaScript for new projects
```

**Lưu nhiều thông tin:**
```
Store these preferences:
- Favorite programming language: TypeScript
- Preferred framework: React
- Database choice: PostgreSQL
```

**Recall thông tin:**
```
What did I tell you about my programming preferences?
```

**Query với context:**
```
What do you remember about my technology preferences?
```

**Kết quả mong đợi:**
- Server lưu thông tin vào knowledge graph
- Có thể retrieve lại thông tin đã lưu
- Có thể query với semantic search

---

### 4. PDF Reader 📄

**Đọc và tóm tắt:**
```
Read the PDF file at D:\path\to\document.pdf and give me a summary
```

**Trích xuất text:**
```
Extract all text from D:\path\to\file.pdf
```

**Đọc trang cụ thể:**
```
Read page 5 from D:\path\to\document.pdf
```

**Kết quả mong đợi:**
- Server đọc PDF file
- Trích xuất text và metadata
- Có thể summarize nội dung
- Hỗ trợ pagination

---

### 5. Context7 📚

**Lấy documentation:**
```
Get documentation for React hooks, specifically useState and useEffect
```

**Tìm API reference:**
```
Show me the API documentation for Express.js middleware
```

**Tìm examples:**
```
Find code examples for Next.js App Router
```

**Kết quả mong đợi:**
- Server tìm và trả về documentation
- Up-to-date code documentation
- Có thể tìm examples và API references

---

## 🔄 Test Workflow Hoàn Chỉnh

### Scenario 1: Research và Lưu Thông Tin

```
1. Use Context7 to get documentation about React hooks
2. Remember that I'm learning React hooks
3. Use Sequential Thinking to create a learning plan for React hooks
4. Save the plan to memory
```

### Scenario 2: Web Research và Analysis

```
1. Use Playwright to navigate to https://github.com and search for "MCP servers"
2. Take a screenshot of the results
3. Use Sequential Thinking to analyze the search results
4. Remember the key findings
```

### Scenario 3: Document Processing

```
1. Read PDF file: D:\documents\project-spec.pdf
2. Extract key information
3. Use Sequential Thinking to create a project plan
4. Save the plan to memory for future reference
```

---

## 🎯 Test Cases Chi Tiết

### Test Case 1: Sequential Thinking

**Input:**
```
Help me think through: Should I use a relational database or NoSQL for my e-commerce application?
```

**Expected Output:**
- Phân tích requirements
- So sánh các options
- Đưa ra recommendation với reasoning

### Test Case 2: Memory Storage và Retrieval

**Step 1 - Store:**
```
Remember: My project uses Node.js, Express, and PostgreSQL
```

**Step 2 - Retrieve:**
```
What database am I using in my project?
```

**Expected:** Trả về "PostgreSQL"

### Test Case 3: Playwright Automation

**Input:**
```
Navigate to https://www.example.com, wait for the page to load, 
take a screenshot, and tell me what the main heading says
```

**Expected:**
- Browser mở và navigate
- Screenshot được tạo
- Text content được extract

### Test Case 4: PDF Processing

**Input:**
```
Read D:\documents\report.pdf and extract:
- Title
- Main conclusions
- Key statistics
```

**Expected:**
- PDF được đọc thành công
- Thông tin được extract
- Format dễ đọc

---

## 🐛 Debugging Tips

### Nếu Server Không Phản Hồi

1. **Kiểm tra logs:**
   - Xem Output panel trong Cursor
   - Tìm error messages

2. **Test với Inspector:**
   ```powershell
   npx @modelcontextprotocol/inspector dist/index.js
   ```

3. **Kiểm tra file paths:**
   - Đảm bảo file tồn tại
   - Đường dẫn đúng format

### Nếu Tool Không Hoạt Động

1. **Kiểm tra parameters:**
   - Đảm bảo đúng format
   - Required parameters đã có

2. **Xem tool definition:**
   - Dùng Inspector để xem available tools
   - Kiểm tra schema

3. **Test với simple input:**
   - Bắt đầu với test case đơn giản
   - Tăng dần complexity

---

## 📊 Expected Performance

- **Sequential Thinking:** 2-5 giây cho simple problems
- **Playwright:** 3-10 giây tùy vào page complexity
- **Memory:** < 1 giây cho read/write operations
- **PDF Reader:** 1-5 giây tùy vào file size
- **Context7:** 2-5 giây cho documentation queries

---

## ✅ Success Criteria

Một server được coi là hoạt động tốt nếu:

1. ✅ Khởi động không có lỗi
2. ✅ Tools xuất hiện trong danh sách
3. ✅ Có thể gọi tools thành công
4. ✅ Trả về kết quả đúng format
5. ✅ Không có timeout errors
6. ✅ Logs không có errors

---

*Sử dụng các ví dụ này để test các MCP servers local của bạn*

