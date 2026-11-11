# BÀI LÀM – HACKATHON 02

- **Mã đề:** 05
- **Họ tên:Nguyễn Xuân Cường**
- **Lớp:CNTT1**
- **Link repository:**
- **Hệ điều hành (Windows/macOS):Windows**

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
1. pwd
2. Get-ChildItem -Force
3. mv .\quy_dinh_thue.txt .\docs
4. mkdir .\backup
5. cp .\data\don_thue_thang_5.xlsx .\backup
6. rm .\temp_505.tmp
7. cd .\logs
   Get-ChildItem
   cd ..
```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text
 Directory: C:\Users\LaptopK1\Downloads\starter-kit (3)\starter-kit\thue-do-cam-trai-website


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        11/11/2026   7:44 AM                backup
d-----        11/11/2026   7:36 AM                data
d-----        11/11/2026   7:42 AM                docs
d-----        11/11/2026   7:34 AM                evidence
d-----        11/11/2026   7:36 AM                logs
d-----        11/11/2026   7:32 AM                web
------        03/11/2026   7:07 AM             72 .env
-a----        11/11/2026   7:48 AM           2559 bai_lam.md


    Directory: C:\Users\LaptopK1\Downloads\starter-kit (3)\starter-kit\thue-do-cam-trai-website\backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        03/11/2026   7:07 AM           6132 don_thue_thang_5.xlsx


    Directory: C:\Users\LaptopK1\Downloads\starter-kit (3)\starter-kit\thue-do-cam-trai-website\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        03/11/2026   7:07 AM           6132 don_thue_thang_5.xlsx


    Directory: C:\Users\LaptopK1\Downloads\starter-kit (3)\starter-kit\thue-do-cam-trai-website\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        03/11/2026   7:07 AM            159 quy_dinh_thue.txt


    Directory: C:\Users\LaptopK1\Downloads\starter-kit (3)\starter-kit\thue-do-cam-trai-website\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        03/11/2026   7:07 AM            934 rental.log


    Directory: C:\Users\LaptopK1\Downloads\starter-kit (3)\starter-kit\thue-do-cam-trai-website\web


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        11/11/2026   7:32 AM                images
------        03/11/2026   7:07 AM            582 app.js
------        03/11/2026   7:07 AM            534 index.html
------        03/11/2026   7:07 AM            460 style.css


    Directory: C:\Users\LaptopK1\Downloads\starter-kit (3)\starter-kit\thue-do-cam-trai-website\web\images


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
------        03/11/2026   7:07 AM           3090 logo-campgo.png


```

## 4.3. Lọc log truy cập website

### a) Lệnh lọc các dòng status=500

```shell
get-Content .\logs\rental.log | Select-String "status=500" > .\logs\loi_500.txt

```

### 2 dòng đầu tiên trong logs/loi_500.txt

```text
2026-05-28 08:17:12 POST /api/kho-do status=500
2026-05-28 08:20:23 POST /api/thue-do status=500

```

### b) Lệnh đếm số dòng status=404 và kết quả

```shell
Get-Content .\logs\rental.log | Select-String "status=404" | Measure-Object -Line

```

```text
Lines Words Characters Property
----- ----- ---------- --------
    4

```

## 4.4. Chạy script tong_hop (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
.\tong_hop.ps1

```

### Nội dung file logs/tong_hop.txt

```text
=== BAO CAO SU CO WEBSITE ===

2026-05-28 08:13:01 GET /combo-cu status=404
2026-05-28 08:30:56 GET /images/leu-6.jpg status=404
2026-05-28 08:33:07 GET /images/leu-6.jpg status=404
2026-05-28 08:49:24 GET /combo-cu status=404



Lines Words Characters Property
----- ----- ---------- --------
    6

```

## 4.5. README.md và bảo vệ thông tin bí mật

> README.md, .gitignore và .env.example được chấm trực tiếp trên file ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [x] README.md: Heading 1, mô tả có **in đậm** và *in nghiêng*, bảng, code block, task list, blockquote
- [x] .gitignore có dòng `.env` (tên file đúng, không có đuôi .txt)
- [x] .env.example có đủ tên biến, giá trị để trống (tên file đúng, không có đuôi .txt)

## 4.6. Kiểm tra trang web bằng DevTools (F12) và báo cáo lỗi

### Bảng lỗi

| STT | Tab DevTools phát hiện lỗi | Tên file hoặc thông báo lỗi | Cách khắc phục |
| --- | --- | --- | --- |
| 1 | network | logo.png | cho vào vs code, chọn index.html rồi tìm mục  <img src="images/logo.png" rồi sửa phần logo.png theo đúng tên logo-campgo.png |
| 2 | console | ReferenceError | Cho vào VS Code, tìm mục app.js, đối chiếu dòng cuối cùng hienThiBangThue() và hienThiBangGiaThue() rồi sửa cho đúng |

> Ảnh chụp màn hình lưu trong thư mục `evidence/` (network.png, console.png).

### Báo cáo lỗi gửi trưởng nhóm

- **Context:** 
- **Expected:** 
- **Actual:** 
- **Log:** 

### Câu tìm kiếm Google

```text
site:stackoverflow.com "Uncaught ReferenceError: Console is not defined"

```

## 4.7. Excel

> Phần Excel được chấm trực tiếp trên file `data/don_thue_thang_5.xlsx`, không cần ghi vào đây.
