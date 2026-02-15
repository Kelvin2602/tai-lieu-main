# Universal Auto-Loop Agent Framework

Đây là bộ khung (framework) giúp bạn tạo ra các Agent tự động hóa cho mọi lĩnh vực, lấy cảm hứng từ dự án `auto-coding-agent-demo`.

## Cấu Trúc
- **`run_automation.py`**: Script Python chính để chạy vòng lặp tự động.
- **`state/tasks.json`**: Danh sách các nhiệm vụ cần thực hiện. Agent sẽ đọc và đánh dấu hoàn thành tại đây.
- **`context/rules.md`**: "Luật chơi" cho Agent (System Prompt).
- **`context/objective.md`**: Mô tả dự án bạn muốn xây dựng.

## Hướng Dẫn Sử Dụng

1. **Cấu Hình Mục Tiêu**:
   - Mở `context/objective.md` và điền thông tin dự án của bạn (ví dụ: "Viết một tool quản lý file bằng Python").
   - Mở `state/tasks.json` và liệt kê các bước cần làm.

2. **Cấu Hình Agent (QUAN TRỌNG)**:
   - Mở file `run_automation.py`.
   - Tìm biến `AGENT_COMMAND = "claude"`.
   - Bạn cần thay đổi lệnh này thành công cụ AI CLI mà bạn đang dùng (ví dụ: `llm`, `sgpt`, hoặc script riêng gọi OpenAI API).
   - *Lưu ý*: Nếu bạn dùng Antigravity hoặc Gemini, bạn có thể cần viết một hàm wrapper nhỏ để gọi API.

3. **Chạy Vòng Lặp**:
   - Mở terminal tại thư mục này.
   - Chạy lệnh: `python run_automation.py`
   - Script sẽ bắt đầu đọc task đầu tiên và gọi Agent thực thi.

## Mở Rộng
Bạn có thể tùy chỉnh logic trong `run_automation.py` để:
- Tự động git commit sau mỗi task.
- Gửi thông báo Telegram khi hoàn thành.
- Kiểm tra lỗi cú pháp (Syntax Check) trước khi đánh dấu hoàn thành.
