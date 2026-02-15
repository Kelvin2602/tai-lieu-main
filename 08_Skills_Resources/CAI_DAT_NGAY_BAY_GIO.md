# 🚀 CÀI ĐẶT SKILLS - THỰC HIỆN NGAY

## ⚠️ QUAN TRỌNG
Claude Code Assistant KHÔNG THỂ tự động cài đặt plugins. Bạn cần chạy các lệnh dưới đây **trực tiếp trong giao diện Claude Code CLI**.

---

## 📝 CÁCH THỰC HIỆN

### Bước 1️⃣: Mở Claude Code CLI
Đảm bảo bạn đang ở trong giao diện Claude Code (không phải terminal/cmd thông thường)

### Bước 2️⃣: Thêm Marketplace
Copy và paste lệnh này vào Claude Code, nhấn Enter:
```
/plugin marketplace add anthropics/skills
```
✅ **Chờ thông báo** "Marketplace added successfully" hoặc tương tự

### Bước 3️⃣: Cài Document Skills (4 skills)
Copy và paste lệnh này vào Claude Code, nhấn Enter:
```
/plugin install document-skills@anthropic-agent-skills
```
✅ **Chờ cài đặt hoàn tất** - sẽ cài:
- 📄 Xử Lý Tài Liệu Word (DOCX)
- 📕 Xử Lý Tài Liệu PDF
- 📊 Xử Lý Bài Thuyết Trình PowerPoint (PPTX)
- 📊 Xử Lý Bảng Tính Excel (XLSX)

### Bước 4️⃣: Cài Example Skills (10 skills)
Copy và paste lệnh này vào Claude Code, nhấn Enter:
```
/plugin install example-skills@anthropic-agent-skills
```
✅ **Chờ cài đặt hoàn tất** - sẽ cài:
- 🎨 Nghệ Thuật Thuật Toán (Algorithmic Art)
- 🎨 Thiết Kế Canvas (Canvas Design)
- 🎬 Tạo GIF Cho Slack
- 🎨 Nhà Máy Giao Diện (Theme Factory)
- 🏗️ Xây Dựng Artifacts
- 🔌 Xây Dựng MCP Server
- 🧪 Kiểm Thử Ứng Dụng Web
- 🛠️ Tạo Skill Mới
- 🎨 Hướng Dẫn Thương Hiệu Anthropic
- 📢 Truyền Thông Nội Bộ

---

## ✅ KIỂM TRA CÀI ĐẶT

Sau khi cài xong, kiểm tra bằng lệnh:
```
/plugin list
```
Hoặc:
```
/skill
```

Bạn sẽ thấy danh sách tất cả 15 skills đã được cài đặt.

---

## 🎯 SỬ DỤNG SKILLS

Sau khi cài đặt, bạn có thể sử dụng skills bằng cách:

### Cách 1: Nhắc tên skill
```
"Use XLSX skill to create a financial report"
"Dùng PDF skill để extract text from document"
```

### Cách 2: Mô tả công việc (Claude tự chọn skill)
```
"Create a Word document with tracked changes"
"Make me an animated GIF for Slack"
"Test my local web application"
```

---

## 🔧 TẤT CẢ LỆNH TRONG 1 BLOCK

Nếu muốn copy tất cả, paste từng dòng một:
```
/plugin marketplace add anthropics/skills
/plugin install document-skills@anthropic-agent-skills
/plugin install example-skills@anthropic-agent-skills
```

---

## 📞 HỖ TRỢ

Nếu gặp lỗi:
1. Kiểm tra kết nối internet
2. Đảm bảo đang dùng phiên bản Claude Code mới nhất
3. Thử chạy từng lệnh riêng biệt
4. Xem thêm tại: https://docs.claude.com/en/docs/claude-code

---

**⏱️ Thời gian cài đặt**: ~2-5 phút tùy tốc độ mạng

**✨ Sau khi hoàn tất**: Bạn sẽ có đầy đủ 15 skills để làm việc!
