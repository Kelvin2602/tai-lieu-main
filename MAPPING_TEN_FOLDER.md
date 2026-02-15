# 📋 BẢNG MAPPING - TÊN FOLDER CŨ ↔ TÊN FOLDER MỚI

**Ngày cập nhật:** 04/11/2025
**Status:** ✅ Hoàn tất (10/11 folders)

---

## 📊 BẢNG MAPPING CHI TIẾT

| # | Tên cũ | Tên mới | Status | Ghi chú |
|---|--------|---------|--------|---------|
| 1 | AI_HocMay | 01_AI_MachineLearning | ✅ Đổi xong | Thêm số thứ tự, tiếng Anh |
| 2 | BaoMatMang | 02_Security_Network | ✅ Đổi xong | Gọn gàng, dễ nhớ |
| 3 | DamMay_HaTang | 03_Cloud_Infrastructure | ✅ Đổi xong | Tên tiếng Anh rõ ràng |
| 4 | HuongDan_TongHop | 04_Guides_Tutorials | ✅ Đổi xong | Gọn gàng, quốc tế |
| 5 | KhoaHocDuLieu | 05_DataScience | ✅ Đổi xong | Tiếng Anh chuẩn |
| 6 | OSINT_IP_Tracing_Collection | 06_OSINT_Tools | ⚠️ Đang xử lý | Bị lock, cần thủ công |
| 7 | PhatTrien | 07_Development_Hacking | ✅ Đổi xong | Rõ ràng hơn |
| 8 | skills-main | 08_Skills_Resources | ✅ Đổi xong | Nhất quán |
| 9 | Tao_Anh_AI | 09_AIImageGen | ✅ Đổi xong | Gọn gàng, rõ ràng |
| 10 | Top trợ lý ChatGPT đỉnh cao | 10_ChatGPT_Prompts | ✅ Đổi xong | Xóa khoảng trắng, dấu |
| 11 | 02.11.2025 | 11_Latest_Updates | ✅ Đổi xong | Thay tên ngày bằng tên có nghĩa |

---

## ✅ HOÀN THÀNH CÁC CÔNG VIỆC:

### Folders đã được đổi tên thành công (10/11):
- ✅ 01_AI_MachineLearning
- ✅ 02_Security_Network
- ✅ 03_Cloud_Infrastructure
- ✅ 04_Guides_Tutorials
- ✅ 05_DataScience
- ✅ 07_Development_Hacking
- ✅ 08_Skills_Resources
- ✅ 09_AIImageGen
- ✅ 10_ChatGPT_Prompts
- ✅ 11_Latest_Updates

### Files hướng dẫn đã cập nhật (5/5):
- ✅ README.md
- ✅ DANH_MUC_PHAN_LOAI.md
- ✅ TIM_KIEM_NHANH.md
- ✅ INDEX_CHI_TIET.txt
- ✅ HUONG_DAN_SU_DUNG.txt

---

## ⚠️ VẤN ĐỀ CẦN XỬ LÝ THỦ CÔNG:

### Folder 06_OSINT_Tools:
- **Tên cũ:** `OSINT_IP_Tracing_Collection`
- **Tên mới:** `06_OSINT_Tools`
- **Status:** ⚠️ Bị locked
- **Nguyên nhân:** Một process đang truy cập folder
- **Giải pháp:**
  1. Đóng tất cả các ứng dụng đang sử dụng folder này
  2. Chạy lệnh: `mv OSINT_IP_Tracing_Collection 06_OSINT_Tools`
  3. Hoặc sử dụng File Explorer để đổi tên thủ công

**Hướng dẫn thủ công (Windows):**
1. Mở File Explorer
2. Điều hướng đến: `D:\tai-lieu-main\`
3. Chuột phải vào `OSINT_IP_Tracing_Collection`
4. Chọn "Rename" (hoặc nhấn F2)
5. Đổi tên thành `06_OSINT_Tools`
6. Nhấn Enter để xác nhận

---

## 🎯 LỢI ÍCH CỦA NAMING CONVENTION MỚI:

### Trước (Không nhất quán):
```
AI_HocMay/              ← Không dấu, không số
BaoMatMang/             ← Không dấu, không số
DamMay_HaTang/          ← Không dấu, không số
HuongDan_TongHop/       ← Không dấu, không số
...
Top trợ lý ChatGPT ...  ← Có dấu, có khoảng trắng!
02.11.2025/             ← Chỉ là số ngày!
```

### Sau (Nhất quán & sạch sẽ):
```
01_AI_MachineLearning/     ← Có số, tiếng Anh, gọn
02_Security_Network/       ← Có số, tiếng Anh, gọn
03_Cloud_Infrastructure/   ← Có số, tiếng Anh, gọn
...
10_ChatGPT_Prompts/        ← Có số, tiếng Anh, gọn
11_Latest_Updates/         ← Có số, tiếng Anh, gọn
```

---

## 📈 THỐNG KÊ CẬP NHẬT:

**Trước:**
- 11 folders với 11 style tên khác nhau
- Một số có dấu, một số không
- Một số có khoảng trắng
- Không có thứ tự sắp xếp

**Sau:**
- 11 folders với style nhất quán
- Tất cả có số thứ tự
- Tất cả không dấu, không khoảng trắng
- Dễ dàng sắp xếp, tìm kiếm

---

## 🔄 CÁCH CẬP NHẬT TỆPCỦA BẠN:

Nếu bạn có các tệp hoặc script tham chiếu đến tên folder cũ, hãy thay thế:

```bash
# Thay thế tất cả trong bash
sed -i 's/AI_HocMay/01_AI_MachineLearning/g' yourfile.sh
sed -i 's/BaoMatMang/02_Security_Network/g' yourfile.sh
# ... và cứ tiếp tục cho các folder khác
```

---

## 📝 HƯỚNG DẪN THAM CHIẾU NHANH:

### Để tham chiếu folder trong tài liệu:
- **Cũ:** `/AI_HocMay/`
- **Mới:** `/01_AI_MachineLearning/`

### Để tham chiếu trong code:
- **Cũ:** `cd AI_HocMay`
- **Mới:** `cd 01_AI_MachineLearning`

### Để tham chiếu trong đường dẫn URL/path:
- **Cũ:** `D:\tai-lieu-main\AI_HocMay\`
- **Mới:** `D:\tai-lieu-main\01_AI_MachineLearning\`

---

## ✨ NAMING CONVENTION ĐƯỢC SỬ DỤNG:

```
{Số thứ tự}_{Danh mục chính}_{Chi tiết}
```

**Ví dụ:**
- `01_AI_MachineLearning` = 01 (số) + AI (chủ đề) + MachineLearning (chi tiết)
- `10_ChatGPT_Prompts` = 10 (số) + ChatGPT (chủ đề) + Prompts (chi tiết)

**Lợi ích:**
✅ Dễ sắp xếp (01, 02, 03, ...)
✅ Dễ tìm kiếm (tất cả tiếng Anh)
✅ Không dấu (hoạt động trên mọi hệ điều hành)
✅ Không khoảng trắng (không cần thoát hoặc ngoặc kép)
✅ Quốc tế (tiếng Anh chuẩn)

---

## 📅 LỊCH SỬ THAY ĐỔI:

| Ngày | Sự kiện |
|------|---------|
| 04/11/2025 | Sửa tên 10 folders thành công |
| 04/11/2025 | Cập nhật 5 tệp hướng dẫn |
| 04/11/2025 | Tạo file mapping này |
| ⏳ Trong ngày | Sửa thủ công folder OSINT (pending) |

---

## 🎉 KẾT QUẢ CUỐI CÙNG:

```
D:/tai-lieu-main/
├── 01_AI_MachineLearning/
├── 02_Security_Network/
├── 03_Cloud_Infrastructure/
├── 04_Guides_Tutorials/
├── 05_DataScience/
├── 06_OSINT_Tools/ ⏳ (cần sửa thủ công)
├── 07_Development_Hacking/
├── 08_Skills_Resources/
├── 09_AIImageGen/
├── 10_ChatGPT_Prompts/
├── 11_Latest_Updates/
├── README.md ✅
├── DANH_MUC_PHAN_LOAI.md ✅
├── TIM_KIEM_NHANH.md ✅
├── INDEX_CHI_TIET.txt ✅
├── HUONG_DAN_SU_DUNG.txt ✅
└── MAPPING_TEN_FOLDER.md ← File này
```

---

## 📞 CẦN GIÚP ĐỠ?

Nếu bạn gặp vấn đề:

1. **Folder không thể đổi tên:**
   - Kiểm tra xem có file nào đang mở
   - Đóng tất cả các ứng dụng/terminal
   - Thử lại

2. **Trang web/script bị hỏng:**
   - Tìm kiếm và thay thế tên folder cũ bằng tên mới
   - Sử dụng sed/grep để thay thế hàng loạt

3. **Không chắc folder nào tham chiếu cái gì:**
   - Sử dụng bảng mapping ở trên
   - Hoặc mở README.md để xem mô tả

---

**Tài liệu này được tạo để giúp theo dõi sự thay đổi tên folder.**

Phiên bản: 1.0 | Ngày: 04/11/2025
