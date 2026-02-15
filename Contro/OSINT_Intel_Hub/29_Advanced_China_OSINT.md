# Advanced OSINT for China: SOCMINT on WeChat, Weibo, and More

**Nguồn:** [OSINT Industries](https://www.osint.industries/post/advanced-osint-for-china-socmint-on-wechat-weibo-and-more)  
**Danh mục:** Guides & Information  
**Ngày xuất bản:** 27/03/2025

---

## 1. Thách thức đặc thù (The Forbidden City)

OSINT tại Trung Quốc đối mặt với những rào cản lớn:

- **The Great Firewall:** Chặn truy cập từ bên ngoài, kiểm soát luồng thông tin.
- **Real-Name Registration:** Hầu hết các nền tảng yêu cầu SĐT Trung Quốc để đăng ký, khiến việc tạo tài khoản "sock puppet" (ảo) cực kỳ khó khăn.
- **Ngôn ngữ & Slang:** Tiếng Trung có nhiều tiếng lóng (ví dụ: 666, 吃瓜).
- **Kiểm duyệt:** Nội dung nhạy cảm bị xóa rất nhanh.

---

## 2. Các nền tảng chính & Kỹ thuật khai thác

### WeChat (Weixin)

- **People Nearby:** Tính năng tìm người dùng gần đây. Có thể dùng để phát hiện username.
- **Profile Scraping:** Kiểm tra phần mô tả (description) của tài khoản doanh nghiệp (Official Accounts) để tìm SĐT hoặc Email.
- **WeChat Groups:** Tìm kiếm các nhóm chuyên ngành, nơi thành viên thường chia sẻ contact card.

### Weibo (Sina Weibo)

- **Username Reuse:** Người dùng thường dùng chung username với các nền tảng khác.
- **Reverse Image Search:** Tìm ảnh profile trên các mạng khác (Baidu Images).
- **Bio & Posts:** Kiểm tra Bio của tài khoản doanh nghiệp để tìm thông tin liên hệ.

### Zhihu (Quora của TQ)

- **Expert Profiles:** Chuyên gia thường để lại email/liên hệ trong bio để hợp tác.
- **Comment Sections:** Tìm trong phần bình luận các bài viết liên quan đến tuyển dụng/hợp tác.
- **Backlinks:** Profile thường liên kết đến blog cá nhân hoặc website công ty.

### Xiaohongshu (Little Red Book)

- **Influencer Bios:** KOLs thường để lại WeChat ID hoặc Email để nhận booking.
- **Product Listings:** Người bán hàng (E-commerce) thường công khai SĐT.

### Business Directories

- **QCC.com (企查查) & TianYanCha (天眼查):** Cơ sở dữ liệu doanh nghiệp, công khai SĐT, email và người đại diện pháp luật.
- **Baidu Maps & Dianping:** Tìm SĐT của doanh nghiệp địa phương.

---

## 3. Dữ liệu định danh (Identifiers)

### Phone Numbers (Số điện thoại)

- **Mã quốc gia:** `+86`
- **Di động (Mobile):** Bắt đầu bằng `1` + mã nhà mạng (11 số).
  - _China Mobile/Unicom/Telecom:_ 13x, 15x, 18x, 19x.
  - _MVNOs (Mạng ảo):_ 170, 171 (thường dùng cho sim rác/lừa đảo).
  - _Ví dụ:_ `+86 138-1234-5678`.
- **Cố định (Landline):** Mã vùng + Số máy.
  - _010:_ Bắc Kinh.
  - _021:_ Thượng Hải.
  - _0755:_ Thâm Quyến.

### Email Addresses

- **Providers phổ biến:**
  - `@qq.com` (Tencent - thường liên kết với WeChat/QQ ID).
  - `@163.com`, `@126.com` (NetEase).
  - `@sina.com`.
  - `@aliyun.com` (Alibaba).

---

## 4. Kỹ thuật tìm kiếm nâng cao (Advanced Search)

Sử dụng Baidu hoặc Sogou với các Dorks sau:

- **Tìm Email QQ/163 trên Weibo:**
  `"@qq.com" OR "@163.com" site:weibo.com`
- **Tìm SĐT trên trang doanh nghiệp:**
  `"13*" OR "15*" OR "18*" site:qcc.com`
- **Tìm WeChat ID trên Xiaohongshu:**
  `intitle:"profile" "WeChat ID" site:xiaohongshu.com`
- **Tìm file Excel chứa danh sách (cẩn thận):**
  `filetype:xls "phone number" site:.cn`

---

## 5. Lưu ý quan trọng

- **Scraping:** Cẩn thận khi dùng tool cào dữ liệu (Scrapy) vì các nền tảng TQ chặn rất gắt và có rủi ro pháp lý.
- **OpSec:** Luôn sử dụng VPN và máy ảo sạch khi điều tra các mục tiêu tại Trung Quốc.

**© OSINT Industries - Intel Hub**
