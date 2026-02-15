# Google OSINT: Using Google Profiles in OSINT Investigations

**Nguồn:** [OSINT Industries](https://www.osint.industries/post/google-osint-using-google-profiles-in-osint-investigations)  
**Danh mục:** Guides & Information  
**Ngày xuất bản:** Tháng 10/2025

---

## Tổng quan

Với hàng tỷ tài khoản trên tất cả các sản phẩm của mình, **Google là một trong những nền tảng mạnh mẽ nhất** trên internet hiện đại. Trải dài qua Youtube, Gmail, Drive, Maps và nhiều hơn nữa, hầu như mọi thứ trên internet đều được kết nối với hệ sinh thái Google.

Khi Google đặt mục tiêu "tổ chức thông tin thế giới", họ đã vô tình tạo ra **nguồn dữ liệu OSINT tối thượng**.

**Mạng lưới Google là một mỏ vàng:**

- Từ các trang Google+ cũ đến Docs được chia sẻ
- Đóng góp trên Maps đến hoạt động YouTube
- Tất cả đều là dữ liệu phong phú cho các nhà điều tra OSINT dũng cảm

---

## 1. Google Profiles hoạt động như thế nào?

### 1.1. Tài khoản Google thống nhất

Mọi dịch vụ Google (Gmail, YouTube, Drive, Docs, Maps, Photos, v.v.) đều được gắn với **một tài khoản Google duy nhất**.

**Hồ sơ công khai (Public Profile):**

- Hoạt động như trung tâm cho hoạt động của người dùng
- Thường liên kết các điểm dữ liệu lại với nhau
- Tạo nên bức tranh hoàn chỉnh về nhân cách trực tuyến

### 1.2. Di sản của Google+

Mặc dù Google+ đã thất bại, di sản của nó vẫn còn giá trị cho OSINT:

- Nhiều hồ sơ vẫn có thể tìm kiếm hoặc được lưu trong bộ nhớ cache
- Có thể tiết lộ ảnh, lịch sử làm việc và dữ liệu vị trí
- Hồ sơ ngày nay vẫn lộ: tên thật, bí danh, ảnh hồ sơ, kênh YouTube liên kết, đánh giá Maps, v.v.

### 1.3. Google Profiles và Quyền riêng tư

**Thực tế:** Mọi người đánh giá thấp mức độ "riêng tư" của hoạt động Google thực sự là công khai.

**Lỗ hổng phổ biến:**

- Cài đặt quyền riêng tư lỗi thời
- Vô tình để Drive documents ở chế độ "Viewers → Everyone"
- Đánh giá Maps gắn liền với ảnh có thể nhận dạng
- Tài khoản cũ bị khóa vẫn có thể rò rỉ thông tin

---

## 2. Ba Phương Pháp Tiếp Cận Chính trong Google OSINT

Để bao quát hầu hết công việc Google OSINT, chúng ta tập trung vào 3 nhiệm vụ mục tiêu:

1. **Tìm chi tiết tài khoản Google**
2. **Tìm số điện thoại liên kết Google**
3. **Tìm địa chỉ email liên kết Google**

---

## 3. Kỹ thuật 1: Tìm Chi Tiết Tài Khoản Google

### 3.1. Search Engine Dorking trong Hệ sinh thái Google

Công cụ tìm kiếm của Google hoàn hảo để điều tra hệ sinh thái của chính nó.

**Mẹo:**

- Sử dụng **Google Dorks** để có kết quả chính xác hơn
- Đừng chỉ tìm kiếm kết quả khớp chính xác
- Thử nghiệm với các biến thể tên

### 3.2. YouTube, Maps và Dịch vụ khác

#### YouTube

- Mọi tài khoản YouTube đều gắn với Google profile
- Kiểm tra phần **"About"** để tìm liên kết, tên người dùng, email
- Comments và Playlists tiết lộ sở thích và vị trí

#### Google Maps

- Công cụ mạnh mẽ để định vị mục tiêu
- Tìm kiếm danh tính mục tiêu trong Maps
- Tìm **Maps Reviews** (Đánh giá)
  - Tiết lộ vị trí
  - Nơi làm việc
  - Khu phố sinh sống
  - Ảnh chụp thực tế

### 3.3. Legacy Profiles (Hồ sơ cũ)

- Google+ đã ngừng năm 2019 nhưng dữ liệu vẫn còn
- Sử dụng **Wayback Machine** để khôi phục nội dung đã đăng
- Kiểm tra **Blogger blog** hoặc **Google Site** cũ
- Tìm thông tin liên hệ trong footer hoặc trang contact

---

## 4. Kỹ thuật 2: Tìm Số Điện Thoại & Email Google

### 4.1. Google Phone Numbers

Số điện thoại thường riêng tư, nhưng có thể bị lộ qua:

- **Google Business Profiles:** Thường chứa số điện thoại kết nối trực tiếp với Gmail (đặc biệt là doanh nghiệp nhỏ/freelancer)
- **Public Google Sheets/Docs:** Nếu người tạo quên hạn chế quyền truy cập

### 4.2. Gmail Addresses

Email là xương sống của tài khoản Google. Người dùng thường vô tình làm lộ chúng tại:

1. **About Me Profiles:** `aboutme.google.com/[username]`
2. **YouTube "For Business Inquiries":** Trong cài đặt kênh
3. **Public Google Drive Files:** Trong metadata hoặc nội dung
4. **Google Groups Posts:** Các cuộc thảo luận thường được lập chỉ mục

### 4.3. Reverse Email Lookups

Cách dễ nhất là sử dụng công cụ OSINT chuyên dụng như **OSINT Industries**:

- Nhập địa chỉ Gmail
- Tiết lộ tài khoản liên kết, tên người dùng, hồ sơ khác
- Tìm số điện thoại và email liên quan

---

## 5. Quy trình Điều tra Google OSINT (Step-by-Step)

### Bước 1: Thu thập thông tin cơ bản

- [ ] Xác định Gmail hoặc Username mục tiêu
- [ ] Chạy Google Dorks cơ bản: `site:google.com "username"`

### Bước 2: Kiểm tra YouTube

- [ ] Tìm kênh YouTube liên kết
- [ ] Đọc phần "About"
- [ ] Kiểm tra email "For business inquiries"
- [ ] Phân tích Playlists và Subscriptions

### Bước 3: Kiểm tra Google Maps

- [ ] Tìm kiếm Contributions/Reviews của user
- [ ] Phân tích các địa điểm thường xuyên review
- [ ] Tìm ảnh đã upload lên Maps

### Bước 4: Kiểm tra Google Drive/Docs

- [ ] Dorking: `site:docs.google.com "username"`
- [ ] Dorking: `site:drive.google.com "username"`
- [ ] Kiểm tra quyền truy cập public

### Bước 5: Kiểm tra Legacy Data

- [ ] Tìm Google+ archives
- [ ] Kiểm tra Blogger (`site:blogspot.com`)
- [ ] Kiểm tra Google Sites (`site:sites.google.com`)

### Bước 6: Sử dụng Tools

- [ ] OSINT Industries lookup
- [ ] Reverse Image Search cho avatar
- [ ] Wayback Machine cho dữ liệu đã xóa

---

## Kết luận

Dữ liệu Google OSINT mạnh mẽ ngang ngửa SOCMINT. Phạm vi, tuổi đời và khả năng tìm kiếm của các dịch vụ liên kết của Google có nghĩa là **một manh mối có thể dẫn đến nhiều thông tin chi tiết** - hoặc mở khóa toàn bộ cuộc điều tra.

**Chìa khóa thành công:**

- Hiểu sự kết nối giữa các dịch vụ
- Biết cách khai thác dữ liệu cũ và cache
- Sử dụng chính Google Search để chống lại nó (Dorking)

---

**© OSINT Industries - Intel Hub**
