BÀI TOÁN: Sửa bài 2 để có csdl như sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#id_dk, @maLopHP,@maSV,DiemThi,PhanTramThi)
  + Diem(#id, @id_dk, diem)

YÊU CẦU:
1. Sửa bảng DKMH và bảng Điểm từ bài tập 2 để có các bảng như yêu cầu.
2. Nhập dữ liệu demo cho các bảng (nhập có kiểm soát từ tính năng Edit trên UI của mssm)
3. Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần.
HÌNH THỨC LÀM BÀI:
1. Tạo file bai_tap3.md trên cùng repository của bài tập 2:
   Nội dung chứa đề bài, và ảnh chụp quá trình thao tác các yêu cầu khác.
2. Chụp ảnh quá trình sửa bảng DKMH và quá trình thêm bảng Diem, chú ý @ là FK, và thêm CK cho trường điểm
3. Hình sau khi chụp paste trực tiếp vào file bai_tap3.md trên github, cần mô tả các phần trên ảnh để tỏ ra là hiểu hết!
4. dùng tính năng: Tasks -> Generate Scrips => sinh ra file: bai_tap_3_schema.sql  (chỉ chứa lệnh tạo cấu trúc của db)
5. dùng tính năng: Tasks -> Generate Scrips => advance => Check Data only => sinh ra file: bai_tap_3_data.sql  (chỉ chứa dữ liệu đã nhập demo vào db)
6. Tạo diagram mô tả các PK, FK của db. Chụp hình kết quả các bảng có các đường nối 1-->nhiều
7. upload 2 file  bai_tap_3_schema.sql và bai_tap_3_data.sql lên repository.
8. nhớ commit để save nội dung file bai_tap3.md

DEADLINE: 23H59 NGÀY 30/03/2025

---------------------- hết bài tập 3------------------------------------------- 
## ảnh 
1. sửa lại bảng DKMH và có khóa chính là id_dk  
![image](https://github.com/user-attachments/assets/cfc4c1f4-5a84-4851-83f0-2ed588653374)
2. thiết lập ràng buộc khóa ngoại (Foreign Key Constraint) giữa hai bảng trong SQL Server Management Studio (SSMS)  
![image](https://github.com/user-attachments/assets/e989bd44-fad3-4d65-9408-7712c9f29d9f)
3. tạo hoặc chỉnh sửa chỉ mục (Index) trên cột id_dk trong SQL Server Management Studio (SSMS)  
![image](https://github.com/user-attachments/assets/68265ba7-9ea5-4935-a910-2366d46f4bc2)
4. tạo hoặc chỉnh sửa ràng buộc CHECK (Check Constraint) trong SQL Server Management Studio (SSMS)  
![image](https://github.com/user-attachments/assets/e454f051-48f6-4b0e-816b-82166fe3e979)
5. kiểm tra hoặc chỉnh sửa cấu trúc bảng  
![image](https://github.com/user-attachments/assets/fecf5b43-c34c-4fb6-ad4a-c1f49d04f062)
6. tạo hoặc chỉnh sửa ràng buộc khóa ngoại (Foreign Key Constraint) trong SQL Server Management Studio (SSMS)  
![image](https://github.com/user-attachments/assets/78708d0d-3118-4215-a4a6-bef30b9fdb0a)
7. tạo hoặc chỉnh sửa ràng buộc kiểm tra (CHECK CONSTRAINT) trong SQL Server Management Studio (SSMS)  
![image](https://github.com/user-attachments/assets/fbce70df-5881-489b-b221-fa716e9aa12a)
8. tạo hoặc chỉnh sửa chỉ mục (Index) trên cột id trong SQL Server Management Studio (SSMS)  
![image](https://github.com/user-attachments/assets/99600835-f9c6-4568-8ffa-92c209cc5775)
9. nhập dữ liệu demo cho các bảng  
![image](https://github.com/user-attachments/assets/a8c034b2-6924-4fd7-b2e0-183953c2aa5f)
10. Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần.  
![image](https://github.com/user-attachments/assets/589429ed-3d01-4e1a-91c2-f2c0ef94f47c)
11. Mở SSMS, kết nối đến SQL Server và chọn cơ sở dữ liệu (QLSV).  
Chuột phải vào "Database Diagrams" → Chọn "New Database Diagram".  
![image](https://github.com/user-attachments/assets/d98f63b4-0d44-4fb2-8630-9c4ffc88de95)
12. Chọn các bảng bạn muốn hiển thị trong sơ đồ, rồi nhấn "Add".  
![image](https://github.com/user-attachments/assets/a17f0b34-6cf6-4532-b58e-9346dc78ee2d)
13. Sắp xếp quan hệ giữa các bảng theo ý muốn.  
Lưu sơ đồ bằng cách nhấn Ctrl + S.  
![image](https://github.com/user-attachments/assets/c45398ad-6272-4dfb-a534-c6bf52a9a2cc)
14. Tạo file bai_tap_3_schema.sql (chứa cấu trúc database)  
Mở SSMS và kết nối với SQL Server.  
Chọn database QLSV trong Object Explorer.  
Nhấp chuột phải vào QLSV → Chọn Tasks → Chọn Generate Scripts...  
![image](https://github.com/user-attachments/assets/336b072d-c02a-4bac-b8e6-cee4c45aec5e)
15. tiếp tục Next qua   
![image](https://github.com/user-attachments/assets/4c9aeafe-7a6d-4c60-a4c2-5a25add7a3c8)
16. Ở bước Set Scripting Options, nhấn Advanced.  
Trong danh sách Options, tìm đến mục:  
Types of data to script → Chọn Schema only  
Nhấn OK để lưu thay đổi.  
![image](https://github.com/user-attachments/assets/45486d70-6eff-4fb3-9151-9926cdbad229)
16. Ở phần Specify how scripts should be saved:  
Chọn Save as script file  
Nhấn Browse để chọn thư mục lưu file  
Đặt tên file là bai_tap_3_schema.sql  
Nhấn Next → Finish để hoàn tất.  
![image](https://github.com/user-attachments/assets/db93f918-dec7-4072-b471-cb23c22883b2)
17. Nhấn Next   
![image](https://github.com/user-attachments/assets/26af0257-f0e9-4ce8-a17a-dae1aa1a7619)
18.Finish để hoàn tất  
![image](https://github.com/user-attachments/assets/98986009-af3a-4643-a6f2-2bb43f3aa7f7)
19. ta được file schema  
![image](https://github.com/user-attachments/assets/9a143b31-b2dc-4a5e-964f-977d84bc3e49)
20. Tạo file bai_tap_3_data.sql (chứa cấu trúc database)  
Mở SSMS và kết nối với SQL Server.  
Chọn database QLSV trong Object Explorer.  
Nhấp chuột phải vào QLSV → Chọn Tasks → Chọn Generate Scripts...  
![image](https://github.com/user-attachments/assets/256d24d7-3729-42c9-86e0-66a22165e2a0)
21. ấn next  
![image](https://github.com/user-attachments/assets/5f941fac-f8c7-46d3-86dc-ea1e9175aaeb)
22. ấn next  
![image](https://github.com/user-attachments/assets/dfddc3ef-eb11-4d53-b36a-96e90100c9b2)
chọn data only sau đó ấn ok  
![image](https://github.com/user-attachments/assets/f7f5bda2-381f-4883-ab0f-a6f63f935fb0)
23. ấn next  
![image](https://github.com/user-attachments/assets/48c5511f-4e23-4065-8c64-b094461ffde4)
24. ấn next  
![image](https://github.com/user-attachments/assets/be631370-02d1-4863-9e21-74c1033fee09)
25. ấn finish  
![image](https://github.com/user-attachments/assets/8404dffd-f1af-4939-b907-1aff7c1f72c5)  
ta được 2 file bai-tap3-data và bai-tap3-schemaschema  
![image](https://github.com/user-attachments/assets/be193cf9-a716-4294-9c78-d80e049281f3)


































