# Hướng Dẫn Tích Hợp Antigravity Kit

Bộ công cụ này đã được tích hợp đầy đủ các tài nguyên từ kho MCP của bạn, bao gồm:
1.  **Skills**: Kỹ năng lập trình, DevOps, UI/UX, Design Patterns...
2.  **Agents**: Các AI Agent chuyên biệt (Architect, Reviewer, Planner...).
3.  **MCP Servers**: Cấu hình server có sẵn.
4.  **Workflows**: Kho thư viện 1000+ workflow tự động hóa n8n.

## Cách Sử Dụng Cho Dự Án Mới

Mỗi khi bạn khởi tạo một dự án mới và muốn "kích hoạt" sức mạnh Antigravity, hãy làm theo các bước sau:

1.  Mở terminal tại thư mục gốc của dự án mới.
2.  Chạy lệnh sau (thay đường dẫn nếu cần):

    ```powershell
    powershell -ExecutionPolicy Bypass -File "D:\tai-lieu-main\Antigravity_Kit\install_skills.ps1"
    ```

3.  Script sẽ tự động:
    *   Cài đặt toàn bộ **Skills** vào thư mục `.agent/skills`.
    *   Cài đặt toàn bộ **Agents** vào thư mục `.agent/agents`.
    *   Tạo file cấu hình **`mcp_config.json`** tại gốc dự án (hoặc backup file cũ nếu có).
    *   Tạo file hướng dẫn truy cập kho **Workflows** tại `.agent/workflows/ANTIGRAVITY_WORKFLOWS_REF.md`.

## Cập Nhật Tài Nguyên

Nếu bạn có thêm tài nguyên mới vào kho `MCP`, hãy chạy lại script `integrate_resources.ps1` trong thư mục này để cập nhật bộ Kit.
