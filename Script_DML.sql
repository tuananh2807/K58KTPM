﻿USE QLSV;
--SinhVien(#masv,hoten,NgaySinh)
CREATE TABLE SinhVien (
    MaSV VARCHAR(13) PRIMARY KEY,
    HoTen VARCHAR(50) NOT NULL,
    NgaySinh DATE NOT NULL,
    CHECK (DATALENGTH(MaSV) = 13) -- Đảm bảo MaSV có đúng 13 ký tự
);
--Khoa(#maKhoa,tenKhoa)
CREATE TABLE Khoa (
    MaKhoa VARCHAR(10) PRIMARY KEY,
    TenKhoa VARCHAR(20) NOT NULL
);
--BoMon(#MaBM,tenBM,@maKhoa)
CREATE TABLE BoMon (
    MaBM VARCHAR(10) PRIMARY KEY,
    TenBM VARCHAR(20) NOT NULL,
    MaKhoa VARCHAR(10) NOT NULL,
    FOREIGN KEY (MaKhoa) REFERENCES Khoa(MaKhoa)
);
--GiaoVien(#magv,hoten,NgaySinh,@maBM)
CREATE TABLE GiaoVien (
    MaGV VARCHAR(13) PRIMARY KEY,
    HoTen VARCHAR(50) NOT NULL,
    NgaySinh DATE NOT NULL,
    MaBM VARCHAR(10) NOT NULL,
    FOREIGN KEY (MaBM) REFERENCES BoMon(MaBM),
    CHECK (DATALENGTH(MaGV) = 13) -- Đảm bảo MaGV có đúng 13 ký tự
);
--Lop(#maLop,tenLop)
CREATE TABLE Lop (
    MaLop VARCHAR(11) PRIMARY KEY,
    TenLop VARCHAR(30) NOT NULL
);
--GVCN(#@maLop,#@magv,#HK)
CREATE TABLE GVCN (
    MaLop VARCHAR(11),
    MaGV VARCHAR(13),
    HK VARCHAR(10) NOT NULL,
    PRIMARY KEY (MaLop, MaGV, HK),
    FOREIGN KEY (MaLop) REFERENCES Lop(MaLop),
    FOREIGN KEY (MaGV) REFERENCES GiaoVien(MaGV),
    CHECK (DATALENGTH(MaGV) = 13)
);
--LopSV(#@maLop,#@maSV,ChucVu)
CREATE TABLE LopSV (
    MaLop VARCHAR(11),
    MaSV VARCHAR(13),
    ChucVu VARCHAR(20) NOT NULL,
    PRIMARY KEY (MaLop, MaSV),
    FOREIGN KEY (MaLop) REFERENCES Lop(MaLop),
    FOREIGN KEY (MaSV) REFERENCES SinhVien(MaSV),
    CHECK (DATALENGTH(MaSV) = 13)
);
--MonHoc(#mamon,Tenmon,STC)
CREATE TABLE MonHoc (
    MaMon VARCHAR(10) PRIMARY KEY,
    TenMon VARCHAR(40) NOT NULL,
    STC INT CHECK (STC > 0 AND STC <= 7) -- Số tín chỉ phải từ 1 đến 7
);
--LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
CREATE TABLE LopHP (
    MaLopHP VARCHAR(10) PRIMARY KEY,
    TenLopHP VARCHAR(30) NOT NULL,
    HK VARCHAR(10) NOT NULL,
    MaMon VARCHAR(10) NOT NULL,
    MaGV VARCHAR(13) NOT NULL,
    FOREIGN KEY (MaMon) REFERENCES MonHoc(MaMon),
    FOREIGN KEY (MaGV) REFERENCES GiaoVien(MaGV)
);
--DKMH(#@maLopHP,#@maSV,DiemTP,DiemThi,PhanTramThi)
CREATE TABLE DKMH (
    MaLopHP VARCHAR(10),
    MaSV VARCHAR(13),
    DiemTP FLOAT CHECK (DiemTP BETWEEN 0 AND 10),
    DiemThi FLOAT CHECK (DiemThi BETWEEN 0 AND 10),
    PhanTramThi FLOAT CHECK (PhanTramThi BETWEEN 0 AND 100),
    PRIMARY KEY (MaLopHP, MaSV),
    FOREIGN KEY (MaLopHP) REFERENCES LopHP(MaLopHP),
    FOREIGN KEY (MaSV) REFERENCES SinhVien(MaSV),
    CHECK (DATALENGTH(MaSV) = 13)
);