# OSINT on Facebook: Find Emails, Phone Numbers, and More

**Nguồn:** [OSINT Industries](https://www.osint.industries/post/osint-on-facebook-find-emails-phone-numbers-and-more)  
**Danh mục:** Guides & Information  
**Ngày xuất bản:** 01/04/2025

---

## Tổng quan

Facebook chứa lượng dữ liệu khổng lồ (SOCMINT). Dù có cài đặt quyền riêng tư, vẫn có nhiều cách để khai thác thông tin hợp pháp.

**3 Cách tiếp cận chính:**

1.  Tìm User Details.
2.  Tìm Phone Numbers.
3.  Tìm Email Addresses.

---

## 1. Find Facebook User Details

### Search Techniques:

- **Google Dorking:**
  - `site:facebook.com "username"`
  - `site:facebook.com "John Doe" "New York"`
- **Facebook Search:** Lọc theo People, Photos, Posts, Groups.
- **Mutual Friends & Tagged Photos:** Kiểm tra bạn chung hoặc ảnh được tag (thường công khai hơn profile chính).
- **Check-Ins & Reviews:** Lộ vị trí và thói quen di chuyển (GeoINT).

### Graph Search Alternatives

- Sử dụng các tham số URL đặc biệt để tìm bài đăng/ảnh cũ (thay thế cho Graph Search đã bị khai tử).

---

## 2. Find Facebook Phone Numbers

- **Business Pages:** Thường công khai SĐT trên trang doanh nghiệp.
- **Marketplace:** Người bán thường để lại SĐT để liên hệ.
- **Dorking:** `site:facebook.com "call me at" OR "contact me"`.
- **Reverse Lookup:** Dùng OSINT Industries để tìm Facebook từ SĐT có sẵn.

---

## 3. Find Facebook Email Addresses

- **About Section:** Kiểm tra phần giới thiệu (đặc biệt là profile doanh nghiệp).
- **Group Posts:** Tìm trong các bài đăng tuyển dụng/networking trong nhóm.
- **Reverse Lookup:** Dùng công cụ để tìm email liên kết với tài khoản Facebook.

---

## OSINT on Facebook Marketplace

Marketplace là mỏ vàng dữ liệu:

- **User Info:** Tên thật, ảnh thật, ngày tạo tài khoản.
- **Location:** Vị trí người bán (GeoINT cực tốt).
- **Listing Details:** Lịch sử giá, loại hàng hóa (suy luận tình hình tài chính, sở thích).
- **Behavior:** Thời gian phản hồi, phong cách ngôn ngữ.
- **URL Trick:** `facebook.com/marketplace/profile/[UserID]` để xem tất cả bài đăng bán hàng của một người.

---

**© OSINT Industries - Intel Hub**
