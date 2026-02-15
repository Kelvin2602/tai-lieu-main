---
name: Mobile Development Workflow
description: Hướng dẫn workflow phát triển ứng dụng di động Flutter theo chuẩn công nghiệp, bao gồm 6 giai đoạn từ phân tích yêu cầu đến triển khai tự động.
---

# Mobile Development Workflow

> [Đã kích hoạt: Mobile Development Workflow - Quy trình phát triển ứng dụng di động Flutter]

Skill này đóng vai trò điều phối toàn bộ vòng đỳ phát triển ứng dụng di động, kết nối các chuyên gia trong hệ thống Skills để xây dựng ứng dụng Flutter chất lượng cao.

---

## 🛠 Quy trình phát triển di động (6 giai đoạn)

### Giai đoạn 1: Brainstorm yêu cầu & tương tác di động
**Kích hoạt**: [01_ProductManager_Brainstorming](.trae/Skills/01_ProductManager_Brainstorming/SKILL.md)

- **Mục tiêu**: Khai thác các điểm đau đặc thù của di động (offline, định vị, push notification)
- **Prompt đề xuất**:
  > "Với vai trò **Product Manager 01**, tôi muốn làm một ứng dụng di động [tên dự án], hãy phân tích nhu cầu cốt lõi trong môi trường di động, đặc biệt chú ý đến trải nghiệm ngườì dùng khi mạng yếu."

---

### Giai đoạn 2: Thiết kế kiến trúc đa nền tảng & UI规范
**Kích hoạt**: [02_Architect_APIDesign](.trae/Skills/02_Architect_APIDesign/SKILL.md) & [02_Designer_FrontendImplementation](.trae/Skills/02_Designer_FrontendImplementation/SKILL.md)

- **Mục tiêu**: Định nghĩa contract frontend-backend, thiết lập design system tương thích iOS/Android
- **Prompt đề xuất**:
  > "Dựa trên yêu cầu từ giai đoạn 01, vui lòng **Kiến trúc sư 02** thiết kế RESTful API; đồng thờì **Chuyên gia thiết kế 02** tham khảo Material 3 và Cupertino guidelines, định nghĩa bộ UI components adaptive cho di động."

---

### Giai đoạn 3: Triển khai code Flutter chất lượng cao
**Kích hoạt**: [03_Mobile_Flutter](.trae/Skills/03_Mobile_Flutter/SKILL.md)

- **Mục tiêu**: Viết code Flutter tuân thủ Clean Architecture, hiệu suất cao
- **Prompt đề xuất**:
  > "Vui lòng kích hoạt **Chuyên gia Flutter 03**. Sử dụng pattern `Flutter Clean Architecture` để triển khai [tên chức năng], yêu cầu business logic được đóng gói bằng BLoC, và tham khảo guide `Flutter Performance Optimization` để đảm bảo list scroll đạt 60FPS."

---

### Giai đoạn 4: Bảo mật di động & bảo vệ dữ liệu nhạy cảm
**Kích hoạt**: [07_Security_Specialist](.trae/Skills/07_Security_Specialist/SKILL.md)

- **Mục tiêu**: Đảm bảo lưu trữ Token, xác thực và tuân thủ GDPR
- **Prompt đề xuất**:
  > "Vui lòng **Chuyên gia bảo mật 07** review flow đăng nhập di động của tôi. Đảm bảo sử dụng `flutter_secure_storage` để lưu trữ thông tin nhạy cảm, và kiểm tra data transmission có tuân thủ GDPR security standards không."

---

### Giai đoạn 5: Testing tự động & mô phỏng thiết bị thật
**Kích hoạt**: [03_Mobile_Flutter](.trae/Skills/03_Mobile_Flutter/SKILL.md) (Module 4)

- **Mục tiêu**: Giảm chi phí regression thông qua unit test, widget test và integration test
- **Prompt đề xuất**:
  > "Vui lòng tham khảo module `Flutter Testing & Quality Assurance` của **Chuyên gia Flutter 03**, viết Mocktail unit test và Widget test cho chức năng [tên chức năng] vừa triển khai, đảm bảo coverage 100% cho core interaction paths."

---

### Giai đoạn 6: Cấu hình engineering & phát hành tự động
**Kích hoạt**: [03_Mobile_Flutter](.trae/Skills/03_Mobile_Flutter/SKILL.md) (Module 5) & [05_DevOps_GitOps](.trae/Skills/05_DevOps_GitOps/SKILL.md)

- **Mục tiêu**: Cấu hình multi-environment Flavors, sử dụng Fastlane để tự động submit
- **Prompt đề xuất**:
  > "Vui lòng **Chuyên gia Flutter 03** giúp tôi cấu hình 3 môi trường Flavors dev/staging/production; đồng thờì **Chuyên gia DevOps 05** hỗ trợ viết GitHub Actions script để tự động build và release lên TestFlight."

---

## 💡 Nâng cao: Chế độ toàn năng di động

Nếu bạn muốn AI tự động điều phối toàn bộ vòng đỳ phát triển di động, có thể khởi động trực tiếp:
[universal-dev-team](.trae/Skills/universal-dev-team/SKILL.md)

**Lệnh vạn năng**:
> "Khởi động **universal-dev-team**. Chúng tôi muốn phát triển một ứng dụng Flutter từ đầu. Vui lòng tuân theo Mobile Development Best Practices Guide, bắt đầu từ phân tích yêu cầu bởi Product Manager, sau đó Kiến trúc sư và Developer hoàn thiện triển khai. Sau mỗi bước hoàn thành vui lòng xác nhận với tôi."

---

## 📝 Bảo trì & Mở rộng

- Thường xuyên tham khảo [Trae_Skills_使用指南.md](./Trae_Skills_使用指南.md) để cập nhật vai trò mới nhất
- Nếu có UI patterns mới trong quá trình phát triển, sử dụng [99_Meta_SkillCreator](.trae/Skills/99_Meta_SkillCreator/SKILL.md) để cố định hóa

---

## 🎯 Sơ đồ luồng công việc

```
┌─────────────────────────────────────────────────────────────────┐
│                    MOBILE DEVELOPMENT WORKFLOW                   │
└─────────────────────────────────────────────────────────────────┘
                                  │
                                  ▼
┌─────────────────────────────────────────────────────────────────┐
│  GIAI ĐOẠN 1: Brainstorm yêu cầu                                │
│  ├── Skill: 01_ProductManager_Brainstorming                     │
│  └── Output: PRD, User Stories, Mobile-specific requirements    │
└─────────────────────────────────────────────────────────────────┘
                                  │
                                  ▼
┌─────────────────────────────────────────────────────────────────┐
│  GIAI ĐOẠN 2: Thiết kế kiến trúc & UI                           │
│  ├── Skill: 02_Architect_APIDesign                              │
│  ├── Skill: 02_Designer_FrontendImplementation                  │
│  └── Output: API Specs, Design System, UI Components            │
└─────────────────────────────────────────────────────────────────┘
                                  │
                                  ▼
┌─────────────────────────────────────────────────────────────────┐
│  GIAI ĐOẠN 3: Triển khai Flutter                                │
│  ├── Skill: 03_Mobile_Flutter                                   │
│  └── Output: Clean Architecture Code, BLoC State Management     │
└─────────────────────────────────────────────────────────────────┘
                                  │
                                  ▼
┌─────────────────────────────────────────────────────────────────┐
│  GIAI ĐOẠN 4: Bảo mật & Compliance                              │
│  ├── Skill: 07_Security_Specialist                              │
│  └── Output: Security Audit, GDPR Compliance Check              │
└─────────────────────────────────────────────────────────────────┘
                                  │
                                  ▼
┌─────────────────────────────────────────────────────────────────┐
│  GIAI ĐOẠN 5: Testing & QA                                      │
│  ├── Skill: 03_Mobile_Flutter (Module 4)                        │
│  └── Output: Unit Tests, Widget Tests, Integration Tests        │
└─────────────────────────────────────────────────────────────────┘
                                  │
                                  ▼
┌─────────────────────────────────────────────────────────────────┐
│  GIAI ĐOẠN 6: CI/CD & Release                                   │
│  ├── Skill: 03_Mobile_Flutter (Module 5)                        │
│  ├── Skill: 05_DevOps_GitOps                                    │
│  └── Output: Multi-Flavor Config, GitHub Actions, Fastlane      │
└─────────────────────────────────────────────────────────────────┘
```

---

## ⚠️ Quy tắc cốt lõi

1. **An toàn là trên hết**: Luôn ưu tiên type safety và null safety
2. **Test Driven Development**: Ưu tiên viết test cho core logic
3. **User Centric**: UI/UX phải được polish và accessible
4. **Clean Code**: Tuân thủ nghiêm ngặt linting rules và separation of concerns
5. **Performance First**: Đảm bảo 60FPS cho animations và list scrolling
