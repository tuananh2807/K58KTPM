USE [QLSV]
GO
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'CK        ', N'Cơ khí')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'CNTT      ', N'Công nghệ thông tin')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'DT        ', N'Điện tử')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'QTKD      ', N'Quản trị kinh doanh')
GO
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'HTTT      ', N'Hệ thống thông tin', N'CNTT      ')
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'Marketing ', N'Marketing', N'QTKD      ')
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'PTUD      ', N'Phát triển ứng dụng', N'CNTT      ')
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'TDH       ', N'Tự động hóa', N'DT        ')
GO
INSERT [dbo].[GiaoVien] ([magv], [hoten], [NgaySinh], [maBM]) VALUES (N'GV001     ', N'Nguyễn Văn A', CAST(N'1980-05-12' AS Date), N'HTTT      ')
INSERT [dbo].[GiaoVien] ([magv], [hoten], [NgaySinh], [maBM]) VALUES (N'GV002     ', N'Trần Thị B', CAST(N'1985-08-22' AS Date), N'PTUD      ')
INSERT [dbo].[GiaoVien] ([magv], [hoten], [NgaySinh], [maBM]) VALUES (N'GV003     ', N'Phạm Văn C', CAST(N'1978-11-03' AS Date), N'Marketing ')
INSERT [dbo].[GiaoVien] ([magv], [hoten], [NgaySinh], [maBM]) VALUES (N'GV004     ', N'Lê Thị D', CAST(N'1990-02-17' AS Date), N'TDH       ')
GO
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'L01       ', N'Lớp 1')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'L02       ', N'Lớp 2')
GO
INSERT [dbo].[GVCN] ([maLop], [magv], [HK]) VALUES (N'L01       ', N'GV001     ', N'HK1       ')
INSERT [dbo].[GVCN] ([maLop], [magv], [HK]) VALUES (N'L02       ', N'GV002     ', N'HK2       ')
GO
INSERT [dbo].[MonHoc] ([mamon], [Tenmon], [STC]) VALUES (N'MH001     ', N'Cơ sở dữ liệu', 3)
INSERT [dbo].[MonHoc] ([mamon], [Tenmon], [STC]) VALUES (N'MH002     ', N'Lập trình Java', 4)
INSERT [dbo].[MonHoc] ([mamon], [Tenmon], [STC]) VALUES (N'MH003     ', N'Kinh tế vi mô', 3)
GO
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [maMon], [maGV]) VALUES (N'LHP01     ', N'Lớp CSDL A', N'HK1       ', N'MH001     ', N'GV001     ')
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [maMon], [maGV]) VALUES (N'LHP02     ', N'Lớp Java B', N'HK2       ', N'MH002     ', N'GV002     ')
GO
INSERT [dbo].[SinhVien] ([masv], [hoten], [NgaySinh]) VALUES (N'SV001     ', N'Ngô Minh K', CAST(N'2002-07-15' AS Date))
INSERT [dbo].[SinhVien] ([masv], [hoten], [NgaySinh]) VALUES (N'SV002     ', N'Hoàng Thu L', CAST(N'2001-09-23' AS Date))
INSERT [dbo].[SinhVien] ([masv], [hoten], [NgaySinh]) VALUES (N'SV003     ', N'Phạm Gia M', CAST(N'2000-12-05' AS Date))
INSERT [dbo].[SinhVien] ([masv], [hoten], [NgaySinh]) VALUES (N'SV004     ', N'Lê Quốc N', CAST(N'2002-03-30' AS Date))
GO
INSERT [dbo].[LopSV] ([maLop], [maSV], [ChucVu]) VALUES (N'L01       ', N'SV001     ', N'Lớp trưởng')
INSERT [dbo].[LopSV] ([maLop], [maSV], [ChucVu]) VALUES (N'L01       ', N'SV002     ', N'Bí thư')
INSERT [dbo].[LopSV] ([maLop], [maSV], [ChucVu]) VALUES (N'L02       ', N'SV003     ', N'Lớp phó')
INSERT [dbo].[LopSV] ([maLop], [maSV], [ChucVu]) VALUES (N'L02       ', N'SV004     ', N'Thành viên')
GO
SET IDENTITY_INSERT [dbo].[DKMH] ON 

INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhanTramThi]) VALUES (1, N'LHP01     ', N'SV001     ', 8.5, 70)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhanTramThi]) VALUES (2, N'LHP01     ', N'SV002     ', 7, 60)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhanTramThi]) VALUES (3, N'LHP02     ', N'SV003     ', 9, 80)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhanTramThi]) VALUES (4, N'LHP02     ', N'SV004     ', 6.5, 50)
SET IDENTITY_INSERT [dbo].[DKMH] OFF
GO
SET IDENTITY_INSERT [dbo].[Diem] ON 

INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (1, 1, 8.5)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (2, 2, 7)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (3, 3, 9)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (4, 4, 6.5)
SET IDENTITY_INSERT [dbo].[Diem] OFF
GO
