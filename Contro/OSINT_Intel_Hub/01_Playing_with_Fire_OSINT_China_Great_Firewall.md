# Playing with Fire: OSINT and China's Great Firewall

**Nguồn:** [OSINT Industries](https://www.osint.industries/post/playing-with-fire-osint-and-chinas-great-firewall)  
**Danh mục:** Guides & Information  
**Ngày xuất bản:** Tháng 11/2025

---

## Tổng quan

Great Firewall (GFW) của Trung Quốc là một trong những hệ thống kiểm duyệt internet tinh vi và được thực thi chặt chẽ nhất trên thế giới. Nó ngăn cách Trung Quốc khỏi internet phương Tây, và đằng sau rào cản này, một hệ sinh thái trực tuyến phong phú và độc đáo đang phát triển mạnh mẽ - hoàn toàn xa lạ với những người dùng internet không phải người bản địa.

Đối với bất kỳ ai thực hiện OSINT tại Trung Quốc - quan trọng cho mọi thứ từ hoạt động nhân quyền đến tình báo mối đe dọa mạng đến nghiên cứu học thuật - GFW là một rào cản lớn.

**Hướng dẫn này sẽ dạy bạn mọi thứ bạn cần biết về OSINT và Great Firewall.**

---

## 1. Great Firewall là gì?

Great Firewall (chính thức được gọi là **Dự án Lá chắn Vàng** của Trung Quốc) lần đầu tiên được khởi xướng vào năm **1998**. Nhận ra rằng internet có thể phá vỡ sự thống trị văn hóa, chính phủ Trung Quốc đã bắt đầu một sáng kiến để tách không gian mạng Trung Quốc khỏi phần còn lại của thế giới. Bằng cách đó, họ có thể kiểm duyệt thông tin có sẵn cho người dân Trung Quốc - và ngăn chặn họ truy cập bất kỳ điều gì có hại cho lợi ích của đất nước.

### Thành phần của Great Firewall

Hệ thống GFW bao gồm nhiều lớp kiểm soát để hạn chế hoạt động của người dùng Trung Quốc và giám sát mọi thứ họ làm trực tuyến:

1. **IP Blocking** (Chặn IP)

   - Ngăn chặn truy cập vào các máy chủ không phải Trung Quốc nằm trong danh sách đen

2. **DNS Poisoning** (Đầu độc DNS)

   - Thay đổi phân giải DNS để các yêu cầu đến tên miền bị chặn thất bại
   - Còn được gọi là 'DNS spoofing'

3. **Keyword Filtering** (Lọc từ khóa)

   - Chặn nội dung, tìm kiếm và bài đăng có chứa các từ khóa bị liệt vào danh sách đen

4. **Deep Packet Inspection (DPI)**

   - Kiểm tra nội dung lưu lượng internet
   - Từ chối bất kỳ thứ gì không được coi là chấp nhận được

5. **Manual Content Moderation** (Kiểm duyệt nội dung thủ công)

   - Gỡ bỏ nội dung không được phép bởi người kiểm duyệt (thường trên các nền tảng xã hội như WeChat)

6. **Legal Regulation** (Quy định pháp lý)
   - Cấm các công cụ internet có thể vượt qua GFW (đặc biệt là VPN)

### Đặc điểm động của GFW

- Các lớp của hệ thống thay đổi theo thời gian
- Quản trị viên có thể thêm từ khóa mới vào danh sách lọc
- Đột ngột thắt chặt kiểm soát trong các sự kiện chính trị
- Cố gắng vi phạm GFW từ trong Trung Quốc có thể dẫn đến **phạt tiền, tù giam hoặc tệ hơn**
- Những gì có thể truy cập tuần này có thể bị chặn một phần hoặc hoàn toàn vào tuần sau

---

## 2. Rủi ro khi làm OSINT với Great Firewall

Có **6 rào cản chính** mà mọi nhà điều tra OSINT sẽ gặp phải ở Trung Quốc:

### 2.1. Restricted Access to Foreign Platforms (Hạn chế truy cập vào nền tảng nước ngoài)

**Vấn đề:**

- Hầu hết các nền tảng phương Tây lớn đều bị chặn tại Trung Quốc
- Không có quyền truy cập vào Google, Youtube, X và các sản phẩm của Meta
- Phụ thuộc vào các nền tảng bản địa Trung Quốc như WeChat

**Ảnh hưởng:**

- Lãnh thổ không quen thuộc có thể làm phức tạp việc thu thập dữ liệu
- Một số công cụ và cơ sở dữ liệu OSINT nước ngoài cũng bị chặn

### 2.2. Anonymity Loss (Mất tính ẩn danh)

**Vấn đề:**

- Quy định của Trung Quốc yêu cầu hầu hết các dịch vụ phải được liên kết với danh tính thực được xác minh
- Từ SIM điện thoại di động đến tài khoản nền tảng Trung Quốc
- Tương tự như Đạo luật An toàn Trực tuyến được tăng cường

**Ảnh hưởng:**

- Xóa bỏ khả năng tạo tài khoản giả danh của mọi người
- Ngăn chặn việc tạo **sock puppet accounts** cho công việc OSINT của Trung Quốc

### 2.3. The Language Barrier (Rào cản ngôn ngữ)

**Vấn đề:**

- Là một xã hội khép kín, ngôn ngữ của Trung Quốc cực kỳ đặc thù
- Thuật ngữ tiếng lóng thay đổi nhanh chóng
- Meme và tham chiếu nội bộ có thể khó giải mã cho người không phải bản địa

**Giải pháp:**

- Nhà nghiên cứu cần thông thạo tiếng Quan Thoại
- Hợp tác mạnh mẽ với người nói tiếng bản ngữ
- Kiểm duyệt của GFW sẽ hiểu bối cảnh, vì vậy bạn cũng nên hiểu

### 2.4. Content Censorship (Kiểm duyệt nội dung)

**Vấn đề:**

- Toàn bộ bài đăng, chủ đề và tài khoản đều có thể biến mất theo ý muốn của cơ quan kiểm duyệt
- Quyền truy cập lưu trữ không được đảm bảo
- Dữ liệu bị thiếu là một mối nguy hiểm

**Ảnh hưởng:**

- Kiểm duyệt của Trung Quốc có thể gây ra méo mó
- Khoảng trống trong các câu chuyện
- Mọi người suy nghĩ hai lần và thay đổi những gì họ chọn đăng

### 2.5. Legal Risks (Rủi ro pháp lý)

**Vấn đề:**

- Sử dụng VPN và proxy là **vùng xám pháp lý** trong OSINT của Trung Quốc
- Thỉnh thoảng, Trung Quốc áp dụng lệnh cấm đối với công nghệ né tránh tường lửa
- Quy định khiến việc sử dụng (hoặc thậm chí cung cấp) một số công cụ nhất định có thể bị phạt tiền hoặc thậm chí bị tù

**Ảnh hưởng:**

- Tạo rủi ro cho cả bạn và nguồn thông tin Trung Quốc của bạn
- Cần đảm bảo bạn biết luật

### 2.6. Verification and Source Reliability (Xác minh và độ tin cậy của nguồn)

**Nguyên tắc:**

- Nếu hạn chế đối với diễn ngôn công khai tăng lên, rủi ro tuyên truyền, thông tin sai lệch và tin tức giả cũng tăng lên

**Vấn đề:**

- Các câu chuyện do nhà nước xác nhận được ưu tiên
- Với OSINT ở Trung Quốc, bạn không thể tin vào giá trị bề mặt
- Theo dõi với các nguồn con người (nhân chứng, liên hệ bên trong Trung Quốc) sẽ rủi ro hơn nhiều và ít đáng tin cậy hơn dưới sự giám sát hàng loạt của nhà nước

---

## 3. Các Kỹ Thuật và Giải Pháp Vượt Qua GFW

### 3.1. Circumvention Tools (Công cụ vượt tường lửa)

#### **VPNs**

- Công cụ cổ điển cho OSINT của Trung Quốc
- Cụ thể là những VPN đã được kiểm tra và thấy an toàn để sử dụng tại Trung Quốc
- Một số nhà cung cấp có thể bị chặn và một số bị đưa vào danh sách đen

#### **Proxy Servers**

- Ví dụ: Psiphon, Lantern, v.v.
- Sử dụng nhiều lớp obfuscation phức tạp để trượt qua GFW
- Bảo vệ việc duyệt web của bạn khỏi ánh mắt tò mò của cơ quan kiểm duyệt
- **Ưu điểm:** Miễn phí
- **Nhược điểm:** Chậm hơn VPN

#### **Tor**

- Công cụ có sẵn và hiệu quả cho các nhà điều tra OSINT
- Sử dụng trực tiếp thường bị chặn
- **Tor bridges** và **domain fronting** có thể hoạt động
- Cần phải liên tục điều chỉnh phương pháp tiếp cận của bạn để đánh bại khối

### 3.2. Local Platforms and Domestic Sources (Nền tảng địa phương và nguồn trong nước)

**Vì sao quan trọng:**

- Các nền tảng phương Tây là không thể
- Hầu hết dữ liệu bạn cần cho công việc OSINT sẽ nằm trên các nền tảng bản địa Trung Quốc

**Các nền tảng chính:**

- **WeChat** (aka Weixin) - https://www.wechat.com
- **Weibo** - https://weibo.com
- **Baidu** (công cụ tìm kiếm) - http://www.baidu.com

**Lưu ý:**

- Nhiều nền tảng trong nước này dễ tiếp cận hơn với các nhà nghiên cứu bên ngoài Trung Quốc
- Thường có hạn chế IP

### 3.3. Online Archivers (Bộ lưu trữ trực tuyến)

**Công cụ:**

- **FreeWeibo** (đã ngừng hoạt động)
- Các cộng đồng trực tuyến khác dành riêng cho việc lưu trữ các bài đăng của Trung Quốc vi phạm GFW

**Lợi ích:**

- Ngay cả khi một cái gì đó đã bị "biến mất", kho lưu trữ sẽ giúp bạn xác minh rằng nó thực sự tồn tại

### 3.4. Archive Everything (Lưu trữ mọi thứ)

**Nguyên tắc quan trọng:**

- Tự làm một số lưu trữ
- Nếu bạn tìm thấy bằng chứng trong công việc OSINT của Trung Quốc, **luôn lưu trữ nó**
- Nếu nó biến mất, bạn có thể dựa vào những ảnh chụp nhanh đó để chứng minh nó đã từng tồn tại

### 3.5. Geographic Vantage Points (Điểm quan sát địa lý)

**Lợi thế tốt nhất:**

- Một cộng tác viên Trung Quốc
- Họ có thể xác thực chéo khả năng hiển thị của nội dung
- Cho bạn biết những gì thực sự bị kiểm duyệt và những gì có sẵn cho công chúng Trung Quốc

**Lưu ý:**

- Kiểm duyệt khác nhau từ vùng này sang vùng khác
- Nhiều điểm quan sát giúp bạn nhìn thấy những gì thực sự bị ẩn và từ ai

### 3.6. Cultural Immersion (Hòa nhập văn hóa)

**Khuyến nghị:**

- Làm việc với người nói tiếng Quan Thoại
- Lý tưởng nhất, hợp tác với các nhà điều tra là người Trung Quốc bản địa
- Hoặc ít nhất đã sống ở đó đủ lâu để biết chữ internet

**Tại sao quan trọng:**

- Kiến thức về tiếng lóng địa phương, **algospeak** và meme là cách duy nhất để theo dõi chính xác diễn ngôn
- Dưới sự kiểm duyệt, hầu hết các ý nghĩa sẽ gián tiếp và cần một người bản địa để phân tích

---

## 4. An Toàn: OpSec, Đạo đức và Nhận thức Pháp lý

### 4.1. Nguyên tắc Quan trọng Nhất

> **Ưu tiên an toàn. Không chỉ an toàn của riêng bạn, mà còn của người khác - cả trực tuyến và ngoại tuyến.**

### 4.2. Bảo vệ Bản thân

1. **Luôn sử dụng kênh liên lạc an toàn và riêng tư**

   - Tốt nhất là các kênh được mã hóa

2. **Công cụ vượt tường lửa**

   - Phải luôn an toàn 100%

3. **Thiết bị thay thế**
   - Cân nhắc sử dụng thiết bị thay thế cho công việc OSINT của Trung Quốc
   - Làm cho mọi thứ ít dễ truy tìm hơn

### 4.3. Đánh giá Rủi ro cho Người khác

**Nhóm có rủi ro cao nhất:**

- Người dân bên trong Trung Quốc chia sẻ thông tin với bạn
- Người hỗ trợ bạn vượt qua Great Firewall

**Thực tế:**

- Bắt giữ và phạt tiền xảy ra thường xuyên
- Ngay cả đối với các hành vi vi phạm liên quan đến công dân nước ngoài
- Khi độ nhạy cảm của chủ đề bạn đang điều tra tăng lên, mong đợi nguồn nhân chứng của bạn sẽ tan biến... hoặc trở nên kín miệng hơn nhiều

### 4.4. Nhận thức Pháp lý

**Khuyến nghị:**

- Đọc mọi thứ bạn có thể về các quy định xung quanh an ninh mạng và Great Firewall
- Sử dụng các nguồn cập nhật nhất có thể
- Tình hình pháp lý thay đổi
- Những gì được coi là cho phép có thể thay đổi nhanh chóng

---

## 5. Case Study: Chinese OSINT in Action

### Tiêu đề: "An OSINT Investigator Exposing the Truth About Chinese Fentanyl"

**Trích dẫn:**

> "Julian đã có thể tiết lộ, thông qua nghiên cứu với OSINT Industries, không chỉ bằng chứng về sự liên quan của Trung Quốc... mà còn, với một mức độ chắc chắn nhất định, rằng các tác nhân có tội là thành viên của Đảng Cộng sản Trung Quốc (CCP)..."

**Đọc thêm:** [Case Study chi tiết](https://www.osint.industries/project/case-study-osint-unveils-link-between-silicon-firms-and-global-fentanyl-crisis)

---

## Kết luận

OSINT tại Trung Quốc là một trong những nhiệm vụ OSINT rủi ro nhất trên internet. Tuy nhiên, với các công cụ, kỹ thuật và ý thức phù hợp về an toàn, bạn có thể điều hướng thành công Great Firewall để thu thập thông tin tình báo có giá trị.

**Những điểm chính cần nhớ:**

- Hiểu cấu trúc và hạn chế của GFW
- Sử dụng công cụ vượt tường lửa một cách an toàn và có trách nhiệm
- Làm quen với các nền tảng và công cụ Trung Quốc bản địa
- Luôn ưu tiên an toàn - của bạn và của người khác
- Luôn cập nhật về các quy định pháp lý đang thay đổi
- Lưu trữ mọi thứ bạn tìm thấy vì nó có thể biến mất

**准备好了吗? (Bạn đã sẵn sàng chưa?) 我们走吧! (Chúng ta đi thôi!)**

---

## Tài nguyên bổ sung

- [Stanford - Free Expression vs Social Cohesion](https://cs.stanford.edu/people/eroberts/cs181/projects/2010-11/FreeExpressionVsSocialCohesion/china_policy.html)
- [Bellingcat - China Challenges in OSINT](https://www.bellingcat.com/resources/2023/04/18/china-challenges-open-source-osint-social-media/)
- [The Guardian - Arrests for VPN Use](https://www.theguardian.com/world/2023/oct/09/chinese-programmer-ordered-to-pay-1m-yuan-for-using-virtual-private-network)
- [SCMP - Man Arrested for Selling VPN](https://www.scmp.com/abacus/tech/article/3044407/man-arrested-selling-vpn-hop-great-firewall)
- [NordVPN - VPN for China](https://nordvpn.com/blog/vpn-for-china/)

---

**© OSINT Industries - Intel Hub**
