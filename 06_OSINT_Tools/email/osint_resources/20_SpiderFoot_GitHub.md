# SpiderFoot - OSINT Automation Platform (GitHub)

## 📋 Thông tin cơ bản

- **Tên công cụ:** SpiderFoot
- **Tác giả:** smicallef (Steve Micallef)
- **Đường dẫn GitHub:** https://github.com/smicallef/spiderfoot
- **Website:** https://www.spiderfoot.net/
- **Phân loại:** 🆓 Miễn phí (Community Edition) / 💰 Freemium (HX Edition)
- **Loại:** Nền tảng tự động hóa OSINT
- **Version:** 4.0 (Stable)
- **Python:** 3.7+
- **License:** MIT

## 🎯 Chức năng

SpiderFoot là một công cụ tự động hóa tình báo nguồn mở (OSINT). Nó tích hợp với hầu hết mọi nguồn dữ liệu có sẵn và sử dụng nhiều phương pháp phân tích dữ liệu, làm cho dữ liệu đó dễ dàng điều hướng.

### Tính năng chính:
- **Web-based UI hoặc CLI:** Giao diện web hoặc command-line
- **Hơn 200 modules:** Hơn 200 mô-đun OSINT
- **YAML Correlation Engine:** Hệ thống correlation với 37 rules được định nghĩa sẵn
- **Export Formats:** CSV/JSON/GEXF export
- **API Key Management:** Export/import API keys
- **SQLite Backend:** Cơ sở dữ liệu SQLite cho custom querying
- **Highly Configurable:** Có thể cấu hình cao
- **Fully Documented:** Được tài liệu hóa đầy đủ
- **Visualizations:** Hỗ trợ trực quan hóa
- **TOR Integration:** Tích hợp TOR cho dark web searching
- **Docker Support:** Hỗ trợ Docker
- **Tool Integration:** Có thể gọi các công cụ khác như DNSTwist, Whatweb, Nmap, CMSeeK

### Các loại target:
- IP address
- Domain/sub-domain name
- Hostname
- Network subnet (CIDR)
- ASN
- E-mail address
- Phone number
- Username
- Person's name
- Bitcoin address

### Khả năng:
- Host/sub-domain/TLD enumeration/extraction
- Email address, phone number và human name extraction
- Bitcoin và Ethereum address extraction
- Check for susceptibility to sub-domain hijacking
- DNS zone transfers
- Threat intelligence và Blacklist queries
- API integration với SHODAN, HaveIBeenPwned, GreyNoise, AlienVault, SecurityTrails, etc.
- Social media account enumeration
- S3/Azure/Digitalocean bucket enumeration/scraping
- IP geo-location
- Web scraping, web content analysis
- Image, document và binary file meta data analysis
- Dark web searches
- Port scanning và banner grabbing
- Data breach searches
- Và nhiều hơn nữa...

## ✅ Ưu điểm

- **Tự động hóa mạnh mẽ:** Tự động thu thập và phân tích dữ liệu
- **Hơn 200 modules:** Hỗ trợ nhiều nguồn dữ liệu
- **Web Interface:** Giao diện web trực quan
- **Correlation Engine:** Hệ thống correlation thông minh
- **Miễn phí:** Community Edition hoàn toàn miễn phí
- **Open Source:** Mã nguồn mở
- **Docker Support:** Dễ dàng triển khai với Docker
- **Active Development:** Được phát triển tích cực từ 2012

## 🎓 Đối tượng sử dụng

- **Chuyên gia OSINT:** Tự động hóa thu thập thông tin
- **Pentesters:** Reconnaissance phase
- **Threat Hunters:** Threat intelligence gathering
- **Security Analysts:** Phân tích bảo mật
- **Red Team:** Red team exercises

## 📚 Cài đặt và Sử dụng

### Yêu cầu:
- Python 3.7 hoặc cao hơn
- pip3

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

### Sử dụng:
1. Truy cập http://127.0.0.1:5001 trong trình duyệt
2. Tạo scan mới
3. Nhập target
4. Chọn modules
5. Chạy scan và xem kết quả

## 🔗 Liên kết

- **GitHub Repository:** https://github.com/smicallef/spiderfoot
- **Website:** https://www.spiderfoot.net/
- **Documentation:** https://www.spiderfoot.net/documentation
- **Discord:** https://discord.gg/vyvztrG
- **Twitter:** @spiderfoot

## 📝 Ghi chú

SpiderFoot được phát triển bởi Steve Micallef và đã được phát triển tích cực từ năm 2012. Đây là một trong những công cụ OSINT tự động hóa phổ biến nhất.

### SpiderFoot HX (Commercial):
- 100% Cloud-based và được quản lý
- Attack Surface Monitoring với thông báo thay đổi
- Multiple targets per scan
- Multi-user collaboration
- Authenticated và 2FA
- Investigations
- Customer support
- Third party tools pre-installed & configured
- RESTful API
- TOR integration built-in
- Screenshotting
- Bring your own Python SpiderFoot modules
- Feed scan data to Splunk, ElasticSearch và REST endpoints

### Modules:
SpiderFoot có hơn 200 modules, hầu hết không yêu cầu API keys, và nhiều module yêu cầu API keys có free tier. Các modules bao gồm:
- AbstractAPI, Abuse.ch, AbuseIPDB
- Account Finder (500+ websites)
- AdBlock Check, AdGuard DNS
- Ahmia (Tor search)
- AlienVault IP Reputation, AlienVault OTX
- Amazon S3 Bucket Finder
- Archive.org (Wayback Machine)
- Và nhiều modules khác

## 🎯 Use Cases

- **Offensive:** Red team exercise hoặc penetration test
- **Defensive:** Thu thập thông tin về những gì đã bị lộ trên Internet
- **Threat Intelligence:** Thu thập threat intelligence
- **Attack Surface Monitoring:** Giám sát attack surface
- **Digital Forensics:** Điều tra số

## 💡 Tips

- Sử dụng correlation engine để phát hiện patterns
- Export dữ liệu để phân tích sâu hơn
- Cấu hình API keys để có nhiều dữ liệu hơn
- Sử dụng Docker để dễ dàng triển khai
- Tham gia Discord community để được hỗ trợ

## 📚 Tài liệu tham khảo

- **Documentation:** https://www.spiderfoot.net/documentation
- **Asciinema Videos:** https://asciinema.org/~spiderfoot
- **Correlation Rules:** https://github.com/smicallef/spiderfoot/tree/master/correlations
- **Modules Documentation:** Xem trong repository

## 🏆 Đánh giá

SpiderFoot được đánh giá rất cao trong cộng đồng OSINT và là một công cụ không thể thiếu cho bất kỳ ai làm việc trong lĩnh vực OSINT tự động hóa.

## 🌟 Đặc điểm nổi bật

- Hơn 200 modules OSINT
- Correlation engine thông minh
- Giao diện web trực quan
- Được phát triển tích cực từ 2012
- Cộng đồng hỗ trợ lớn
- Docker support

---

**Nguồn:** [GitHub - smicallef/spiderfoot](https://github.com/smicallef/spiderfoot)  
**Website:** https://www.spiderfoot.net/  
**Tác giả:** smicallef (Steve Micallef)  
**Cập nhật:** 2025-01-12

