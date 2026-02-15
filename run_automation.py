import os
import json
import time
import subprocess
from datetime import datetime

# --- Cấu hình (Configuration) ---
AGENT_COMMAND = "claude"  # Lệnh CLI để gọi AI Agent (ví dụ: 'claude', 'llm', 'openai')
# Nếu bạn dùng API, bạn cần thay đổi hàm call_ai_agent bên dưới để gọi API trực tiếp.

WORKING_DIR = os.getcwd()
TASKS_FILE = os.path.join(WORKING_DIR, "state/tasks.json")
RULES_FILE = os.path.join(WORKING_DIR, "context/rules.md")
OBJECTIVE_FILE = os.path.join(WORKING_DIR, "context/objective.md")
LOG_FILE = os.path.join(WORKING_DIR, "automation.log")

def log(message):
    """Ghi nhật ký hoạt động."""
    timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    entry = f"[{timestamp}] {message}"
    print(entry)
    with open(LOG_FILE, "a", encoding="utf-8") as f:
        f.write(entry + "\n")

def load_tasks():
    """Đọc danh sách nhiệm vụ từ file JSON."""
    if not os.path.exists(TASKS_FILE):
        log(f"Lỗi: Không tìm thấy file {TASKS_FILE}")
        return []
    with open(TASKS_FILE, "r", encoding="utf-8") as f:
        return json.load(f)

def get_next_task(tasks):
    """Lấy nhiệm vụ tiếp theo chưa hoàn thành."""
    for task in tasks:
        if not task.get("completed", False):
            return task
    return None

def call_ai_agent(prompt):
    """
    Gọi AI Agent để thực hiện nhiệm vụ.
    Mặc định sử dụng CLI command. Bạn có thể sửa hàm này để gọi API (OpenAI/Anthropic).
    """
    try:
        # Xây dựng câu lệnh CLI
        # Lưu ý: Cấu trúc lệnh phụ thuộc vào công cụ CLI bạn đang dùng.
        # Ở đây giả lập việc gọi 'claude' với prompt.
        cmd = [AGENT_COMMAND, prompt]
        
        log(f"Đang thực thi Agent với nhiệm vụ: {prompt[:50]}...")
        
        # Thực thi lệnh và chờ kết quả
        result = subprocess.run(cmd, capture_output=True, text=True, encoding='utf-8')
        
        if result.returncode == 0:
            log("Agent hoàn thành bước chạy.")
            return result.stdout
        else:
            log(f"Agent gặp lỗi: {result.stderr}")
            return None
    except Exception as e:
        log(f"Lỗi khi gọi Agent: {e}")
        return None

def main():
    log("=== Bắt đầu Vòng lặp Tự động hóa (Auto-Loop) ===")

    while True:
        # 1. Đọc trạng thái hiện tại
        tasks = load_tasks()
        current_task = get_next_task(tasks)

        if not current_task:
            log("Tất cả nhiệm vụ đã hoàn thành! Dừng vòng lặp.")
            break

        # 2. Chuẩn bị ngữ cảnh (Context Inject)
        with open(RULES_FILE, "r", encoding="utf-8") as f:
            rules = f.read()
        with open(OBJECTIVE_FILE, "r", encoding="utf-8") as f:
            objective = f.read()

        # 3. Tạo Prompt cho Agent
        previous_context = "" # Có thể thêm lịch sử các bước trước nếu cần
        
        prompt = f"""
        {rules}

        DỰ ÁN MỤC TIÊU (OBJECTIVE):
        {objective}

        NHIỆM VỤ HIỆN TẠI (CURRENT TASK):
        ID: {current_task['id']}
        Title: {current_task['title']}
        Description: {current_task['description']}

        YÊU CẦU:
        1. Thực hiện nhiệm vụ trên.
        2. Nếu cần viết code, hãy viết vào file tương ứng.
        3. Sau khi hoàn thành, hãy tự động đánh dấu task này là 'completed': true trong file {TASKS_FILE}.
        4. Ghi lại tiến độ vào file progress.txt.
        """

        # 4. Thực thi (Execute)
        response = call_ai_agent(prompt)

        # 5. Nghỉ ngơi (Rate Limit / Safety)
        time.sleep(5) 

if __name__ == "__main__":
    main()
