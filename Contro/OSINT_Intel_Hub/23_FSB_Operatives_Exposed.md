# FSB Operatives Exposed: A Live OSINT Industries Palette Investigation

**Nguồn:** [OSINT Industries](https://www.osint.industries/post/fsb-operatives-exposed-a-live-osint-investigation-featuring-palette)  
**Danh mục:** Case Studies  
**Ngày xuất bản:** Tháng 4/2025

---

## Tổng quan

Bài viết này mô tả một cuộc điều tra trực tiếp (live investigation) sử dụng công cụ **Palette** của OSINT Industries để vạch trần một điệp viên FSB của Nga: **Andrey Stanislavovich Korinets**.

**Mục tiêu:** Andrey Stanislavovich Korinets

- Liên quan đến nhóm **Star Blizzard** (hay Callisto Group, SEABORGIUM).
- Nằm trong danh sách trừng phạt của Mỹ và Anh.
- Hoạt động dưới sự chỉ đạo của FSB Centre 18.

---

## Quy trình Điều tra (Investigation Workflow)

### 1. Starting With a Name (Bắt đầu từ Tên)

- **Input:** Tên đầy đủ "Andrey Stanislavovich Korinets".
- **Action:** Tìm kiếm tên trong các cơ sở dữ liệu rò rỉ (breached data).
- **Finding:** Tìm thấy số điện thoại kết thúc bằng `4442` từ dữ liệu rò rỉ của ngân hàng Nga và dịch vụ chuyển phát SDEK.

### 2. Click, Cross-Ref, Repeat (Mở rộng mạng lưới)

- **Input:** Số điện thoại `...4442`.
- **Action:** Sử dụng OSINT Industries để tìm tài khoản liên kết.
- **Finding:**
  - Tài khoản **WhatsApp** (có ảnh đại diện khớp với ảnh truy nã).
  - Tài khoản **VKontakte (VK)**.
  - Email mới: `NEPKOMI@gmail.com`.

### 3. Connecting the Dots (Liên kết dữ liệu)

- Tìm thấy email `zeg888@gmail.com` từ dữ liệu rò rỉ của Gemotest (phòng xét nghiệm COVID).
- Dữ liệu này chứa ngày sinh khớp với hồ sơ trừng phạt.
- Tìm thấy bí danh (alias) "Colin Ian".
- Tìm thấy tài khoản **Google Maps** với các bài đánh giá bia và mua máy sấy tóc tại **Syktyvkar, Nga** (nơi sinh của Andrey).

---

## Công cụ Palette

**Palette** là công cụ điều tra dạng biểu đồ (node graph) của OSINT Industries:

- Cho phép trực quan hóa mối liên hệ giữa các điểm dữ liệu (nodes).
- Tự động hóa việc tìm kiếm và mở rộng mạng lưới từ một manh mối nhỏ.
- Hỗ trợ xuất/nhập dữ liệu để duy trì tính liên tục của vụ án.

---

**© OSINT Industries - Intel Hub**
