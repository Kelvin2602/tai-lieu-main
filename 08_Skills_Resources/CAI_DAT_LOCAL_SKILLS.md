# 🚀 CÀI ĐẶT SKILLS TỪ THỨ MỤC LOCAL

## ✅ TỐT HƠN: BẠN ĐÃ CÓ TẤT CẢ SKILLS TRONG THƯ MỤC LOCAL!

Không cần tải từ internet - tất cả 15 skills đã có sẵn trong thư mục này.

---

## 📁 CẤU TRÚC ĐÃ CÓ

```
D:\tai-lieu-main\skills-main\
├── .claude-plugin/
│   └── marketplace.json ✅ (File cấu hình marketplace)
├── document-skills/ ✅
│   ├── xlsx/ (Excel)
│   ├── docx/ (Word)
│   ├── pptx/ (PowerPoint)
│   └── pdf/ (PDF)
├── algorithmic-art/ ✅
├── artifacts-builder/ ✅
├── brand-guidelines/ ✅
├── canvas-design/ ✅
├── internal-comms/ ✅
├── mcp-builder/ ✅
├── skill-creator/ ✅
├── slack-gif-creator/ ✅
├── theme-factory/ ✅
└── webapp-testing/ ✅
```

**Tất cả 15 skills đã có đầy đủ!**

---

## 🎯 CÁCH CÀI ĐẶT TỪ LOCAL

### Bước 1️⃣: Thêm Local Marketplace

Chạy lệnh sau trong Claude Code CLI:

```
/plugin marketplace add D:\tai-lieu-main\skills-main
```

Hoặc (nếu lệnh trên không hoạt động):

```
/plugin marketplace add D:\tai-lieu-main\skills-main\.claude-plugin\marketplace.json
```

✅ Chờ thông báo "Marketplace added successfully"

---

### Bước 2️⃣: Cài Document Skills (4 skills)

```
/plugin install document-skills@anthropic-agent-skills
```

✅ Sẽ cài:
- 📊 XLSX (Excel)
- 📄 DOCX (Word)
- 📊 PPTX (PowerPoint)
- 📕 PDF

---

### Bước 3️⃣: Cài Example Skills (10 skills)

```
/plugin install example-skills@anthropic-agent-skills
```

✅ Sẽ cài:
- 🛠️ Skill Creator
- 🔌 MCP Builder
- 🎨 Canvas Design
- 🎨 Algorithmic Art
- 📢 Internal Comms
- 🧪 Web Testing
- 🏗️ Artifacts Builder
- 🎬 Slack GIF Creator
- 🎨 Theme Factory
- 🎨 Brand Guidelines

---

## 🔍 KIỂM TRA CÀI ĐẶT

Sau khi cài xong, chạy:

```
/plugin list
```

Hoặc:

```
/skill
```

Bạn sẽ thấy tất cả 15 skills.

---

## 💡 ƯU ĐIỂM CÀI TỪ LOCAL

✅ **Nhanh hơn** - không cần tải từ internet
✅ **Không cần kết nối mạng** - hoạt động offline
✅ **Có thể tùy chỉnh** - chỉnh sửa skills theo ý muốn
✅ **Phiên bản đã dịch** - tiêu đề đã được dịch sang tiếng Việt

---

## 🎯 TẤT CẢ LỆNH TRONG 1 BLOCK

Copy từng dòng và chạy trong Claude Code CLI:

```
/plugin marketplace add D:\tai-lieu-main\skills-main
/plugin install document-skills@anthropic-agent-skills
/plugin install example-skills@anthropic-agent-skills
```

---

## ⚠️ NẾU GẶP LỖI

### Lỗi: "Marketplace not found"
**Giải pháp**: Thử đường dẫn đầy đủ đến marketplace.json:
```
/plugin marketplace add D:\tai-lieu-main\skills-main\.claude-plugin\marketplace.json
```

### Lỗi: "Plugin not found"
**Giải pháp**:
1. Kiểm tra marketplace đã được thêm chưa: `/plugin marketplace list`
2. Xem các plugins có sẵn: `/plugin list`

### Lỗi: "Invalid marketplace"
**Giải pháp**: Đảm bảo file marketplace.json không bị lỗi format

---

## 📋 DANH SÁCH SKILLS SAU KHI CÀI

### 📄 Document Skills (4)
1. 📊 **XLSX** - Excel processing with formulas
2. 📄 **DOCX** - Word documents with tracked changes
3. 📊 **PPTX** - PowerPoint presentations
4. 📕 **PDF** - PDF manipulation and extraction

### 🎨 Creative & Design (4)
5. 🎨 **Algorithmic Art** - Generative art with p5.js
6. 🎨 **Canvas Design** - Visual art (.png, .pdf)
7. 🎬 **Slack GIF Creator** - Animated GIFs for Slack
8. 🎨 **Theme Factory** - Theme styling for artifacts

### 🛠️ Development (4)
9. 🏗️ **Artifacts Builder** - React + Tailwind + shadcn/ui
10. 🔌 **MCP Builder** - MCP server development
11. 🧪 **Web Testing** - Playwright automation
12. 🛠️ **Skill Creator** - Create custom skills

### 🏢 Enterprise (2)
13. 🎨 **Brand Guidelines** - Anthropic brand colors
14. 📢 **Internal Comms** - Company communications

---

## ✨ SAU KHI CÀI XONG

Bạn có thể sử dụng skills bằng cách:

### Cách 1: Gọi trực tiếp
```
"Use XLSX skill to create financial model"
"Use PDF skill to extract tables"
```

### Cách 2: Mô tả công việc
```
"Create a Word document with comments"
"Make me a GIF for Slack"
"Test my web application"
```

Claude sẽ tự động chọn skill phù hợp!

---

**⏱️ Thời gian**: ~1-2 phút (vì đã có sẵn local)

**🎉 HOÀN TẤT!** Tất cả 15 skills sẵn sàng!
