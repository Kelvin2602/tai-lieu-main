# 🚀 HƯỚNG DẪN CÀI ĐẶT TẤT CẢ SKILLS

## ✅ Đã Hoàn Thành
- ✅ Tất cả 15 skills đã được dịch tiêu đề sang **tiếng Việt**
- ✅ Nội dung bên trong vẫn giữ **tiếng Anh** (như yêu cầu)
- ✅ Thêm emoji để dễ nhận diện

---

## 📋 DANH SÁCH SKILLS ĐÃ CÀI ĐẶT (15 SKILLS)

### 🎨 CREATIVE & DESIGN (4 skills)

| Icon | Tên Tiếng Việt | Tên Tiếng Anh | Thư mục |
|------|----------------|---------------|---------|
| 🎨 | **Nghệ Thuật Thuật Toán** | Algorithmic Art | `algorithmic-art/` |
| 🎨 | **Thiết Kế Canvas** | Canvas Design | `canvas-design/` |
| 🎬 | **Tạo GIF Cho Slack** | Slack GIF Creator | `slack-gif-creator/` |
| 🎨 | **Nhà Máy Giao Diện** | Theme Factory | `theme-factory/` |

### 🛠️ DEVELOPMENT & TECHNICAL (4 skills)

| Icon | Tên Tiếng Việt | Tên Tiếng Anh | Thư mục |
|------|----------------|---------------|---------|
| 🏗️ | **Xây Dựng Artifacts** | Artifacts Builder | `artifacts-builder/` |
| 🔌 | **Xây Dựng MCP Server** | MCP Builder | `mcp-builder/` |
| 🧪 | **Kiểm Thử Ứng Dụng Web** | Web Application Testing | `webapp-testing/` |
| 🛠️ | **Tạo Skill Mới** | Skill Creator | `skill-creator/` |

### 📄 DOCUMENT PROCESSING (4 skills)

| Icon | Tên Tiếng Việt | Tên Tiếng Anh | Thư mục |
|------|----------------|---------------|---------|
| 📄 | **Xử Lý Tài Liệu Word** | DOCX Processing | `document-skills/docx/` |
| 📕 | **Xử Lý Tài Liệu PDF** | PDF Processing | `document-skills/pdf/` |
| 📊 | **Xử Lý Bài Thuyết Trình PowerPoint** | PPTX Processing | `document-skills/pptx/` |
| 📊 | **Xử Lý Bảng Tính Excel** | XLSX Processing | `document-skills/xlsx/` |

### 🏢 ENTERPRISE & COMMUNICATION (2 skills)

| Icon | Tên Tiếng Việt | Tên Tiếng Anh | Thư mục |
|------|----------------|---------------|---------|
| 🎨 | **Hướng Dẫn Thương Hiệu Anthropic** | Brand Guidelines | `brand-guidelines/` |
| 📢 | **Truyền Thông Nội Bộ** | Internal Communications | `internal-comms/` |

### 📋 META SKILL (1 skill)

| Icon | Tên Tiếng Việt | Tên Tiếng Anh | Thư mục |
|------|----------------|---------------|---------|
| 📋 | **Mẫu Skill** | Template Skill | `template-skill/` |

---

## 🔧 CÁCH CÀI ĐẶT SKILLS VÀO CLAUDE CODE

### Phương pháp 1: Cài qua Marketplace (Khuyên dùng)

```bash
# Bước 1: Thêm marketplace
/plugin marketplace add anthropics/skills

# Bước 2: Cài document-skills (Word, Excel, PowerPoint, PDF)
/plugin install document-skills@anthropic-agent-skills

# Bước 3: Cài example-skills (10 skills còn lại)
/plugin install example-skills@anthropic-agent-skills
```

### Phương pháp 2: Cài qua UI

```bash
# Bước 1: Thêm marketplace
/plugin marketplace add anthropics/skills
```

Sau đó:
1. Chọn `Browse and install plugins`
2. Chọn `anthropic-agent-skills`
3. Chọn `document-skills` hoặc `example-skills`
4. Chọn `Install now`

---

## 💡 CÁCH SỬ DỤNG SKILLS

Sau khi cài đặt, chỉ cần **nhắc tên skill** trong câu hỏi:

### Ví dụ:

```
✅ "Use 📄 Xử Lý Tài Liệu Word skill to create a report"
✅ "Dùng 📊 Xử Lý Bảng Tính Excel để tạo financial model"
✅ "Use 🎨 Nghệ Thuật Thuật Toán to create generative art"
✅ "Dùng 🎬 Tạo GIF Cho Slack để tạo animated emoji"
✅ "Use 🔌 Xây Dựng MCP Server to build GitHub integration"
```

Hoặc đơn giản hơn:

```
✅ "Create a Word document with tracked changes"
   → Tự động dùng skill 📄 Xử Lý Tài Liệu Word

✅ "Make me a GIF for Slack"
   → Tự động dùng skill 🎬 Tạo GIF Cho Slack

✅ "Test my web application"
   → Tự động dùng skill 🧪 Kiểm Thử Ứng Dụng Web
```

---

## 🎯 CHỨC NĂNG CHÍNC CỦA TỪNG SKILL

### 🎨 Nghệ Thuật Thuật Toán (Algorithmic Art)
- Tạo generative art với p5.js
- Flow fields, particle systems
- Seeded randomness để tái tạo giống hệt
- Interactive HTML viewer

### 🎨 Thiết Kế Canvas (Canvas Design)
- Tạo visual art (.png, .pdf)
- 40+ fonts chuyên nghiệp
- Design philosophy approach
- Museum/magazine quality

### 🎬 Tạo GIF Cho Slack (Slack GIF Creator)
- Tạo animated GIFs cho Slack
- Message GIFs (max 2MB, 480x480)
- Emoji GIFs (max 64KB, 128x128)
- 13 animation templates

### 🏗️ Xây Dựng Artifacts (Artifacts Builder)
- React 18 + TypeScript + Vite
- Tailwind CSS + shadcn/ui
- 40+ components pre-installed
- Single HTML output

### 🔌 Xây Dựng MCP Server (MCP Builder)
- Python (FastMCP) hoặc Node/TypeScript
- Agent-centric design
- 4-phase workflow
- Evaluation-driven development

### 🧪 Kiểm Thử Ứng Dụng Web (Web Application Testing)
- Playwright automation
- Server lifecycle management
- Screenshot & console logs
- Static & dynamic testing

### 🛠️ Tạo Skill Mới (Skill Creator)
- Hướng dẫn tạo skills
- Template generation
- Validation & packaging
- Progressive disclosure

### 📄 Xử Lý Tài Liệu Word (DOCX Processing)
- Tạo/sửa Word documents
- Tracked changes (redlining)
- Comments & formatting
- Text extraction

### 📕 Xử Lý Tài Liệu PDF (PDF Processing)
- Extract text & tables
- Fill PDF forms
- Merge/split documents
- Watermark & password

### 📊 Xử Lý Bài Thuyết Trình PowerPoint (PPTX Processing)
- Tạo presentations từ HTML
- Edit templates
- Rearrange & replace
- Generate thumbnails

### 📊 Xử Lý Bảng Tính Excel (XLSX Processing)
- Formulas (KHÔNG hardcode!)
- Financial modeling
- Color coding standards
- Formula recalculation

### 🎨 Hướng Dẫn Thương Hiệu Anthropic (Brand Guidelines)
- Anthropic brand colors
- Typography (Poppins, Lora)
- Smart font application
- Automatic fallback

### 📢 Truyền Thông Nội Bộ (Internal Communications)
- 3P updates (Progress/Plans/Problems)
- Company newsletters
- FAQ responses
- Status reports

### 🎨 Nhà Máy Giao Diện (Theme Factory)
- 10 pre-set professional themes
- Color palettes & fonts
- Custom theme generation
- Apply to any artifact

### 📋 Mẫu Skill (Template Skill)
- Starting point cho skills mới
- Basic structure
- YAML frontmatter template

---

## 📊 THỐNG KÊ

- **Tổng số skills**: 15
- **Document processing**: 4 (production-grade)
- **Creative & Design**: 4
- **Development**: 4
- **Enterprise**: 2
- **Meta**: 1

---

## 🔗 TÀI LIỆU THAM KHẢO

- [Skills Documentation](https://support.claude.com/en/articles/12512176-what-are-skills)
- [Using Skills](https://support.claude.com/en/articles/12512180-using-skills-in-claude)
- [Creating Custom Skills](https://support.claude.com/en/articles/12512198-creating-custom-skills)
- [Agent Skills Engineering](https://anthropic.com/engineering/equipping-agents-for-the-real-world-with-agent-skills)

---

## ✨ ĐÃ THAY ĐỔI

✅ **Tiêu đề đã được dịch sang tiếng Việt**:
- Ví dụ: "# Algorithmic Art" → "# 🎨 Nghệ Thuật Thuật Toán (Algorithmic Art)"
- Thêm emoji để dễ phân biệt
- Giữ tên tiếng Anh trong ngoặc

✅ **Nội dung vẫn tiếng Anh**:
- Tất cả hướng dẫn, instructions, examples vẫn giữ nguyên tiếng Anh
- Chỉ tiêu đề chính (# heading) được dịch

---

## 🎉 HOÀN TẤT!

Tất cả 15 skills đã được:
- ✅ Cập nhật tiêu đề tiếng Việt
- ✅ Thêm emoji phù hợp
- ✅ Giữ nguyên nội dung tiếng Anh
- ✅ Sẵn sàng sử dụng!

**Để bắt đầu**, chạy lệnh cài đặt ở trên và bắt đầu sử dụng skills! 🚀
