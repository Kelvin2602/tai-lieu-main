# Tổng hợp Lỗ hổng Bảo mật & Kỹ thuật Tấn công Mạng

> **Lưu ý**: Tài liệu này chỉ dành cho mục đích học tập và bảo mật hợp pháp.

---

## 📌 NHÓM 1: INJECTION ATTACKS (TẤN CÔNG TIÊM MÃ)

### SQL Injection
- **Cách hoạt động**: Kẻ tấn công chèn mã SQL độc hại vào input form hoặc URL parameter
- **Mục đích**: Đọc/xóa/sửa dữ liệu database, bypass login, thậm chí RCE
- **Ví dụ**: `' OR '1'='1' --` trong ô login
- **Phòng thủ**: Sử dụng Parameterized Queries / Prepared Statements

### NoSQL Injection
- **Cách hoạt động**: Tương tự SQLi nhưng nhắm vào MongoDB, CouchDB
- **Mục đích**: Bypass auth, trích xuất dữ liệu từ NoSQL databases
- **Phòng thủ**: Validate input, sử dụng $eq thay vì $where

### Command Injection / OS Command Injection / Shell Injection
- **Cách hoạt động**: Tiêm lệnh hệ điều hành qua input không được lọc
- **Mục đích**: RCE (Remote Code Execution) - kiểm soát toàn bộ server
- **Ví dụ**: `; rm -rf /` hoặc `| cat /etc/passwd`
- **Phòng thủ**: Avoid shell functions, use safe APIs, input validation

### LDAP Injection
- **Cách hoạt động**: Tiêm vào câu truy vấn LDAP directory
- **Mục đích**: Bypass authentication, trích xuất thông tin user từ Active Directory
- **Phòng thủ**: Escape LDAP special characters, parameterized queries

### XPath Injection
- **Cách hoạt động**: Tiêm vào truy vấn XML XPath
- **Mục đích**: Đọc dữ liệu XML, bypass authentication
- **Phòng thủ**: Validate input, use parameterized XPath

### XXE (XML External Entity) Injection
- **Cách hoạt động**: Khai thác XML parser để đọc file nội bộ
- **Mục đích**: Đọc `/etc/passwd`, SSRF, DoS attacks
- **Phòng thủ**: Disable external entities, disable DTD

### GraphQL Injection
- **Cách hoạt động**: Khai thác GraphQL queries/mutations
- **Mục đích**: Bypass auth, introspection attacks, DoS qua deep queries
- **Phòng thủ**: Disable introspection in production, query depth limiting

---

## 📌 NHÓM 2: CROSS-SITE ATTACKS

### XSS (Cross-Site Scripting)
- **Cách hoạt động**: Chèn JavaScript độc vào webpage
- **Mục đích**: Đánh cắp cookie, session, keylogging, phishing
- **Loại**: 
  - Stored XSS (lưu trong database)
  - Reflected XSS (qua URL)
  - DOM-based XSS (client-side)
- **Phòng thủ**: Output encoding, CSP headers, input sanitization

### CSRF (Cross-Site Request Forgery)
- **Cách hoạt động**: Lừa user click link thực hiện hành động trên site đã login
- **Mục đích**: Thay đổi password, transfer tiền, xóa account
- **Phòng thủ**: CSRF tokens, SameSite cookies, verify Origin header

### Clickjacking
- **Cách hoạt động**: Ẩn iframe trong suốt, lừa user click
- **Mục đích**: Thực hiện hành động không mong muốn
- **Phòng thủ**: X-Frame-Options header, CSP frame-ancestors

### HTML Injection
- **Cách hoạt động**: Chèn HTML tags vào webpage
- **Mục đích**: Defacement, phishing, data theft
- **Phòng thủ**: Output encoding, input validation

### CSS Injection
- **Cách hoạt động**: Chèn CSS độc hại
- **Mục đích**: Data exfiltration qua CSS selectors, UI redressing
- **Phòng thủ**: Sanitize CSS, CSP

### JavaScript Injection
- **Cách hoạt động**: Chèn JS code vào webpage
- **Mục đích**: Tương tự XSS
- **Phòng thủ**: Output encoding, CSP

---

## 📌 NHÓM 3: FILE & PATH ATTACKS

### Directory Traversal / Path Traversal
- **Cách hoạt động**: Sử dụng `../` để thoát khỏi thư mục gốc
- **Mục đích**: Đọc file nhạy cảm (`/etc/passwd`, config files)
- **Ví dụ**: `../../etc/passwd`
- **Phòng thủ**: Validate file paths, use basename(), chroot jail

### LFI (Local File Inclusion)
- **Cách hoạt động**: Include file nội bộ qua parameter
- **Mục đích**: Đọc source code, config, log poisoning → RCE
- **Phòng thủ**: Disable include functions, whitelist allowed files

### RFI (Remote File Inclusion)
- **Cách hoạt động**: Include file từ server remote
- **Mục đích**: RCE trực tiếp bằng webshell
- **Phòng thủ**: Disable allow_url_include, input validation

---

## 📌 NHÓM 4: AUTHENTICATION & AUTHORIZATION

### Authentication Bypass
- **Cách hoạt động**: Vượt qua login (SQLi, brute force, weak tokens)
- **Mục đích**: Truy cập hệ thống không có quyền
- **Phòng thủ**: MFA, strong password policy, rate limiting, account lockout

### Authorization Bypass / IDOR (Insecure Direct Object References)
- **Cách hoạt động**: Truy cập tài nguyên của user khác bằng thay đổi ID
- **Mục đích**: Đọc/sửa dữ liệu của user khác
- **Ví dụ**: `/user/123` → `/user/124`
- **Phòng thủ**: Authorization checks, use UUID thay vì sequential ID

### Session Hijacking
- **Cách hoạt động**: Đánh cắp session token (XSS, sniffing)
- **Mục đích**: Mạo danh user hợp lệ
- **Phòng thủ**: HTTPS, HttpOnly cookies, Secure flag, session regeneration

### Using Default Credentials
- **Cách hoạt động**: Thử login với admin:admin, root:root
- **Mục đích**: Truy cập hệ thống chưa thay đổi credentials mặc định
- **Phòng thủ**: Force password change on first login, disable default accounts

### Exploiting Weak Authentication
- **Cách hoạt động**: Brute force, credential stuffing, password spraying
- **Mục đích**: Đoán password yếu hoặc tái sử dụng
- **Phòng thủ**: Rate limiting, CAPTCHA, MFA, password policy

---

## 📌 NHÓM 5: SERVER-SIDE ATTACKS

### SSRF (Server-Side Request Forgery)
- **Cách hoạt động**: Lừa server gửi request đến internal resources
- **Mục đích**: Truy cập metadata endpoints (AWS 169.254.169.254), port scan internal
- **Phòng thủ**: Whitelist allowed domains, disable internal access, network segmentation

### Insecure Deserialization
- **Cách hoạt động**: Khai thác quá trình unserialize object
- **Mục đích**: RCE, injection attacks
- **Ngôn ngữ**: Java, PHP, Python, Ruby
- **Phòng thủ**: Avoid deserializing untrusted data, use safe formats (JSON)

### Cache Poisoning
- **Cách hoạt động**: Thêm response độc hại vào cache
- **Mục đích**: XSS scale lớn, serve malware
- **Phòng thủ**: Cache keys validation, Vary header

### HTTP Parameter Pollution (HPP)
- **Cách hoạt động**: Gửi nhiều parameter cùng tên
- **Mục đích**: Bypass validation, WAF evasion
- **Phòng thủ**: Validate expected parameter count, use first/last only

---

## 📌 NHÓM 6: CONFIGURATION ATTACKS

### Insecure CORS Configuration
- **Cách hoạt động**: CORS cho phép origins không tin cậy
- **Mục đích**: Đánh cắp data qua cross-origin requests
- **Phòng thủ**: Restrict allowed origins, validate Origin header, avoid `*`

### Security Misconfiguration
- **Cách hoạt động**: Tận dụng cấu hình sai
- **Mục đích**: Information disclosure, unauthorized access
- **Ví dụ**: Debug mode, directory listing, default pages
- **Phòng thủ**: Security hardening, disable debug mode, remove default files

### Sensitive Data Exposure
- **Cách hoạt động**: Tìm data nhạy cảm không được bảo vệ
- **Mục đích**: Đánh cắp API keys, PII, credentials
- **Ví dụ**: API trong URL, logs, backup files
- **Phòng thủ**: Encryption at rest/transit, proper access control

### Exploiting Outdated Software
- **Cách hoạt động**: Khai thác CVE đã biết
- **Mục đích**: RCE, privilege escalation
- **Công cụ**: ExploitDB, Metasploit
- **Phòng thủ**: Regular patching, vulnerability scanning

---

## 📌 NHÓM 7: CODE INJECTION (NGÔN NGỮ CỤ THỂ)

### PHP Injection
- **Ngữ cảnh**: eval(), include(), require()
- **Mục đích**: RCE trên PHP applications
- **Phòng thủ**: Avoid eval(), validate file paths

### ASP Injection
- **Ngữ cảnh**: Classic ASP pages
- **Mục đích**: RCE trên IIS servers
- **Phòng thủ**: Input validation, parameterized queries

### JSP Injection
- **Ngữ cảnh**: Java Server Pages
- **Mục đích**: RCE trên Java applications
- **Phòng thủ**: Avoid runtime.exec(), use safe APIs

### Python Injection
- **Ngữ cảnh**: eval(), exec(), os.system()
- **Mục đích**: RCE trên Python applications
- **Phòng thủ**: Avoid eval/exec, use ast.literal_eval()

### Ruby Injection
- **Ngữ cảnh**: eval(), system(), backticks
- **Mục đích**: RCE trên Ruby applications
- **Phòng thủ**: Avoid eval, use safe methods

### Perl Injection
- **Ngữ cảnh**: eval(), system(), backticks
- **Mục đích**: RCE trên Perl scripts
- **Phòng thủ**: Avoid eval, use taint mode

### Flash Injection
- **Ngữ cảnh**: SWF files
- **Mục đích**: XSS qua Flash
- **Phòng thủ**: Remove Flash, use HTML5

---

## 📌 NHÓM 8: TOOLS & METHODOLOGY

### Using Web Vulnerability Scanners
- **Công cụ phổ biến**:
  - Burp Suite (Professional/Community)
  - OWASP ZAP (Free)
  - Nikto (CLI)
  - Acunetix (Commercial)
  - Qualys (Cloud)
- **Mục đích**: Tự động phát hiện lỗ hổng
- **Lưu ý**: Cần permission trước khi scan

### Exploiting API Endpoints
- **Cách hoạt động**: Tấn công REST/GraphQL APIs
- **Mục đích**: Bypass auth, data exfiltration, rate limit bypass
- **Phòng thủ**: API authentication, rate limiting, input validation

### Exploiting Caching Mechanisms
- **Cách hoạt động**: Poison cache, cache deception
- **Mục đích**: XSS scale lớn, data leakage
- **Phòng thủ**: Proper cache headers, cache key validation

---

## 📌 NHÓM 9: NETWORK & SOCIAL ATTACKS

### Man-in-the-Middle (MitM)
- **Cách hoạt động**: Chặn traffic giữa client và server
- **Mục đích**: Đánh cắp credentials, inject malware
- **Phương pháp**: ARP spoofing, DNS spoofing, evil twin, SSL stripping
- **Phòng thủ**: HTTPS, HSTS, certificate pinning, VPN

### Phishing Attacks
- **Cách hoạt động**: Gửi email giả mạo để lừa user
- **Mục đích**: Đánh cắp credentials, malware delivery
- **Phòng thủ**: Email filtering, user training, 2FA

### Spear Phishing
- **Cách hoạt động**: Phishing có mục tiêu cụ thể
- **Mục đích**: Tấn công cá nhân/tổ chức cụ thể
- **Phòng thủ**: Security awareness training, email verification

### Whaling
- **Cách hoạt động**: Phishing nhắm vào C-level executives
- **Mục đích**: Đánh cắp thông tin nhạy cảm cấp cao
- **Phòng thủ**: Executive protection, verification procedures

### Social Engineering
- **Cách hoạt động**: Thao túng tâm lý con người
- **Mục đích**: Lộ thông tin nhạy cảm, bypass security
- **Kỹ thuật**: Pretexting, baiting, tailgating, quid pro quo
- **Phòng thủ**: Security awareness training, verification procedures

### Physical Access Attacks
- **Cách hoạt động**: Tiếp cận vật lý thiết bị
- **Mục đích**: Install keylogger, boot từ USB, steal hardware
- **Phòng thủ**: Physical security, disk encryption, BIOS lock

---

## 📌 NHÓM 10: MALWARE

### Using Malware
- **Loại phổ biến**:
  - Ransomware (mã hóa dữ liệu để tống tiền)
  - Trojans (ngụy trang phần mềm hợp lệ)
  - Keyloggers (ghi lại phím gõ)
  - Rootkits (ẩn trong hệ thống)
  - Spyware (theo dõi hoạt động)
- **Mục đích**: Persistence, data theft, ransom
- **Vector**: Email attachments, drive-by download, supply chain
- **Phòng thủ**: Antivirus, EDR, application whitelisting

---

## 🛡️ BẢNG TỔNG HỢP PHÒNG THỦ

| Nhóm tấn công | Biện pháp phòng thủ chính |
|---------------|---------------------------|
| **Injection** | Parameterized queries, input validation, prepared statements |
| **XSS** | Output encoding, CSP headers, input sanitization |
| **CSRF** | CSRF tokens, SameSite cookies |
| **File Attacks** | Whitelist validation, disable file inclusion |
| **Auth Bypass** | MFA, strong password policy, rate limiting |
| **IDOR** | Authorization checks, use UUID thay vì sequential ID |
| **SSRF** | Whitelist allowed domains, disable internal access |
| **Deserialization** | Avoid deserializing untrusted data, use safe formats |
| **CORS** | Restrict allowed origins, validate Origin header |
| **Config** | Security headers, disable debug mode, regular audits |
| **MitM** | HTTPS, HSTS, certificate pinning |
| **Social Engineering** | Security awareness training, verification procedures |
| **Malware** | Antivirus, EDR, application whitelisting |

---

## 🔐 SECURITY HEADERS QUAN TRỌNG

```
Content-Security-Policy: default-src 'self'
X-Frame-Options: DENY
X-Content-Type-Options: nosniff
X-XSS-Protection: 1; mode=block
Strict-Transport-Security: max-age=31536000; includeSubDomains
Referrer-Policy: strict-origin-when-cross-origin
Permissions-Policy: geolocation=(), microphone=(), camera=()
```

---

## 🛠️ CÔNG CỤ BẢO MẬT TỪ GITHUB

### 🔴 SQL Injection Tools

| Công cụ | Mô tả | Link |
|---------|-------|------|
| **sqlmap** | Công cụ tự động phát hiện và khai thác SQL Injection hàng đầu | [github.com/sqlmapproject/sqlmap](https://github.com/sqlmapproject/sqlmap) |
| **SQLi-Advanced-Scanner** | Scanner SQL Injection nâng cao bằng Python | [github.com/exfil0/SQLi-Advanced-Scanner](https://github.com/exfil0/SQLi-Advanced-Scanner) |
| **SQLiScan-Pro** | Scanner SQL Injection bất đồng bộ hiệu suất cao | [github.com/burakcanbalta/SQLiScan-Pro](https://github.com/burakcanbalta/SQLiScan-Pro) |
| **SQLiF** | SQL injection Finder - công cụ phát hiện tự động | [github.com/connorjaydunn/SQLiF](https://github.com/connorjaydunn/SQLiF) |
| **injectbot** | GUI SQL Injection scanner với giao diện web | [github.com/tariqhawis/injectbot](https://github.com/tariqhawis/injectbot) |
| **HBSQLI** | Automated Header Based Blind SQL Injection | [github.com/SAPT01/HBSQLI](https://github.com/SAPT01/HBSQLI) |

### 🟠 XSS (Cross-Site Scripting) Tools

| Công cụ | Mô tả | Link |
|---------|-------|------|
| **XSStrike** | XSS scanner tiên tiến nhất với 4 parsers | [github.com/s0md3v/XSStrike](https://github.com/s0md3v/XSStrike) |
| **DalFox** | XSS scanner mạnh mẽ, tập trung vào automation | [github.com/hahwul/dalfox](https://github.com/hahwul/dalfox) |
| **xssFuzz** | Công cụ phát hiện XSS qua GET requests | [github.com/Asperis-Security/xssFuzz](https://github.com/Asperis-Security/xssFuzz) |
| **xssme** | XSS scanner tự động với parameter discovery | [github.com/ahmedhamdy0x/xssme](https://github.com/ahmedhamdy0x/xssme) |
| **XSS-Checker** | Công cụ validate XSS vulnerabilities | [github.com/truocphan/XSS-Checker](https://github.com/truocphan/XSS-Checker) |

### 🟡 SSRF Tools

| Công cụ | Mô tả | Link |
|---------|-------|------|
| **SSRFmap** | SSRF fuzzer và exploitation tool | [github.com/swisskyrepo/SSRFmap](https://github.com/swisskyrepo/SSRFmap) |
| **SSRF-Scanner** | SSRF scanner toàn diện, hiệu suất cao | [github.com/Dancas93/SSRF-Scanner](https://github.com/Dancas93/SSRF-Scanner) |
| **autossrf** | Smart context-based SSRF scanner | [github.com/Th0h0/autossrf](https://github.com/Th0h0/autossrf) |
| **See-SURF** | Phát hiện SSRF parameters tiềm năng | [github.com/In3tinct/See-SURF](https://github.com/In3tinct/See-SURF) |
| **SSRF-to-RCE-Scanner** | SSRF escalation to RCE | [github.com/NULL200OK/SSRF-to-RCE-Scanner](https://github.com/NULL200OK/SSRF-to-RCE-Scanner) |

### 🟢 CSRF Tools

| Công cụ | Mô tả | Link |
|---------|-------|------|
| **XSRFProbe** | CSRF Audit và Exploitation Toolkit tiên tiến | [github.com/0xInfection/XSRFProbe](https://github.com/0xInfection/XSRFProbe) |
| **Bolt** | CSRF Scanner | [github.com/s0md3v/Bolt](https://github.com/s0md3v/Bolt) |
| **CSRFScanner** | Python CSRF vulnerability scanner | [github.com/C0x41lch0x41/CSRFScanner](https://github.com/C0x41lch0x41/CSRFScanner) |

### 🔵 LFI/RFI/Path Traversal Tools

| Công cụ | Mô tả | Link |
|---------|-------|------|
| **LFImap** | LFI discovery và exploitation tool | [github.com/hansmach1ne/LFImap](https://github.com/hansmach1ne/LFImap) |
| **PayloadsAllTheThings** | Bộ sưu tập payloads cho mọi loại tấn công | [github.com/swisskyrepo/PayloadsAllTheThings](https://github.com/swisskyrepo/PayloadsAllTheThings) |
| **PTScanner** | Path Traversal và LFI vulnerability detector | [github.com/topics/lfi-exploitation](https://github.com/topics/lfi-exploitation) |

### 🟣 XXE Tools

| Công cụ | Mô tả | Link |
|---------|-------|------|
| **XXEinjector** | XXE exploitation tool tự động | [github.com/enjoiz/XXEinjector](https://github.com/enjoiz/XXEinjector) |
| **xxexploiter** | Tool giúp khai thác XXE vulnerabilities | [github.com/luisfontes19/xxexploiter](https://github.com/luisfontes19/xxexploiter) |
| **XXE PyPI Package** | Python package cho XXE security testing | [github.com/Ishanoshada/XXE](https://github.com/Ishanoshada/XXE) |

### 🟤 IDOR & Authorization Tools

| Công cụ | Mô tả | Link |
|---------|-------|------|
| **IDOR-Forge** | IDOR vulnerability detector tiên tiến | [github.com/errorfiathck/IDOR-Forge](https://github.com/errorfiathck/IDOR-Forge) |
| **IDOR-advanced** | Next-Gen IDOR Detection Tool | [github.com/praveenkavi5/IDOR-advanced](https://github.com/praveenkavi5/IDOR-advanced) |
| **lonkero** | Access control verification tool | [github.com/bountyyfi/lonkero](https://github.com/bountyyfi/lonkero) |
| **strix** | AI-powered vulnerability scanner | [github.com/usestrix/strix](https://github.com/usestrix/strix) |

### 🔶 Command Injection / RCE Tools

| Công cụ | Mô tả | Link |
|---------|-------|------|
| **RCE-Scanner** | Remote Command Execution Scanner | [github.com/vijay922/RCE-Scanner](https://github.com/vijay922/RCE-Scanner) |
| **Waymap** | Fast web vulnerability scanner với RCE detection | [github.com/TrixSec/waymap](https://github.com/TrixSec/waymap) |
| **bane** | Python toolkit cho cybersecurity tasks | [github.com/topics/remote-code-execution](https://github.com/topics/remote-code-execution) |

### 🔷 Deserialization Tools

| Công cụ | Mô tả | Link |
|---------|-------|------|
| **Java-Deserialization-Scanner** | Burp Suite plugin cho Java deserialization | [github.com/federicodotta/Java-Deserialization-Scanner](https://github.com/federicodotta/Java-Deserialization-Scanner) |
| **JexBoss** | JBoss và Java Deserialization exploitation tool | [github.com/joaomatosf/jexboss](https://github.com/joaomatosf/jexboss) |
| **blackserial** | Blackbox pentesting Gadget Chain Serializer | [github.com/darkpills/blackserial](https://github.com/darkpills/blackserial) |
| **Insecure-Deserialization** | Resources học về Deserialization | [github.com/f0ur0four/Insecure-Deserialization](https://github.com/f0ur0four/Insecure-Deserialization) |

### 🔶 All-in-One Vulnerability Scanners

| Công cụ | Mô tả | Link |
|---------|-------|------|
| **Nuclei** | ⭐ Fast, customizable vulnerability scanner với YAML templates | [github.com/projectdiscovery/nuclei](https://github.com/projectdiscovery/nuclei) |
| **nuclei-templates** | 8000+ templates cho Nuclei | [github.com/projectdiscovery/nuclei-templates](https://github.com/projectdiscovery/nuclei-templates) |
| **NucleiFuzzer** | Nuclei + Paramspider automation | [github.com/0xKayala/NucleiFuzzer](https://github.com/0xKayala/NucleiFuzzer) |
| **Egyscan** | Multifaceted web vulnerability scanner | [github.com/dragonked2/Egyscan](https://github.com/dragonked2/Egyscan) |
| **CPVST** | Cyber Prince Vulnerability Scanner Tool | [github.com/CyberPrince-hub/cpvst](https://github.com/CyberPrince-hub/cpvst) |
| **Gsec** | Web Security Scanner với API testing | [github.com/gotr00t0day/Gsec](https://github.com/gotr00t0day/Gsec) |
| **TerminatorZ** | Web security tool cho CVEs | [github.com/blackhatethicalhacking/TerminatorZ](https://github.com/blackhatethicalhacking/TerminatorZ) |

### 🔶 Penetration Testing Frameworks

| Công cụ | Mô tả | Link |
|---------|-------|------|
| **PTF (Penetration Testers Framework)** | Framework cài đặt pentest tools | [github.com/trustedsec/ptf](https://github.com/trustedsec/ptf) |
| **SET (Social-Engineer Toolkit)** | Framework cho social engineering attacks | [github.com/trustedsec/social-engineer-toolkit](https://github.com/trustedsec/social-engineer-toolkit) |
| **Pegasus-Suite** | All-in-one cybersecurity framework | [github.com/sobri3195/-Pegasus-Suite](https://github.com/sobri3195/-Pegasus-Suite) |
| **hunter-kit** | Comprehensive security toolkit với UI | [github.com/hunters-org/hunter-kit](https://github.com/hunters-org/hunter-kit) |
| **VAPT Toolkit** | VA/PT environment với 50+ tools | [github.com/sec0ps/va-pt](https://github.com/sec0ps/va-pt) |

### 🔶 API Security Tools

| Công cụ | Mô tả | Link |
|---------|-------|------|
| **apisec** | API Security Testing Tool (REST, SOAP, GraphQL) | [github.com/vkvbit/apisec](https://github.com/vkvbit/apisec) |
| **awesome-api-security** | Bộ sưu tập API Security tools | [github.com/arainho/awesome-api-security](https://github.com/arainho/awesome-api-security) |
| **awesome-graphql-security** | GraphQL Security resources | [github.com/Escape-Technologies/awesome-graphql-security](https://github.com/Escape-Technologies/awesome-graphql-security) |
| **api-firewall** | Fast API firewall cho OpenAPI/GraphQL | [github.com/wallarm/api-firewall](https://github.com/wallarm/api-firewall) |
| **fencer** | Automated API security testing | [github.com/abunuwas/fencer](https://github.com/abunuwas/fencer) |

### 🔶 Reconnaissance & Bug Bounty Tools

| Công cụ | Mô tả | Link |
|---------|-------|------|
| **reconftw** | Automated recon tool | [github.com/six2dez/reconftw](https://github.com/six2dez/reconftw) |
| **Subdominator** | Passive subdomain enumeration | [github.com/RevoltSecurities/Subdominator](https://github.com/RevoltSecurities/Subdominator) |
| **Sudomy** | Subdomain enumeration tool | [github.com/screetsec/Sudomy](https://github.com/screetsec/Sudomy) |
| **god-eye** | AI-powered subdomain enumeration | [github.com/Vyntral/god-eye](https://github.com/Vyntral/god-eye) |
| **awesome-bugbounty-tools** | Curated list of bug bounty tools | [github.com/vavkamil/awesome-bugbounty-tools](https://github.com/vavkamil/awesome-bugbounty-tools) |
| **WebHackersWeapons** | Collection of cool hacking tools | [github.com/hahwul/WebHackersWeapons](https://github.com/hahwul/WebHackersWeapons) |

### 🔶 Malware Analysis & Reverse Engineering

| Công cụ | Mô tả | Link |
|---------|-------|------|
| **Ghidra** | NSA's reverse engineering framework | [github.com/NationalSecurityAgency/ghidra](https://github.com/NationalSecurityAgency/ghidra) |
| **Awesome-Malware-and-Reverse-Engineering** | Resources cho malware analysis | [github.com/CyberSecurityUP/Awesome-Malware-and-Reverse-Engineering](https://github.com/CyberSecurityUP/Awesome-Malware-and-Reverse-Engineering) |
| **awesome-malware-analysis** | Curated list of malware analysis tools | [github.com/awesomelistsio/awesome-malware-analysis](https://github.com/awesomelistsio/awesome-malware-analysis) |
| **Malware-Analysis** | Curated list of malware analysis resources | [github.com/kh4sh3i/Malware-Analysis](https://github.com/kh4sh3i/Malware-Analysis) |

### 🔶 Burp Suite Extensions

| Công cụ | Mô tả | Link |
|---------|-------|------|
| **awesome-burp-extensions** | Curated list of Burp extensions | [github.com/snoopysecurity/awesome-burp-extensions](https://github.com/snoopysecurity/awesome-burp-extensions) |

### 🔶 AI-Powered Security Tools

| Công cụ | Mô tả | Link |
|---------|-------|------|
| **HexStrike AI MCP Agents** | MCP server với 150+ cybersecurity tools | [github.com/0x4m4/hexstrike-ai](https://github.com/0x4m4/hexstrike-ai) |
| **AI-Vuln-Scanner** | AI-powered web vulnerability scanner | [github.com/4xyy/AI-Vuln-Scanner](https://github.com/4xyy/AI-Vuln-Scanner) |
| **cortexai** | AI-powered security analysis | [github.com/theelderemo/cortexai](https://github.com/theelderemo/cortexai) |

### 🔶 Awesome Collections

| Công cụ | Mô tả | Link |
|---------|-------|------|
| **awesome-pentest** | Collection of penetration testing resources | [github.com/enaqx/awesome-pentest](https://github.com/enaqx/awesome-pentest) |
| **PentestTools** | Awesome Pentest Tools Collection | [github.com/arch3rPro/PentestTools](https://github.com/arch3rPro/PentestTools) |
| **awesome-security-research** | Curated list of security research resources | [github.com/g3rzi/awesome-security-research](https://github.com/g3rzi/awesome-security-research) |

---

## 📚 TÀI LIỆU THAM KHẢO

- [OWASP Top 10](https://owasp.org/www-project-top-ten/)
- [OWASP Testing Guide](https://owasp.org/www-project-web-security-testing-guide/)
- [PortSwigger Web Security Academy](https://portswigger.net/web-security)
- [HackerOne Vulnerability Disclosure Program](https://hackerone.com/)
- [CVE Details](https://www.cvedetails.com/)

---

## ⚠️ LƯU Ý QUAN TRỌNG

Kiến thức này chỉ được sử dụng hợp pháp cho:
- ✅ Penetration testing với **sự đồng ý bằng văn bản**
- ✅ Bug bounty programs
- ✅ Nghiên cứu bảo mật học thuật
- ✅ Bảo vệ hệ thống của chính bạn
- ❌ **Tuyệt đối KHÔNG** sử dụng để tấn công hệ thống không có sự cho phép

**Vi phạm pháp luật về an ninh mạng có thể dẫn đến hình phạt nghiêm khắc theo quy định pháp luật.**

---

*Tài liệu được tổng hợp vào năm 2026*
