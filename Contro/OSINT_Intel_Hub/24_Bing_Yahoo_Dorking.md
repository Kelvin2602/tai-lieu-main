# OSINT Basics: Going Beyond Google with Bing and Yahoo Dorking

**Nguồn:** [OSINT Industries](https://www.osint.industries/post/osint-basics-going-beyond-google-with-bing-and-yahoo-dorking)  
**Danh mục:** Guides & Information  
**Ngày xuất bản:** Tháng 4/2025

---

## Tổng quan

Google là vua tìm kiếm, nhưng **Bing** và **Yahoo** cung cấp tiềm năng chưa được khai thác cho OSINT nhờ cách lập chỉ mục (indexing) khác biệt và quy định bảo mật lỏng lẻo hơn đôi chút.

**Tại sao dùng Bing/Yahoo?**

1. **Alternative Indexing:** Hiển thị kết quả mà Google có thể đã lọc bỏ (DMCA takedowns, "right to be forgotten").
2. **Looser Security:** Ít CAPTCHA hơn khi thực hiện dorking tự động.
3. **Regional Content:** Bing tốt hơn cho một số khu vực cụ thể.

---

## Core Search Operators (Toán tử cơ bản)

Các toán tử này hoạt động tốt trên cả Bing và Yahoo:

- `site:` Giới hạn tìm kiếm trong một domain (vd: `site:linkedin.com`).
- `filetype:` Tìm loại file cụ thể (vd: `filetype:pdf`).
- `intitle:` Tìm từ khóa trong tiêu đề trang.
- `inbody:` (Yahoo/Bing specific) Tìm từ khóa trong nội dung trang.
- `ip:` (Bing specific) Tìm các trang web được host trên cùng một IP (vd: `ip:123.45.67.89`).

---

## Practical Techniques (Kỹ thuật thực tế)

### 1. Exposed Files and Directories

Tìm các file cấu hình hoặc backup bị lộ:

- `site:example.com filetype:xml "password"`
- `site:example.com filetype:log "username"`

### 2. Exposed Login Portals

Tìm trang đăng nhập quản trị bị quên lãng:

- `site:example.com intitle:"login" "admin"`
- `site:example.com intitle:"index of" "admin"`

### 3. Social Media Reconnaissance

Tìm tài khoản mạng xã hội công khai:

- `site:twitter.com "target_username"`
- `site:facebook.com "target_name"`

### 4. Academic & Research Data

Tìm tài liệu nghiên cứu:

- `filetype:pdf site:.edu "research topic"`

---

**© OSINT Industries - Intel Hub**
