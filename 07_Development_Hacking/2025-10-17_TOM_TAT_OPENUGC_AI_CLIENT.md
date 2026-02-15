# Một người! 39 giờ – xây dựng AI Client (hand-made)

- Tiêu đề gốc: 一个人！爆肝39小时！打造AI客户端！（手搓版）
- Tác giả: 为Ai痴狂
- Thời gian đăng: 2025年10月17日 06:55
- Link gốc: https://mp.weixin.qq.com/s/TyqBeFoUofR7jojf_8fRBw
- Link trải nghiệm nội bộ: https://test.openugc.com

## Tóm tắt nội dung

Tác giả từng phát triển một AI client thuần Web tên OPENUGC. Sau quá trình sử dụng, dự án bộc lộ các vấn đề: kiến trúc chưa rõ ràng, tổ chức mã nguồn lộn xộn, khó bảo trì và mở rộng. Vì vậy, tác giả quyết định tái cấu trúc toàn diện và hoàn thành phiên bản mới sau 39 giờ làm việc liên tục.

Phiên bản mới hướng tới:

- Nhẹ, đẹp, dễ dùng, giàu tùy biến
- Trình duyệt mở là dùng, không cần cài đặt hay đăng nhập
- Tích hợp sẵn nhiều API model để dùng thử
- Ưu tiên quyền riêng tư, xử lý dữ liệu hoàn toàn phía client (IndexedDB)
- Hỗ trợ môi trường offline/nội bộ
- Luồng hội thoại đa chủ đề chạy song song, có thể chuyển chủ đề khi model đang sinh phản hồi

Tư duy phát triển: chuyển từ cách gọi tool dựa trên prompt sang native tool calling; “AI là trợ giúp, lập trình là chính”; tham khảo UI/UX và mô-đun của nhiều AI client tốt nhưng vẫn giữ đặc trưng và kiểm soát toàn bộ code.

## Điểm nổi bật

- Zero-setup, thuần Web:
  - Mở bằng trình duyệt, không cần plugin hay phần mềm
  - Không yêu cầu đăng nhập
  - Tích hợp sẵn DeepSeek, Qwen, GLM… để trải nghiệm miễn phí
  - Cho phép tùy chỉnh thêm các model khác
- Quyền riêng tư:
  - Lưu dữ liệu cục bộ bằng IndexedDB (Dexie)
  - Xử lý hoàn toàn trên trình duyệt người dùng
  - Hỗ trợ dùng offline/nội bộ
- Tính năng mạnh:
  - Tạo vô hạn AI trợ lý, mỗi trợ lý có cấu hình riêng (prompt template, chọn model, tham số, giới hạn ngữ cảnh…)
  - Quản lý vô hạn chủ đề hội thoại song song
  - Hỗ trợ chạy nền: chuyển chủ đề khi model đang phản hồi
- Tích hợp MCP (Model Context Protocol):
  - Kết nối dịch vụ MCP dạng SSE/StreamableHttp
  - Tự nhận diện tool khả dụng và gọi đa tool song song thông minh
  - Xử lý phản hồi dạng stream theo thời gian thực
- Triết lý phát triển:
  - Tham khảo nhiều client tốt (UI/UX, luồng tương tác, mô-đun)
  - Vibe Coding: dùng AI như “hỗ trợ lái” – hữu ích nhưng không phụ thuộc hoàn toàn
  - Toàn bộ code tự viết, không dùng plugin AI để giữ quyền kiểm soát

## Tech stack

- Vite (build)
- React (UI)
- Ant Design (UI layout, component phổ biến)
- Ant Design X (UI chat: danh sách hội thoại, bong bóng tin nhắn…)
- @ai-sdk/core (giao tiếp LLM và tool calling)
- @modelcontextprotocol/sdk (giao tiếp MCP)
- Dexie (wrapper IndexedDB cho lưu trữ cục bộ)
- react-markdown (render Markdown)
- Zustand (quản lý state)

## Các mục nội dung chính trong bài (heading)

- 📖 项目背景
- ✨ 核心亮点
- 🌐 零门槛使用
- 🔒 隐私至上
- 💡 强大功能
- 🚀 MCP服务集成
- 🛠️ 技术栈选型
- 💻 开发设计与理念
- 🌹 加入内测

## Hình ảnh (nhúng từ bài gốc)

> Lưu ý: ảnh WeChat có thể yêu cầu mở trong trình duyệt/WeChat để hiển thị đầy đủ.

- Ảnh cover (OG):

  ![Cover](https://mmbiz.qpic.cn/mmbiz_jpg/KvbrMXnqJ20T1nIyIpyZPxh6nG7dFrBuiaabgOAoST8MSIja69EibNic7f4icBxyO1GickLr9Qkq8oS5EKaRw9dEicvA/0?wx_fmt=jpeg)
- Ảnh nội dung 1:

  ![Image 1](https://mmbiz.qpic.cn/mmbiz_png/KvbrMXnqJ20T1nIyIpyZPxh6nG7dFrBuas6Bgp0IXl5gqgVonu3Jw3vtXLmaBGiavqGn4qzgmy6WxvMxKneR5KA/640?wx_fmt=png&from=appmsg#imgIndex=0)
- Ảnh nội dung 2:

  ![Image 2](https://mmbiz.qpic.cn/mmbiz_png/KvbrMXnqJ20T1nIyIpyZPxh6nG7dFrBuOncicBxnJUIz2yKPjKuSjxx6hN2moDGhuN8pY07xvyFEdicHw8eovKaw/640?wx_fmt=png&from=appmsg#imgIndex=1)
- Ảnh nội dung 3:

  ![Image 3](https://mmbiz.qpic.cn/mmbiz_png/KvbrMXnqJ20T1nIyIpyZPxh6nG7dFrBu8eWib2iaE0PRqKdUiaj7mzgRbO7LgCibR13n0Qia4CavnN0Kgx4lRaBWvVw/640?wx_fmt=png&from=appmsg#imgIndex=2)

## Trích đoạn tiêu biểu (ngắn)

- “AI技术发展太快了，所以痴狂哥这次全部采用了新的技术方案，抛弃了就版本的提示词版工具调用逻辑，全部采用原生工具调用实现。”
- “这种"以我为主，AI为辅"的开发模式，让痴狂哥在保证效率的同时，依然能享受编程的原始快乐。”
- “👉 电脑浏览器打开即可体验：https://test.openugc.com”

## Phân loại đề xuất

- Thư mục: 07_Development_Hacking
- Lý do: Bài viết nhấn mạnh kiến trúc, tái cấu trúc, tool calling nguyên sinh, và tích hợp MCP – phù hợp nhóm nội dung phát triển/kỹ thuật.

---

Ghi chú kỹ thuật: Bài gốc được truy xuất qua trình duyệt tự động, ảnh được nhúng bằng URL gốc; nếu cần dùng ngoại tuyến, có thể tải ảnh về thư mục cục bộ và cập nhật đường dẫn ảnh.
