# theHarvester - OSINT Gathering Tool

## 📋 Thông tin cơ bản

- **Tên công cụ:** theHarvester
- **Tác giả:** laramies
- **Đường dẫn GitHub:** https://github.com/laramies/theHarvester
- **Phân loại:** 🆓 Miễn phí
- **Loại:** Công cụ thu thập OSINT
- **Format:** Python Tool
- **License:** GPL-2.0

## 🎯 Chức năng

theHarvester là một công cụ đơn giản nhưng mạnh mẽ được thiết kế để sử dụng trong giai đoạn reconnaissance của red team assessment hoặc penetration test. Nó thực hiện thu thập thông tin tình báo nguồn mở (OSINT) để giúp xác định threat landscape bên ngoài của một domain.

### Tính năng chính:
- **Email Gathering:** Thu thập email addresses
- **Subdomain Discovery:** Phát hiện subdomain
- **IP Address Collection:** Thu thập địa chỉ IP
- **URL Discovery:** Tìm kiếm URLs
- **Name Harvesting:** Thu thập tên người dùng
- **Multiple Sources:** Sử dụng nhiều nguồn công khai

### Các nguồn dữ liệu:
- Baidu, Brave, DuckDuckGo (Search engines)
- BufferOverrun, Censys, CertSpotter (Certificate search)
- GitHub, Hunter, IntelX (Code and email search)
- Shodan, ZoomEye (IoT and device search)
- Và nhiều nguồn khác (100+ sources)

## ✅ Ưu điểm

- **Mạnh mẽ:** Thu thập thông tin từ 100+ nguồn
- **Dễ sử dụng:** Command-line interface đơn giản
- **Nhiều nguồn:** Hỗ trợ nhiều nguồn dữ liệu khác nhau
- **Miễn phí:** Hoàn toàn miễn phí
- **Open Source:** Mã nguồn mở
- **Docker Support:** Hỗ trợ Docker
- **API Support:** Hỗ trợ RESTful API

## 🎓 Đối tượng sử dụng

- **Pentesters:** Sử dụng trong penetration testing
- **Red Team:** Reconnaissance phase
- **OSINT Analysts:** Thu thập thông tin OSINT
- **Security Researchers:** Nghiên cứu bảo mật
- **Bug Bounty Hunters:** Tìm kiếm thông tin target

## 📚 Cài đặt và Sử dụng

### Yêu cầu:
- Python 3.12 hoặc cao hơn
- uv (package manager)

### Cài đặt:

1. **Cài đặt uv:**
```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

2. **Clone repository:**
```bash
git clone https://github.com/laramies/theHarvester
cd theHarvester
```

3. **Cài đặt dependencies:**
```bash
uv sync
```

4. **Chạy theHarvester:**
```bash
uv run theHarvester
```

### Sử dụng cơ bản:
```bash
uv run theHarvester -d example.com -b all
```

### Các tùy chọn:
- `-d`: Domain để tìm kiếm
- `-b`: Nguồn dữ liệu (all, baidu, brave, etc.)
- `-l`: Giới hạn số kết quả
- `-s`: Bắt đầu từ kết quả số
- `-f`: Lưu kết quả vào file

## 🔗 Liên kết

- **GitHub Repository:** https://github.com/laramies/theHarvester
- **Documentation:** https://github.com/laramies/theHarvester/wiki
- **Installation Guide:** https://github.com/laramies/theHarvester/wiki/Installation

## 📝 Ghi chú

theHarvester được phát triển bởi laramies và là một trong những công cụ OSINT phổ biến nhất. Công cụ này được sử dụng rộng rãi trong cộng đồng bảo mật và penetration testing.

### Đặc điểm:
- **Passive Reconnaissance:** Thu thập thông tin một cách thụ động
- **Multiple Sources:** Hỗ trợ nhiều nguồn dữ liệu
- **Regular Updates:** Thường xuyên được cập nhật với nguồn mới
- **Community Support:** Có cộng đồng hỗ trợ lớn

### Passive Modules:
Công cụ hỗ trợ nhiều passive modules như:
- Baidu, Brave, DuckDuckGo (Search engines)
- BufferOverrun, Censys (Certificate search)
- GitHub Code Search
- Hunter, IntelX (Email search)
- Shodan, ZoomEye (Device search)
- Và nhiều module khác

## 🎯 Use Cases

- **Domain Reconnaissance:** Thu thập thông tin về domain
- **Email Discovery:** Tìm kiếm email addresses
- **Subdomain Enumeration:** Liệt kê subdomain
- **IP Address Collection:** Thu thập địa chỉ IP
- **Target Information Gathering:** Thu thập thông tin về target

## 💡 Tips

- Sử dụng `-b all` để tìm kiếm từ tất cả nguồn
- Lưu kết quả vào file với `-f` để phân tích sau
- Kết hợp với các công cụ OSINT khác
- Kiểm tra documentation để biết các nguồn mới nhất

## 📚 Tài nguyên liên quan

- theHarvester Wiki
- OSINT Framework
- Các công cụ OSINT khác
- Penetration testing tools

## 🏆 Đánh giá

theHarvester được đánh giá rất cao trong cộng đồng bảo mật và là một công cụ không thể thiếu cho bất kỳ ai làm việc trong lĩnh vực OSINT và penetration testing.

## 🌟 Đặc điểm nổi bật

- Thu thập từ 100+ nguồn dữ liệu
- Dễ sử dụng với command-line interface
- Hỗ trợ Docker và RESTful API
- Thường xuyên được cập nhật
- Cộng đồng hỗ trợ lớn

---

**Nguồn:** [GitHub - laramies/theHarvester](https://github.com/laramies/theHarvester)  
**Tác giả:** laramies  
**Cập nhật:** 2025-01-12

