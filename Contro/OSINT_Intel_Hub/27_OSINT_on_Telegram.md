# OSINT on Telegram: Find Phone Numbers, Emails and User Details

**Nguồn:** [OSINT Industries](https://www.osint.industries/post/osint-on-telegram-find-phone-numbers-emails-and-user-details)  
**Danh mục:** Guides & Information  
**Ngày xuất bản:** 01/04/2025

---

## Tổng quan

Telegram là nền tảng quan trọng cho OSINT vì tính chất "dual nature": vừa là nơi giao tiếp công khai (Groups/Channels), vừa là nơi ẩn danh (Encrypted Chats).

**3 Cách tiếp cận chính:**

1.  Tìm Telegram Profiles & Usernames.
2.  Tìm Phone Numbers từ Telegram Accounts.
3.  Tìm Email Addresses từ Telegram Accounts.

---

## 1. Telegram Profiles: OSINT for User Details

### Cách tìm tài khoản Telegram:

- **In-App Search:** Tìm `@username` trực tiếp trong ứng dụng.
- **Browsing Public Groups:** Tìm kiếm trong các nhóm công khai mà đối tượng tham gia.
- **Google Dorking:**
  - `site:t.me "username"`
  - `site:telegram.me "username"`
- **Cross-Referencing:** Kiểm tra xem username có được tái sử dụng trên các nền tảng khác không.

### Khai thác dữ liệu từ Profile:

- **Profile Picture:** Có thể chứa thông tin cá nhân.
- **Bio:** Thường chứa liên kết hoặc thông tin liên hệ khác.
- **Group Membership:** Tham gia nhóm nào phản ánh sở thích, quan điểm chính trị hoặc hoạt động phi pháp.

---

## 2. Telegram Phone Numbers: OSINT for Phone Lookup

### Contact Syncing Trick (Mẹo đồng bộ danh bạ)

- Lưu số điện thoại nghi ngờ vào danh bạ điện thoại của bạn.
- Mở Telegram → Nếu họ dùng số đó và không chặn tính năng này, profile của họ sẽ hiện ra.

### Public Listings

- Tìm trong bio, pinned messages của các nhóm kinh doanh/tuyển dụng.
- Dorking: `site:t.me "phone number"`.

### OSINT Tools

- Sử dụng OSINT Industries để reverse lookup từ Username/Email sang Phone Number.

---

## 3. Telegram Email Addresses: OSINT for Email Lookup

- **Business Groups:** Tìm trong các nhóm chuyên nghiệp nơi mọi người chia sẻ email để networking.
- **Linked Accounts:** Tìm trên LinkedIn/GitHub xem họ có liệt kê Telegram username cùng với email không.
- **Dorking:** `site:linkedin.com "telegram" "email"`.

---

**© OSINT Industries - Intel Hub**
