# Wiping the Prints: Managing Your OSINT Digital Footprint With OpSec

**Nguồn:** [OSINT Industries](https://www.osint.industries/post/wiping-the-prints-managing-your-osint-digital-footprint-with-opsec)  
**Danh mục:** Guides & Information  
**Ngày xuất bản:** Tháng 8/2025

---

## Tổng quan

**Digital Footprint (Dấu vết kỹ thuật số) trong OSINT là gì?**

Đó là dấu vết dữ liệu bạn để lại khi thực hiện nghiên cứu OSINT.

- Search queries.
- Visited websites.
- Account logins.
- Passive network activity (VPN logs, browser fingerprints).

**Rủi ro:**

- Tiết lộ danh tính, vị trí của bạn.
- Cảnh báo mục tiêu (target) rằng họ đang bị điều tra.
- Cho phép threat actors giám sát hoặc nhắm mục tiêu lại bạn.

---

## 5 Best Practices để Giảm thiểu Dấu vết (OpSec)

### 1. Use Disposable and Dedicated Infrastructure

**Nguyên tắc vàng:** Không bao giờ điều tra từ thiết bị hoặc mạng cá nhân.

- **Virtual Machine (VM):** Tạo máy ảo chuyên dụng cho OSINT.
- **Tor Browser:** Thêm lớp bảo mật ẩn danh.
- **Cloud Instances:** Sử dụng máy chủ tạm thời (AWS, etc.) cho các tác vụ rủi ro, sau đó hủy bỏ.

### 2. Mask Your Browser Footprint

Trình duyệt rò rỉ rất nhiều thông tin (screen size, fonts, OS version, battery level).

- **Sử dụng Hardened Browsers:** Mullvad Browser, Brave.
- **Fingerprint Randomisation:** Sử dụng extension để ngẫu nhiên hóa dấu vân tay trình duyệt.
- **Disable JavaScript:** Trừ khi thực sự cần thiết.
- **Clear Cookies:** Thường xuyên.

### 3. Segment Your Identities (Phân đoạn Danh tính)

- **Multiple Personas:** Tạo nhiều nhân vật (personas) cho các loại điều tra khác nhau.
- **Backstories:** Xây dựng câu chuyện nền nhất quán nhưng giả mạo.
- **Consistency:** Đủ nhất quán để bạn nhớ, nhưng không để người khác liên kết lại với bạn.

### 4. Avoid Touching the Target

- **Passive Collection:** Thu thập thụ động là an toàn nhất.
- **Kỹ thuật:**
  - Web scraping.
  - Cached pages (Google Cache).
  - Archive tools (Wayback Machine).
  - Domain intel via third parties.
- **Nguyên tắc:** Đừng để "con mồi" biết bạn đang ở đó.

### 5. Sanitise Your Tools and Metadata

- **Làm sạch bằng chứng:** Trước khi chia sẻ báo cáo/ảnh chụp màn hình.
- **Công cụ:** ExifTool, MAT2, BleachBit.
- **Mục đích:** Xóa GPS, ngày tháng, thông tin thiết bị khỏi file để tránh lộ ngược lại bạn.

---

**© OSINT Industries - Intel Hub**
