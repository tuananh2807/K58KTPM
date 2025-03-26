# K58KTPM
bài tập số 2 của sinh viên : k225480106001 - Lê Tuấn Anh - Hệ Quản Trị Cơ Sở Dữ Liệu
## DEADLINE: 23H59 NGÀY 25/03/2025

## ĐIỀU KIỆN: (ĐÃ LÀM XONG BÀI 1)
1. Đã cài đặt SQL Server 2022 Dev.
2. Đã cài đặt SQL Managerment Studio bản mới nhất.
3. Đã kết nối từ SQL Managerment Studio vào SQL Server.
4. Đã có tài khoản github, biết cách tạo repository(kho lưu trữ) cho phép truy cập public.

## BÀI TOÁN:
- Tạo csdl quan hệ với tên QLSV gồm các bảng sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#@maLopHP,#@maSV,DiemTP,DiemThi,PhanTramThi)

## YÊU CẦU:
1. Thực hiện các hành động sau trên giao diện đồ hoạ để tạo cơ sở dữ liệu cho bài toán:
  + Tạo database mới, mô tả các tham số(nếu có) trong quá trình.
  + Tạo các bảng dữ liệu với các trường như mô tả, chọn kiểu dữ liệu phù hợp với thực tế (tự tìm hiểu)
  + Mỗi bảng cần thiết lập PK, FK(s) và CK(s) nếu cần thiết. (chú ý dấu # và @: # là chỉ PK, @ chỉ FK)
2. Chuyển các thao tác đồ hoạ trên thành lệnh SQL tương đương. lưu tất cả các lệnh SQL trong file: Script_DML.sql
## hình ảnh pate 
# 1 kết nối SQL sever và chọn máy chủ
![image](https://github.com/user-attachments/assets/9ffd6c38-9cfe-43a4-86c1-fda99d1b3645)
# 2 tạo cơ sở dữ liệu mới và đặt tên cho nó là QLSV
![image](https://github.com/user-attachments/assets/f270d209-79c2-4d2a-ac7f-db4b14e2a6b3)
# 3 tạo bảng mới
![image](https://github.com/user-attachments/assets/8b4b0774-2a83-456e-ab97-28e153646ab9)
# 4 thiết kế bảng và nhập nội dung
![image](https://github.com/user-attachments/assets/0986d3c6-5d03-40d8-935e-0ae6a5a7a4aa)
# 5 lưu bảng với tên là Sinh Viên sau đó ấn ok và các bảng tiếp theo cũng làm thương tự như vậy 
![image](https://github.com/user-attachments/assets/aee3d761-d31f-4f29-9de8-a1a67385a5d7)
# 5.1 bảng Lop
![image](https://github.com/user-attachments/assets/7a26c2c3-a057-4b23-8970-df9e6c79571a)
# 5.2 bảng GVCN
![image](https://github.com/user-attachments/assets/847c68ad-b295-4106-8c71-420a46339695)
# 5.3 bảng lopSV
![image](https://github.com/user-attachments/assets/add55bd0-0ff0-4b6c-a481-a9d63ad0527b)
# 5.4 bảng GiaoVien
![image](https://github.com/user-attachments/assets/e396343c-300d-46bf-bb8c-298e9b825206)
# 5.5 bảng bomon
![image](https://github.com/user-attachments/assets/dffbff2c-1d15-468c-9b16-fdee7c19326e)
# 5.6 bảng khoa
![image](https://github.com/user-attachments/assets/db39582d-127a-4dd3-b8bf-caa4ce9fb900)
# 5.7 bảng MonHoc
![image](https://github.com/user-attachments/assets/1e084299-12ab-450e-8824-79cdc773ad46)
# 5.8 bảng lopHP
![image](https://github.com/user-attachments/assets/b1353eed-d86b-4f97-8250-f22f807f4b2a)
# 5.9 bảng DKMH
![image](https://github.com/user-attachments/assets/beb725fa-97ac-4d7a-9e4b-ba42f03b676b)
# 6 đặt khóa chính cho bảng và các bảng sau cũng làm tương tự như vậy
![image](https://github.com/user-attachments/assets/0141381c-f782-490b-b5dd-01546f195fcc)
# 6.1 đặt khóa chính cho bảng lop
![image](https://github.com/user-attachments/assets/01abb907-3444-4b54-8202-c1ad24b7b5ab)
# 6.2 đặt khóa chính cho bảng GVCN
![image](https://github.com/user-attachments/assets/8fd2ef47-d0b7-4890-95bd-0540aa3466f8)
# 6.3 đặt khóa chính cho bảng LopSV
![image](https://github.com/user-attachments/assets/b81b8eaf-2bce-41ce-b544-5ef3cf556622)
# 6.4 đặt khóa chính cho bảng GiaoVien
![image](https://github.com/user-attachments/assets/934aa2e4-2ff3-4b99-b04e-320fc4fc632b)
# 6.5 đặt khóa chính cho bảng BoMon
![image](https://github.com/user-attachments/assets/75add65c-1f1f-411a-af8e-a8c1698eb2ee)
# 6.6 đặt khóa chính cho bảng Khoa
![image](https://github.com/user-attachments/assets/d21b8eae-b0a1-4441-b38b-bc1aef341a9a)
# 6.7 đặt khóa chính cho bảng MonHoc
![image](https://github.com/user-attachments/assets/91cc407d-e4e3-4d8b-b5d9-73c4203ca2c6)
# 6.8 đặt khóa chính cho bảng LopHP
![image](https://github.com/user-attachments/assets/2612472f-96cc-4191-aebb-0ea627fe04b7)
# 6.9đặt khóa chính cho bảng DHMK
![image](https://github.com/user-attachments/assets/2e003964-970a-4e74-a9cc-6c175b123012)
# 7 tạo khóa ngoại giữa các bảng
![image](https://github.com/user-attachments/assets/010f2e7b-3e7a-49ff-8830-403364303a06)

![image](https://github.com/user-attachments/assets/d6abced6-1f62-4782-bafe-22681117ad0c)

![image](https://github.com/user-attachments/assets/e3474976-12fd-4b92-9ee6-656c9269f230)

![image](https://github.com/user-attachments/assets/26556d72-1edd-4288-bfaa-7fbff1203467)

![image](https://github.com/user-attachments/assets/68ac1dc8-bc06-4f52-9903-c5dfc87bdf53)

![image](https://github.com/user-attachments/assets/f07d25f4-7463-467c-a82a-4fc12b9249aa)

![image](https://github.com/user-attachments/assets/dd0f8227-dfee-413a-b465-4a4bdc64f8cc)

![image](https://github.com/user-attachments/assets/48bde3d2-1dee-4389-8db0-6ea242b77a14)

![image](https://github.com/user-attachments/assets/ffc41b9f-161e-4c90-9d96-d6bae71d2c54)

![image](https://github.com/user-attachments/assets/72241bd4-0579-4139-aa95-f6c78e8f2939)

![image](https://github.com/user-attachments/assets/889ebd72-258c-4f86-b03d-e7df5a6c5949)

![image](https://github.com/user-attachments/assets/5b19f666-8810-4169-9257-5df97eae0e37)

![image](https://github.com/user-attachments/assets/c3259aae-5332-4d94-a541-372c9d9a6920)

![image](https://github.com/user-attachments/assets/34d22c5e-28d2-4cac-a152-94d2be630b66)

![image](https://github.com/user-attachments/assets/4afee189-384a-4abc-86f6-fade0ef99913)
# 8 đặt điều kiện để phù hợp với thực tế với trường ĐH Kỹ Thuật Công Nghiệp
![image](https://github.com/user-attachments/assets/55e814b4-fcbe-4ce4-949d-7bedd79c66e0)

![image](https://github.com/user-attachments/assets/64ff0998-cb54-45b6-8df9-852cd77733b1)
