# TÀI LIỆU CHỨC NĂNG CHI TIẾT - DỰ ÁN TAI-LIEU-MAIN

**Ngày tạo:** 15/02/2026  
**Phiên bản:** 1.0  
**Tổng số thư mục chính:** 11  
**Tổng số file:** ~368 files  

---

## MỤC LỤC

1. [Tổng quan dự án](#1-tổng-quan-dự-án)
2. [Thư mục 01_AI_MachineLearning](#2-thư-mục-01_ai_machinelearning)
3. [Thư mục 02_Security_Network](#3-thư-mục-02_security_network)
4. [Thư mục 03_Cloud_Infrastructure](#4-thư-mục-03_cloud_infrastructure)
5. [Thư mục 04_Guides_Tutorials](#5-thư-mục-04_guides_tutorials)
6. [Thư mục 05_DataScience](#6-thư-mục-05_datascience)
7. [Thư mục 06_OSINT_Tools](#7-thư-mục-06_osint_tools)
8. [Thư mục 07_Development_Hacking](#8-thư-mục-07_development_hacking)
9. [Thư mục 08_Skills_Resources](#9-thư-mục-08_skills_resources)
10. [Thư mục 09_AIImageGen](#10-thư-mục-09_aiimagegen)
11. [Thư mục MCP](#11-thư-mục-mcp)
12. [Thư mục .agent (Skills & Agents)](#12-thư-mục-agent-skills--agents)

---

## 1. TỔNG QUAN DỰ ÁN

### 1.1 Mô tả chung

Dự án **tai-lieu-main** là một kho tài liệu tổng hợp chuyên về:
- Trí tuệ nhân tạo (AI) và Machine Learning
- Bảo mật và An ninh mạng
- OSINT (Open Source Intelligence)
- Phát triển phần mềm và DevOps
- Công cụ MCP (Model Context Protocol)

### 1.2 Cấu trúc thư mục chính

```
tai-lieu-main/
├── 01_AI_MachineLearning/          # AI & Máy học
├── 02_Security_Network/            # Bảo mật & An ninh mạng
├── 03_Cloud_Infrastructure/        # Điện toán & Hạ tầng
├── 04_Guides_Tutorials/            # Hướng dẫn & Tài liệu
├── 05_DataScience/                 # Khoa học dữ liệu
├── 06_OSINT_Tools/                 # OSINT & IP Tracing
├── 07_Development_Hacking/         # Phát triển & Hacking
├── 08_Skills_Resources/            # Kỹ năng & Plugin
├── 09_AIImageGen/                  # Tạo ảnh bằng AI
├── MCP/                            # Model Context Protocol
└── .agent/                         # Skills & Agents
```

---

## 2. THƯ MỤC 01_AI_MachineLearning

### 2.1 Thông tin chung

| Thuộc tính | Giá trị |
|------------|---------|
| **Đường dẫn** | `d:\tai-lieu-main\01_AI_MachineLearning\` |
| **Số file** | ~124 files |
| **Loại file** | Markdown (.md) |
| **Cập nhật** | 07/09/2025 |

### 2.2 Các chức năng chính

#### 2.2.1 AI Tools & Models

| Tên chức năng | Mô tả | File liên quan |
|---------------|-------|----------------|
| **AI Detection Tools** | Công cụ phát hiện nội dung AI | `20250907_055421_AI 检测工具.md` |
| **AI Chat Models** | ChatGPT, Claude, Gemini, etc. | `20250907_055421_AI 聊天机器人.md` |
| **Code Generation** | GitHub Copilot, Codex | `20250907_055421_代码生成器.md` |

#### 2.2.2 Creative & Content Tools

| Tên chức năng | Mô tả | Thao tác thực hiện |
|---------------|-------|-------------------|
| **Writing Tools** | Công cụ viết content AI | 1. Mở file hướng dẫn → 2. Chọn công cụ phù hợp → 3. Thực hiện theo prompt |
| **Image Tools** | Tạo và chỉnh sửa ảnh AI | Xem thư mục `09_AIImageGen/` |
| **Video Tools** | Tạo video bằng AI | `20250907_055421_视频工具.md` |

#### 2.2.3 Automation Tools

| Tên chức năng | Đầu vào | Đầu ra | Lưu ý |
|---------------|---------|--------|-------|
| **Marketing Automation** | Chiến dịch marketing | Báo cáo tự động | Cần API key |
| **Web Building** | Mô tả website | Code HTML/CSS | Kiểm tra compatibility |

### 2.3 Danh sách file quan trọng

```
├── 2025 年 AI 工具大全及推荐.md          # Tổng hợp AI tools 2025
├── AI急速搭建网站：Gemini、Bolt...md      # Xây dựng web với AI
├── Cursor 限制claude-4...md              # AI IDE guide
├── Star 7.8k！500个AI智能体项目...md      # 500 AI Agent projects
└── [120+ file khác]
```

---

## 3. THƯ MỤC 02_Security_Network

### 3.1 Thông tin chung

| Thuộc tính | Giá trị |
|------------|---------|
| **Đường dẫn** | `d:\tai-lieu-main\02_Security_Network\` |
| **Số file** | ~42 files |
| **Loại file** | Markdown (.md) |
| **Cảnh báo** | Chỉ dùng cho giáo dục/pentesting được phép |

### 3.2 Các chức năng chính

#### 3.2.1 Penetration Testing

| Tên chức năng | Mô tả chi tiết | Thao tác thực hiện | Đầu vào/Đầu ra |
|---------------|----------------|-------------------|----------------|
| **Vulnerability Scanning** | Quét lỗ hổng bảo mật tự động | 1. Cài đặt DarkAngel → 2. Chạy scan → 3. Phân tích report | Input: URL/IP → Output: Vulnerability report |
| **Brute Force Attack** | Tấn công từ điển mật khẩu | 1. Cấu hình Hydra → 2. Chuẩn bị wordlist → 3. Thực hiện attack | Input: Target service → Output: Credentials |
| **Reverse Shell** | Tạo kết nối ngược | 1. Generate payload → 2. Deliver to target → 3. Establish connection | Input: Target IP → Output: Shell access |

#### 3.2.2 Exploit Database

| Tên chức năng | Mô tả | File liên quan |
|---------------|-------|----------------|
| **Exploit Collection** | Bộ sưu tập exploit | `20250907_055422_all_exploits.md` |
| **Auto Exploit Report** | Báo cáo exploit tự động | `20250907_055422_auto_exploit_db_report_*.md` |

#### 3.2.3 Security Tools

| Công cụ | Chức năng | Lưu ý quan trọng |
|---------|-----------|------------------|
| **DarkAngel** | Quét lỗ hổng tự động | Cần quyền admin |
| **Hydra** | Brute force attack | Chỉ dùng authorized |
| **FingerGo** | Phát hiện fingerprint | Red team tool |
| **LovelyMem** | Memory forensics | Phân tích RAM |

### 3.3 Cảnh báo bảo mật

> **QUAN TRỌNG:** Tất cả công cụ trong thư mục này chỉ được sử dụng cho:
> - Mục đích giáo dục và nghiên cứu
> - Penetration testing với sự đồng ý của chủ sở hữu hệ thống
> - Nghiên cứu bảo mật hợp pháp
> 
> **NGHIÊM CẤM** sử dụng cho mục đích phạm tội hoặc tấn công hệ thống không được phép.

---

## 4. THƯ MỤC 03_Cloud_Infrastructure

### 4.1 Thông tin chung

| Thuộc tính | Giá trị |
|------------|---------|
| **Đường dẫn** | `d:\tai-lieu-main\03_Cloud_Infrastructure\` |
| **Số file** | ~8 files |
| **Chủ đề** | Cloud Computing, IoT, NFC |

### 4.2 Các chức năng chính

#### 4.2.1 Cloud Computing

| Tên chức năng | Mô tả chi tiết | Thao tác thực hiện |
|---------------|----------------|-------------------|
| **Alibaba Claw Cloud** | Cloud miễn phí từ Alibaba | 1. Đăng ký GitHub → 2. Kết nối Claw Cloud → 3. Deploy ứng dụng |
| **Cloud Phone Setup** | Cài đặt điện toán đám mây | 1. Setup VM → 2. Cài đặt Android emulator → 3. Configure network |

#### 4.2.2 IoT & NFC

| Tên chức năng | Đầu vào | Đầu ra | Lưu ý |
|---------------|---------|--------|-------|
| **IoT Platform** | Yêu cầu hệ thống | Kiến trúc IoT | Cần hardware support |
| **NFC Communication** | NFC tag data | Processed data | Kiểm tra compatibility |

---

## 5. THƯ MỤC 04_Guides_Tutorials

### 5.1 Thông tin chung

| Thuộc tính | Giá trị |
|------------|---------|
| **Đường dẫn** | `d:\tai-lieu-main\04_Guides_Tutorials\` |
| **Số file** | ~15 files |
| **Chủ đề** | Hướng dẫn cài đặt, lập trình |

### 5.2 Các chức năng chính

#### 5.2.1 Kali Linux Installation

| Bước | Thao tác | Chi tiết |
|------|----------|----------|
| 1 | Download ISO | Truy cập kali.org → Download phiên bản phù hợp |
| 2 | Tạo USB boot | Sử dụng Rufus hoặc Etcher |
| 3 | Boot từ USB | Configure BIOS/UEFI |
| 4 | Cài đặt | Follow installation wizard |
| 5 | Post-install | Cập nhật và cài đặt tools |

#### 5.2.2 Programming Guides

| Ngôn ngữ | File hướng dẫn | Nội dung chính |
|----------|----------------|----------------|
| Python | `教你几分钟学会Python爱心代码.md` | Python cơ bản |
| Vibe Coding | `Vibe Coding初学者入门指南.md` | AI-assisted coding |

---

## 6. THƯ MỤC 05_DataScience

### 6.1 Thông tin chung

| Thuộc tính | Giá trị |
|------------|---------|
| **Đường dẫn** | `d:\tai-lieu-main\05_DataScience\` |
| **Số file** | 3 files |
| **Chủ đề** | Python libraries, Datasets |

### 6.2 Các chức năng chính

#### 6.2.1 Python Libraries for Data Science

| Thư viện | Chức năng | Ứng dụng |
|----------|-----------|----------|
| NumPy | Tính toán số học | Xử lý mảng, ma trận |
| Pandas | Data manipulation | Phân tích dữ liệu |
| Matplotlib | Visualization | Vẽ biểu đồ |
| Scikit-learn | Machine Learning | Classification, Regression |
| TensorFlow | Deep Learning | Neural networks |

#### 6.2.2 Public Datasets

| Loại dataset | Nguồn | Sử dụng |
|--------------|-------|---------|
| 35+ datasets | GitHub collection | Training ML models |

---

## 7. THƯ MỤC 06_OSINT_Tools

### 7.1 Thông tin chung

| Thuộc tính | Giá trị |
|------------|---------|
| **Đường dẫn** | `d:\tai-lieu-main\06_OSINT_Tools\` |
| **Số file** | ~25 files + thư mục con |
| **Chủ đề** | OSINT, Email tracing, IP analysis |

### 7.2 Các công cụ OSINT chính

#### 7.2.1 Email OSINT Tools

| Công cụ | Đường dẫn | Chức năng | Thao tác sử dụng |
|---------|-----------|-----------|------------------|
| **Zehef** | `email/Zehef/` | Nghiên cứu email OSINT | 1. `pip install -r requirements.txt` → 2. `python zehef.py email@domain.com` |
| **Blackbird** | `email/blackbird/` | Tìm kiếm thông tin email/username | 1. Install dependencies → 2. Run blackbird.py |
| **H8mail** | `email/h8mail/` | Email OSINT với breach data | 1. `pip install h8mail` → 2. `h8mail -t target@email.com` |
| **Holehe** | `email/holehe/` | Kiểm tra tài khoản email | 1. `pip install holehe` → 2. `holehe target@email.com` |

#### 7.2.2 Chi tiết Zehef

**Mô tả:** Công cụ OSINT nghiên cứu email toàn diện

**Tính năng:**
- Kiểm tra email trong Pastebin
- Tìm kiếm leaks với HudsonRock
- Kiểm tra tài khoản mạng xã hội (Instagram, Spotify, Deezer, Adobe, X, etc.)
- Tạo kết hợp email

**Yêu cầu hệ thống:**
- Python 3.10+
- Git

**Cài đặt:**
```bash
git clone https://github.com/N0rz3/Zehef.git
cd ./Zehef
pip3 install -r requirements.txt
```

**Sử dụng:**
```bash
python3 zehef.py email@domain.com
```

**Đầu vào/Đầu ra:**
| Đầu vào | Đầu ra |
|---------|--------|
| Email address | Báo cáo breaches, pastes, social accounts |

#### 7.2.3 Phone Analysis Tools

| Công cụ | File | Chức năng |
|---------|------|-----------|
| Phone Analysis | `phone_analysis.js` | Phân tích số điện thoại |
| Phone Veriphone | `phone_veriphone.js` | Xác thực số điện thoại |

### 7.3 OSINT Resources

| Tài nguyên | Đường dẫn | Nội dung |
|------------|-----------|----------|
| Ahmia | `osint_resources/01_Ahmia.md` | Dark web search |
| SpiderFoot | `osint_resources/04_SpiderFoot.md` | OSINT automation |
| theHarvester | `osint_resources/18_theHarvester.md` | Email/domain harvesting |

---

## 8. THƯ MỤC 07_Development_Hacking

### 8.1 Thông tin chung

| Thuộc tính | Giá trị |
|------------|---------|
| **Đường dẫn** | `d:\tai-lieu-main\07_Development_Hacking\` |
| **Số file** | ~40+ files |
| **Cảnh báo** | Chỉ dùng cho giáo dục |

### 8.2 Các chức năng chính

#### 8.2.1 Hacker Tools 2025

| Công cụ | Mô tả | File hướng dẫn |
|---------|-------|----------------|
| **20 Hacker Tools** | Bộ công cụ hacker phổ biến | `2025最受欢迎的20款黑客工具.md` |
| **Penetration Testing Targets** | Môi trường test pentest | `2025最新渗透测试靶场推荐.md` |
| **ZIP Password Cracker** | Phá mật khẩu ZIP | `Zip密码破解工具 -- ZipCracker.md` |

---

## 9. THƯ MỤC 08_Skills_Resources

### 9.1 Thông tin chung

| Thuộc tính | Giá trị |
|------------|---------|
| **Đường dẫn** | `d:\tai-lieu-main\08_Skills_Resources\` |
| **Số thư mục con** | 20+ subdirectories |
| **Loại nội dung** | Code, Markdown, Configuration |

### 9.2 Các Skills chính

#### 9.2.1 Algorithmic Art

| Thuộc tính | Giá trị |
|------------|---------|
| **Đường dẫn** | `algorithmic-art/` |
| **Chức năng** | Tạo nghệ thuật thuật toán |

#### 9.2.2 MCP Builder

| Thuộc tính | Giá trị |
|------------|---------|
| **Đường dẫn** | `mcp-builder/` |
| **Chức năng** | Xây dựng MCP Server |

#### 9.2.3 Webapp Testing

| Thuộc tính | Giá trị |
|------------|---------|
| **Đường dẫn** | `webapp-testing/` |
| **Chức năng** | Kiểm thử web application |

---

## 10. THƯ MỤC 09_AIImageGen

### 10.1 Thông tin chung

| Thuộc tính | Giá trị |
|------------|---------|
| **Đường dẫn** | `d:\tai-lieu-main\09_AIImageGen\` |
| **Số file** | ~12 files |
| **Chủ đề** | AI Image Generation |

### 10.2 Các chức năng chính

#### 10.2.1 AI Image Generation

| Công cụ | Mô tả | File hướng dẫn |
|---------|-------|----------------|
| **Nano Banana** | Plugin tạo ảnh sáng tạo | `Nano Banana 创意提示词插件...md` |
| **即梦 AI** | P图万能 công thức | `即梦AI超实用的P图万能公式...md` |
| **手办模型** | Tạo mô hình figure | `一分钟教会你用AI生成个人手办模型.md` |

#### 10.2.2 Prompt Engineering

| Loại prompt | Ứng dụng | Lưu ý |
|-------------|----------|-------|
| Image prompts | Tạo ảnh | Cần chi tiết |
| Video prompts | Tạo video | Cần storyboard |

---

## 11. THƯ MỤC MCP

### 11.1 Thông tin chung

| Thuộc tính | Giá trị |
|------------|---------|
| **Đường dẫn** | `d:\tai-lieu-main\MCP\` |
| **Nội dung** | Model Context Protocol resources |

### 11.2 Các thành phần chính

#### 11.2.1 Awesome MCP Servers

| Thuộc tính | Giá trị |
|------------|---------|
| **Đường dẫn** | `MCP/awesome-mcp-servers/` |
| **Mô tả** | Danh sách MCP servers được tuyển chọn |

**Các danh mục MCP Servers:**

| Danh mục | Mô tả | Số lượng |
|----------|-------|----------|
| 🔗 Aggregators | Tổng hợp nhiều services | 15+ |
| 🎨 Art & Culture | Nghệ thuật, văn hóa | 10+ |
| 📂 Browser Automation | Tự động hóa trình duyệt | 20+ |
| 🗄️ Databases | Kết nối database | 30+ |
| 🔎 Search & Data Extraction | Tìm kiếm và trích xuất | 25+ |
| 🔒 Security | Bảo mật | 15+ |

#### 11.2.2 Playwright MCP

| Thuộc tính | Giá trị |
|------------|---------|
| **Đường dẫn** | `MCP/playwright-main/` |
| **Mô tả** | Browser automation với Playwright |

**Các chức năng chính:**

| Chức năng | Mô tả | Thao tác |
|-----------|-------|----------|
| Navigate | Điều hướng trang web | `playwright_navigate` |
| Screenshot | Chụp màn hình | `playwright_screenshot` |
| Click | Click element | `playwright_click` |
| Fill | Điền form | `playwright_fill` |
| Evaluate | Thực thi JavaScript | `playwright_evaluate` |

#### 11.2.3 MCP Servers Local

| Thuộc tính | Giá trị |
|------------|---------|
| **Đường dẫn** | `MCP/mcp-servers-local/` |
| **Nội dung** | Các MCP server cục bộ |

**Danh sách servers:**

| Server | Mô tả | Cấu hình |
|--------|-------|----------|
| context7-mcp | Context management | `mcp_config.json` |
| playwright-mcp | Browser automation | CLI support |
| pdf-reader-mcp | Đọc PDF | `.mcp.json` |
| excel-mcp-server | Xử lý Excel | Go-based |

---

## 12. THƯ MỤC .AGENT (SKILLS & AGENTS)

### 12.1 Thông tin chung

| Thuộc tính | Giá trị |
|------------|---------|
| **Đường dẫn** | `d:\tai-lieu-main\.agent\` |
| **Cấu trúc** | `agents/` và `skills/` |

### 12.2 Agents

| Agent | File | Chức năng |
|-------|------|-----------|
| **Architect** | `architect.md` | Thiết kế kiến trúc |
| **Code Reviewer** | `code-reviewer.md` | Review code |
| **Database Reviewer** | `database-reviewer.md` | Review database |
| **Security Reviewer** | `security-reviewer.md` | Review bảo mật |
| **Python Reviewer** | `python-reviewer.md` | Review Python code |
| **Go Reviewer** | `go-reviewer.md` | Review Go code |
| **TDD Guide** | `tdd-guide.md` | Hướng dẫn TDD |
| **E2E Runner** | `e2e-runner.md` | Chạy E2E tests |

### 12.3 Skills chi tiết

#### 12.3.1 MCP Builder Skill

| Thuộc tính | Giá trị |
|------------|---------|
| **Tên** | `mcp-builder` |
| **Đường dẫn** | `.agent/skills/05_Backend_MCPBuilder/` |
| **Mô tả** | Hướng dẫn tạo MCP Server chất lượng cao |

**Quy trình phát triển MCP Server:**

| Phase | Bước | Chi tiết |
|-------|------|----------|
| **Phase 1** | Deep Research | Nghiên cứu MCP design, API coverage |
| | Planning | Lên kế hoạch implementation |
| **Phase 2** | Setup Project | Tạo cấu trúc project |
| | Implement Core | Xây dựng core infrastructure |
| | Implement Tools | Tạo các tools |
| **Phase 3** | Code Quality | Review code |
| | Build & Test | Build và test với MCP Inspector |
| **Phase 4** | Create Evaluations | Tạo evaluation tests |

**Công nghệ khuyến nghị:**
- **Ngôn ngữ:** TypeScript (SDK support tốt)
- **Transport:** Streamable HTTP (remote), stdio (local)

#### 12.3.2 Browser Automation Expert

| Thuộc tính | Giá trị |
|------------|---------|
| **Tên** | `Browser Automation Expert` |
| **Đường dẫn** | `.agent/skills/04_Tester_BrowserAutomation/` |
| **Mô tả** | Tự động hóa trình duyệt và test web |

**Chiến lược sử dụng:**

| Ưu tiên | Công cụ | Sử dụng khi |
|---------|---------|-------------|
| 1 | MCP Tools (Puppeteer/Playwright) | Tương tác đơn giản, real-time |
| 2 | Python Scripts | Logic phức tạp, parallel processing |

**Các khả năng cốt lõi:**

| Khả năng | Workflow |
|----------|----------|
| Web Screenshot | `puppeteer_screenshot` / `playwright_screenshot` |
| Content Scraping | `navigate` → `evaluate` → Format data |
| UI Automation Testing | Assertions → User actions → Screenshots |

#### 12.3.3 PDF Processing Skill

| Thuộc tính | Giá trị |
|------------|---------|
| **Tên** | `pdf` |
| **Đường dẫn** | `.agent/skills/06_Office_Pdf/` |
| **Mô tả** | Xử lý PDF toàn diện |

**Các thư viện Python:**

| Thư viện | Chức năng chính | Ví dụ sử dụng |
|----------|-----------------|---------------|
| **pypdf** | Merge, Split, Rotate | `PdfReader()`, `PdfWriter()` |
| **pdfplumber** | Extract text, tables | `page.extract_text()`, `page.extract_tables()` |
| **reportlab** | Create PDFs | `canvas.Canvas()`, `SimpleDocTemplate()` |

**Các tác vụ phổ biến:**

| Tác vụ | Công cụ | Command/Code |
|--------|---------|--------------|
| Merge PDFs | pypdf | `writer.add_page(page)` |
| Split PDFs | pypdf | One page per file |
| Extract text | pdfplumber | `page.extract_text()` |
| Extract tables | pdfplumber | `page.extract_tables()` |
| Create PDFs | reportlab | Canvas or Platypus |
| OCR scanned PDFs | pytesseract | Convert to image first |

#### 12.3.4 React Best Practices Skill

| Thuộc tính | Giá trị |
|------------|---------|
| **Tên** | `vercel-react-best-practices` |
| **Đường dẫn** | `.agent/skills/03_Developer_ReactBestPractices/` |
| **Mô tả** | Tối ưu performance React/Next.js |

**8 Danh mục quy tắc (theo priority):**

| Priority | Danh mục | Impact | Prefix |
|----------|----------|--------|--------|
| 1 | Eliminating Waterfalls | CRITICAL | `async-` |
| 2 | Bundle Size Optimization | CRITICAL | `bundle-` |
| 3 | Server-Side Performance | HIGH | `server-` |
| 4 | Client-Side Data Fetching | MEDIUM-HIGH | `client-` |
| 5 | Re-render Optimization | MEDIUM | `rerender-` |
| 6 | Rendering Performance | MEDIUM | `rendering-` |
| 7 | JavaScript Performance | LOW-MEDIUM | `js-` |
| 8 | Advanced Patterns | LOW | `advanced-` |

**Quy tắc quan trọng:**

| Quy tắc | Mô tả |
|---------|-------|
| `async-parallel` | Sử dụng Promise.all() cho operations độc lập |
| `bundle-barrel-imports` | Import trực tiếp, tránh barrel files |
| `server-cache-react` | Sử dụng React.cache() cho deduplication |
| `client-swr-dedup` | Sử dụng SWR cho request deduplication |
| `rerender-memo` | Extract expensive work vào memoized components |

#### 12.3.5 Backend Python Expert

| Thuộc tính | Giá trị |
|------------|---------|
| **Tên** | `Backend Python Expert` |
| **Đường dẫn** | `.agent/skills/05_Backend_Python/` |
| **Mô tả** | Python backend development |

**Các module kỹ năng:**

| Module | File | Giá trị cốt lõi |
|--------|------|-----------------|
| FastAPI Templates | `FastAPI模板.md` | Xây dựng API nhanh |
| Performance | `Python性能优化.md` | Tối ưu hiệu suất |
| Async Patterns | `异步Python模式.md` | Non-blocking code |
| Testing | `Python测试模式.md` | Automated testing |

#### 12.3.6 AI Engineer Skill

| Thuộc tính | Giá trị |
|------------|---------|
| **Tên** | `AI Engineer` |
| **Đường dẫn** | `.agent/skills/08_AI_Engineer/` |
| **Mô tả** | LLM application development |

**Các module:**

| Module | File | Công nghệ chính |
|--------|------|-----------------|
| RAG Implementation | `RAG实现.md` | Vector DB, Text chunking, RAG |
| LangChain Architecture | `LangChain架构.md` | Chains, Agents, Memory, Tools |

---

## PHỤ LỤC

### A. Thống kê tổng quan

| Loại thống kê | Số lượng |
|---------------|----------|
| Tổng số file | ~368 files |
| Markdown files | ~320 files |
| Excel files | ~30 files |
| PDF files | ~10 files |
| Code files | ~8 files |

### B. Hướng dẫn sử dụng nhanh

#### Tìm kiếm file
```powershell
Get-ChildItem -Path "d:\tai-lieu-main" -Recurse -Filter "*keyword*" | Select-Object FullName
```

#### Tìm kiếm nội dung
```powershell
Get-ChildItem -Path "d:\tai-lieu-main" -Recurse -Filter "*.md" | Select-String "keyword"
```

#### Đếm số file
```powershell
(Get-ChildItem -Path "d:\tai-lieu-main" -Recurse -File).Count
```

### C. Liên hệ và hỗ trợ

- **GitHub Repository:** [tai-lieu-main]
- **Cập nhật gần nhất:** 04/11/2025
- **Phiên bản tài liệu:** 1.0

---

**GHI CHÚ QUAN TRỌNG:**

1. Tài liệu này được tạo tự động để giúp người dùng dễ dàng tìm kiếm và sử dụng các tài nguyên trong dự án.
2. Các công cụ bảo mật/hacking chỉ được sử dụng cho mục đích giáo dục và pentesting được phép.
3. Luôn kiểm tra license và terms của từng công cụ trước khi sử dụng.
4. Đọc kỹ README.md trong từng thư mục để biết thêm chi tiết.

---

*Tài liệu được tạo ngày 15/02/2026*
