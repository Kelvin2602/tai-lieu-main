# r/OSINT: How OSINT on Reddit Can Find Emails, Phone Numbers and More

**Nguồn:** [OSINT Industries](https://www.osint.industries/post/r-osint-how-osint-on-reddit-can-find-emails-phone-numbers-and-more)  
**Danh mục:** Guides & Information  
**Ngày xuất bản:** Tháng 8/2025

---

## Tổng quan

**Farm upvotes, reap OSINT.**

Reddit là một kho báu cho các nhà điều tra OSINT dũng cảm. Ẩn sau những Snoo (mascot của Reddit) dễ thương, người dùng thường tiết lộ nhiều hơn họ nghĩ.

**Cấu trúc độc đáo của Reddit:**

- Mạng lưới các cộng đồng bán độc lập (subreddits).
- Tài khoản ẩn danh với tên người dùng tự chọn.
- **Lợi thế:** Sự ẩn danh khiến người dùng thoải mái chia sẻ thông tin thật hơn.

---

## 1. Cách OSINT trên Reddit hoạt động

Bạn có thể thu thập thông tin từ:

1. **Public posts & comments:** Tất cả nội dung (trừ private subreddits) đều công khai.
2. **User profiles:** Lịch sử bài đăng, sở thích, mô hình hành vi.
3. **Deleted content recovery:** Dùng công cụ như **Reveddit** để khôi phục bài đã xóa.
4. **Metadata & timestamps:** Theo dõi thời gian hoạt động để suy ra múi giờ/lịch trình.

---

## 2. Kỹ thuật Điều tra Chính (Key Techniques)

### 2.1. Finding a Redditor (Tìm kiếm Redditor)

**Google Dorking:**

- Redditors thường tái sử dụng username.
- Query: `site:twitter.com "username"` hoặc `site:github.com "username"`.

**Reddit Search:**

- Tìm username cụ thể: `u/username`.

### 2.2. Tracking Activity (Theo dõi Hoạt động)

**Phân tích Profile:**

- Xem "Active in these communities".
- Đọc lịch sử post và comment.
- **Ví dụ:** Hoạt động thường xuyên trong `r/OSINT` hoặc `r/opsec` → Người dùng am hiểu công nghệ.

### 2.3. Geolocation & Real-World Connections

**Phân tích Timestamps:**

- Hoạt động đêm khuya → Suy ra múi giờ.
- Biến mất 9am-5pm → Có việc làm ổn định.

**Phân tích Nội dung:**

- Tiếng lóng địa phương.
- Đề cập đến sự kiện, văn hóa pop địa phương.
- **Ví dụ:** Post trong `r/Birmingham` → Có liên kết đến UK (hoặc Alabama).

**Image Metadata:**

- Reddit ngày càng trực quan.
- Dùng **Reverse Image Search** để tìm nguồn gốc ảnh.
- Dùng **ExifTool** để trích xuất metadata từ ảnh gốc (nếu có).

### 2.4. Uncovering Emails & Personal Info

- Sử dụng công cụ chuyên dụng như **OSINT Industries** hoặc **Maltego**.
- Cross-reference username với nguồn dữ liệu bên ngoài.
- Tìm email, tên thật, số điện thoại liên kết.

---

## 3. Cân nhắc Đạo đức và Pháp lý

1. **Only use publicly available data:** Không hack, không scrape private subreddits.
2. **Respect privacy:** Không doxing người dùng. Giữ giá trị `#OSINT4Good`.
3. **Use compliant tools:** Sử dụng công cụ tuân thủ pháp luật.

---

**© OSINT Industries - Intel Hub**
