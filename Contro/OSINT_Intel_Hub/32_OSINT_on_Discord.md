# OSINT on Discord: How to Find Discord Emails, Phone Numbers and More

**Nguồn:** [OSINT Industries](https://www.osint.industries/post/osint-on-discord-how-to-find-discord-emails-phone-numbers-and-more)  
**Danh mục:** Guides & Information  
**Ngày xuất bản:** 13/12/2024

---

## Tổng quan

Discord là nền tảng phổ biến không chỉ cho game thủ mà còn cho các cộng đồng khác.
**Đặc điểm:** Mỗi user có Username, Discriminator (4 số, vd: `#1234` - _lưu ý: Discord đang dần bỏ discriminator từ 2024_), Profile Picture, Banner và Bio.

---

## 1. Finding Discord User Details

### Search Techniques:

- **Google Dorking:**
  - `"Discord" + "username" + "platform name"`
  - Tìm việc tái sử dụng username trên Reddit, GitHub, Twitch, Steam.
- **Networking:** Tham gia các server chung (mutual servers) để xem profile đầy đủ.
- **OSINT Tools:** Sử dụng OSINT Industries để tìm Discord account từ email/SĐT.

### Discord Username Lookup

- Sử dụng tính năng tìm kiếm nội bộ của Discord để tìm tin nhắn từ user cụ thể.
- Sử dụng các dịch vụ Discord ID search (nếu có ID).

---

## 2. Finding Discord Phone Numbers

Mặc dù Discord yêu cầu SĐT để xác minh, thông tin này **không công khai**.
**Cách tìm:**

- **Cross-Referencing:** Tìm username trên các nền tảng khác nơi họ có thể công khai SĐT.
- **Server Roles:** Admin/Mod trong các server chuyên nghiệp/mua bán thường để lại SĐT liên hệ trong Bio hoặc Pinned Posts.
- **Dorking:** `"username" + "phone number"`.

---

## 3. Finding Discord Email Addresses

- **Linked Accounts:** Kiểm tra kết nối với Spotify, Steam, GitHub, Twitter trong profile.
- **Bio & Server Posts:** Tìm trong Bio hoặc các bài đăng tuyển dụng/networking.
- **Reverse Lookup:** Sử dụng công cụ như OSINT Industries hoặc Maltego để tìm email liên kết với username.

---

**© OSINT Industries - Intel Hub**
