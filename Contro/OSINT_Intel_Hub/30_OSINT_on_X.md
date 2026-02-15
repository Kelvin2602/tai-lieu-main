# OSINT on X: Uncovering Twitter Phone Numbers, Emails, and More

**Nguồn:** [OSINT Industries](https://www.osint.industries/post/osint-on-x-uncovering-twitter-phone-numbers-emails-and-more)  
**Danh mục:** Guides & Information  
**Ngày xuất bản:** 26/03/2025

---

## 1. Tổng quan: Twitter vs X

Sự chuyển đổi sang **X** mang lại thay đổi lớn:

- **API Limitations:** Hạn chế quyền truy cập dữ liệu miễn phí.
- **Verification:** Tích xanh (Blue check) giờ đây có thể mua, làm giảm độ tin cậy khi xác minh danh tính.
- **Public by Design:** Tuy nhiên, X vẫn là nền tảng "công khai mặc định", dữ liệu dễ truy cập hơn Facebook/Telegram.

---

## 2. Kỹ thuật tìm kiếm User Details

### Built-In Search & URL Trick

- **Search Bar:** Tìm username, hashtag, từ khóa.
- **URL Bar:** Username luôn nằm cuối URL profile.
  - _Ví dụ:_ `x.com/username` -> Username là phần sau cùng.
  - Username cũng hiển thị ngay dưới Display Name (tên hiển thị) trên profile.

### Analyzing Posts & Activity

- **GeoINT:** Kiểm tra vị trí trong các bài đăng cũ (trước khi tính năng này bị ẩn bớt).
- **Likes/Reposts:** Phản ánh sở thích, quan điểm chính trị và mạng lưới quan hệ.

### Cross-Referencing (Đối chiếu chéo)

- Người dùng thường tái sử dụng username.
- **Google Dork:** `site:instagram.com "username"` hoặc `site:github.com "username"`.

---

## 3. Tìm kiếm Số điện thoại (Phone Numbers)

### Public Posts (Bài đăng công khai)

Tìm kiếm các từ khóa người dùng vô tình để lộ:

- `"call me" (from:username)`
- `"phone number" (from:username)`
- `"text me" (from:username)`

### Linked Profiles

- Kiểm tra Bio để tìm link sang Facebook, LinkedIn, hoặc trang bán hàng (nơi thường yêu cầu công khai SĐT).

### OSINT Tools

- Sử dụng **Reverse Phone Lookup** nếu bạn đã có SĐT để tìm ngược lại tài khoản X.
- Sử dụng **OSINT Industries** để quét từ username/email ra SĐT.

---

## 4. Tìm kiếm Email Addresses

### Keywords Search

- `"email" (from:username)`
- `"gmail.com" (from:username)`
- `"contact me" (from:username)`
- `"DM for details" (from:username)`

### Google Dorking cho Email

Sử dụng các toán tử tìm kiếm nâng cao:

- `site:twitter.com "username" "gmail.com"`
- `site:x.com "username" "email"`
- `site:x.com "username" "contact"`

### Linked Professional Profiles

- Kiểm tra Bio có link đến LinkedIn, GitHub hoặc Website cá nhân không. Email thường nằm ở đó.

---

## 5. Công cụ hỗ trợ (Tools)

- **OSINT Industries:** Quét 1000+ module để tìm thông tin liên kết.
- **Maltego:** Vẽ biểu đồ mối quan hệ giữa các tài khoản.
- **Palette (OSINT Industries):** Công cụ trực quan hóa nâng cao.

---

**© OSINT Industries - Intel Hub**
