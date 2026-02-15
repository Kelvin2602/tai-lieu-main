# SpiderFoot - OSINT Automation Platform

## 📋 Thông tin cơ bản

- **Tên công cụ:** SpiderFoot
- **Đường dẫn:** https://www.spiderfoot.net/
- **Phân loại:** 🆓 Miễn phí/Freemium
- **Loại:** Nền tảng tự động hóa OSINT
- **GitHub:** https://github.com/smicallef/spiderfoot

## 🎯 Chức năng

SpiderFoot là nền tảng tự động hóa OSINT mạnh mẽ với hơn 200 mô-đun, cho phép thu thập và phân tích thông tin từ nhiều nguồn công khai khác nhau. Công cụ này tự động hóa quá trình thu thập thông tin tình báo nguồn mở.

### Tính năng chính:
- **Hơn 200 mô-đun:** Thu thập thông tin từ hơn 100 nguồn công khai
- **YAML Correlation Engine:** Hệ thống correlation với 37 rules được định nghĩa sẵn
- **Export Formats:** CSV/JSON/GEXF export
- **SQLite Backend:** Cơ sở dữ liệu SQLite cho custom querying
- **TOR Integration:** Tích hợp TOR cho dark web searching
- **Tool Integration:** Có thể gọi các công cụ khác như DNSTwist, Whatweb, Nmap, CMSeeK
- **Tự động hóa:** Tự động thu thập và phân tích dữ liệu
- **Giao diện web:** Giao diện web trực quan và dễ sử dụng
- **API hỗ trợ:** Có thể tích hợp với các hệ thống khác
- **Báo cáo:** Tạo báo cáo chi tiết về kết quả điều tra

### Nguồn dữ liệu:
- Mạng xã hội (Twitter, Facebook, LinkedIn, etc.)
- Trang web và domain
- Threat intelligence feeds
- DNS records
- WHOIS information
- SSL certificates
- IP addresses và geolocation
- Email addresses
- Usernames
- Và nhiều nguồn khác

## ✅ Ưu điểm

- **Tự động hóa mạnh mẽ:** Giảm thiểu công việc thủ công trong OSINT
- **Mô-đun phong phú:** Hơn 200 mô-đun cho nhiều mục đích khác nhau
- **Giao diện web:** Dễ sử dụng, không cần kiến thức lập trình
- **Tích hợp:** Có thể tích hợp với các công cụ khác
- **Báo cáo:** Tạo báo cáo chi tiết và xuất dữ liệu
- **Cộng đồng:** Có cộng đồng người dùng và nhà phát triển lớn

## ⚠️ Lưu ý quan trọng

- **API Keys:** Một số mô-đun yêu cầu API keys từ các dịch vụ bên thứ ba
- **Tốc độ:** Quá trình thu thập có thể mất thời gian tùy thuộc vào số lượng mô-đun
- **Rate Limiting:** Một số API có giới hạn số lượng request
- **Tuân thủ pháp luật:** Chỉ sử dụng cho mục đích hợp pháp
- **Đạo đức:** Tuân thủ các nguyên tắc đạo đức trong OSINT

## 🔗 Liên kết

- **Website chính:** https://www.spiderfoot.net/
- **GitHub:** https://github.com/smicallef/spiderfoot
- **Tài liệu:** https://www.spiderfoot.net/documentation/
- **Hỗ trợ:** https://www.spiderfoot.net/support/

## 📝 Ghi chú

SpiderFoot được phát triển bởi Steve Micallef và là một trong những công cụ OSINT tự động hóa phổ biến nhất. Công cụ này được sử dụng bởi các chuyên gia bảo mật, nhà điều tra, và các tổ chức để thu thập thông tin tình báo.

### Các phiên bản:
- **Community Edition:** Miễn phí, mã nguồn mở
- **HX Edition:** Phiên bản thương mại với tính năng nâng cao

## 🎓 Cài đặt và Sử dụng

### Cài đặt Stable Release:
```bash
wget https://github.com/smicallef/spiderfoot/archive/v4.0.tar.gz
tar zxvf v4.0.tar.gz
cd spiderfoot-4.0
pip3 install -r requirements.txt
python3 ./sf.py -l 127.0.0.1:5001
```

### Cài đặt Development Build:
```bash
git clone https://github.com/smicallef/spiderfoot.git
cd spiderfoot
pip3 install -r requirements.txt
python3 ./sf.py -l 127.0.0.1:5001
```

### Cài đặt qua Docker:
```bash
docker pull spiderfoot/spiderfoot:latest
docker run -it -p 5001:5001 spiderfoot/spiderfoot:latest
```

### Sử dụng cơ bản:
1. Truy cập giao diện web tại http://localhost:5001
2. Tạo một scan mới
3. Nhập target (domain, IP, email, etc.)
4. Chọn các mô-đun cần thiết
5. Chạy scan và xem kết quả

## 🔧 Cấu hình

### API Keys:
Một số mô-đun yêu cầu API keys:
- Shodan API
- VirusTotal API
- Have I Been Pwned API
- Và nhiều API khác

Cấu hình trong file `spiderfoot.cfg` hoặc qua giao diện web.

## 📚 Tài liệu tham khảo

- **Documentation:** https://www.spiderfoot.net/documentation/
- **User Guide:** https://github.com/smicallef/spiderfoot/wiki
- **Modules:** https://www.spiderfoot.net/modules/
- **Tutorials:** https://www.spiderfoot.net/tutorials/

## 🎯 Use Cases

- **Threat Intelligence:** Thu thập thông tin về mối đe dọa
- **Digital Forensics:** Điều tra số
- **Penetration Testing:** Thu thập thông tin trong pentest
- **Due Diligence:** Kiểm tra thông tin doanh nghiệp/cá nhân
- **Brand Monitoring:** Giám sát thương hiệu

