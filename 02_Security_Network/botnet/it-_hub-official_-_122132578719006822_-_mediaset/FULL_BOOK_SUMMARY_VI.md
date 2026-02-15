# Botnets: The Killer Web App - Tóm tắt toàn diện

## 1. Giới thiệu về Botnets
*   **Định nghĩa**: Một botnet bao gồm một máy chủ bot (bộ điều khiển) và nhiều botclient (xác sống/zombie). Nó hoạt động như một công cụ nhân sức mạnh cho tội phạm có tổ chức.
*   **Sự tiến hóa**: Từ các tập lệnh đơn giản ("Hunt the Wumpus") đến các công cụ tài chính tinh vi.
*   **"Ứng dụng Web chết người" (The "Killer Web App")**: Botnet được mô tả như là sự phát triển ứng dụng lớn tiếp theo, hỗ trợ các mô hình kinh doanh tội phạm như thư rác, lừa đảo và tống tiền.

## 2. Kiến trúc kỹ thuật
### Lệnh & Kiểm soát (C&C)
*   **IRC (Internet Relay Chat)**: Phương pháp truyền thống. Dễ bị nghe lén và chiếm quyền kiểm soát.
*   **Dựa trên HTTP/Web**:
    *   **Kết nối & Quên (Connect & Forget)**: Bot ghi lại IP vào máy chủ web.
    *   **Dựa trên tệp (File-Based)**: Bot tải xuống hướng dẫn từ một tệp văn bản.
    *   **Mã hóa URL (URL-Encoded)**: Thông tin được truyền qua các tham số URL.
*   **P2P (Ngang hàng)**: Phi tập trung (Agobot, Phatbot, Sinit). Khó bị đánh sập hơn vì không có máy chủ trung tâm duy nhất.
*   **DNS & Fast Flux**: Sử dụng DNS động (DynDNS) để thay đổi nhanh chóng địa chỉ IP của C&C nhằm tránh bị liệt vào danh sách đen.

### Các vectơ lây lan
*   **Chia sẻ mạng**: Khai thác mật khẩu yếu trên các chia sẻ ADMIN$, C$, IPC$ (NetBIOS).
*   **Quét lỗ hổng**: Nhắm mục tiêu vào MS06-040, LSASS, DCOM, SQL Server.
*   **Mạng P2P**: Tên tệp giả mạo trên Kazaa/Limewire (ví dụ: "Matrix 3_Downloader.exe", "Anna Kournikova.jpg.exe").
*   **Email**: Sâu gửi thư hàng loạt (Mytob) mang theo payload của bot.

## 3. Các gia đình Bot chính
*   **SDBot**: Một trong những gia đình lâu đời nhất. Mã nguồn được phổ biến rộng rãi.
*   **RBot**: Nổi tiếng với việc sử dụng nén/đóng gói (UPX, Morphine) để tránh các chữ ký AV.
*   **Agobot (Gaobot)**: Loại đầu tiên giới thiệu khả năng điều khiển P2P dạng module.
*   **Spybot**: Tập trung vào các tính năng phần mềm gián điệp như ghi lại thao tác bàn phím (keylogging).
*   **Mytob**: Lai giữa sâu gửi thư hàng loạt và bot. Tham gia vào "cuộc chiến mã độc" với sâu Sober.

## 4. Các mô hình kinh doanh tội phạm
*   **DDoS (Từ chối dịch vụ phân tán)**: Làm ngập mục tiêu (SYN flood, UDP flood) để tống tiền hoặc giành lợi thế cạnh tranh.
*   **Spam**: Phân phối thư rác tự động (SpamThru). Tạo thư dựa trên mẫu.
*   **Gian lận nhấp chuột (Click Fraud)**: Bot lén lút nhấp vào các biểu ngữ Google Adsense trên các trang web thuộc sở hữu của kẻ tấn công.
*   **Ransomware**: Mã hóa các tệp của người dùng và đòi tiền chuộc (e-Gold, Western Union).
    *   *Zippo*: Tiền chuộc $300.
    *   *Arhiveus*: Mật khẩu dài 30 ký tự.
    *   *Ransom A*: $10.99.
*   **Lừa đảo & Trộm cắp danh tính**:
    *   **Người ở giữa (Man-in-the-Middle)**: Chặn lưu lượng truy cập SSL trên toàn cầu.
    *   **Rửa tiền (Cashing Out)**: Bán thông tin xác thực cho "Cashers" (hoa hồng 50-70%).

## 5. Các kỹ thuật phát hiện và phân tích
### Phát hiện dựa trên mạng
*   **Sniffers**: Các công cụ như Snort (NIDS), tcpdump, ngrep. Tìm kiếm các chữ ký (ví dụ: Code Red `default.ida`) hoặc lưu lượng IRC trên các cổng không chuẩn.
*   **Phân tích lưu lượng**:
    *   **Netflow**: Thống kê luồng tổng hợp (Nguồn/Đích, Cổng) để phát hiện bất thường về lưu lượng.
    *   **SNMP (Cricket)**: Vẽ đồ thị sử dụng CPU và băng thông cổng chuyển mạch (Switch Port). CPU cao hoặc gai nhọn (spikes) ở luồng ra cho thấy DoS.
*   **Darknets & Honeypots**:
    *   **Darknet**: Giám sát không gian IP không sử dụng (Kính viễn vọng mạng) để tìm bức xạ nền (quét).
    *   **IMS (Cảm biến chuyển động Internet)**: Mạng lưới cảm biến phân tán toàn cầu.

### Phát hiện dựa trên máy chủ & Pháp y
*   **Quy trình pháp y**:
    *   Cách ly/Kiểm dịch máy.
    *   Thu thập Nhật ký sự kiện (Event ID 529 - Đăng nhập thất bại).
    *   Xác định các quy trình đáng ngờ (Sysinternals Process Explorer).
    *   Kiểm tra các khóa Registry Run (`HKLM\...\Run`).
*   **Tripwire**: Quản lý tính toàn vẹn. Sử dụng hàm băm tệp (ảnh chụp nhanh) để phát hiện các thay đổi trái phép đối với các tệp hệ thống.
*   **Tấn công lớp 2**: Giả mạo ARP (Ettercap) và làm tràn bảng CAM. Giảm thiểu bằng cách sử dụng thời gian chờ tĩnh cho ARP/CAM.

## 6. Nghiên cứu điển hình & Pháp lý
*   **Jeanson James Ancheta**: Botmaster đầu tiên bị bỏ tù (5 năm). Điều hành 400.000 bot. Kiếm lời từ việc cài đặt phần mềm quảng cáo ("Clicks4Hire").
*   **DirectRevenue**: Thỏa thuận dàn xếp phần mềm quảng cáo yêu cầu EULA rõ ràng và các tùy chọn gỡ cài đặt.
*   **Phân tách nhật ký (Log Parsing)**: Phân tích các mẫu lây nhiễm "Fan-out" từ nhật ký nội bộ.

## 7. Phòng thủ chiến lược (Phòng thủ theo chiều sâu)
*   **ACLs & Lọc đầu ra (Egress Filtering)**: Chặn cổng ra 25 (SMB) và 135-139/445 để ngăn chặn sự lây lan.
*   **Tạo lại hình ảnh (Reimaging)**: Được ưa chuộng hơn là làm sạch các máy chủ bị xâm nhập.
*   **Giáo dục**: "Bạn không thể tin tưởng mã mà bạn không hoàn toàn tự tạo ra" (Ken Thompson).

---
*Tóm tắt được tạo bởi Antigravity dựa trên 204 hình ảnh tài liệu đã trích xuất.*
