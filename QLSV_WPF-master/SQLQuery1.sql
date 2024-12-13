
CREATE TABLE SinhVien (
    MaSinhVien INT PRIMARY KEY IDENTITY(1,1),
    HoTen NVARCHAR(100) null,
    NgaySinh DATE,
    GioiTinh NVARCHAR(10),
    Lop NVARCHAR(50)
);

CREATE TABLE Diem (
    MaDiem INT PRIMARY KEY IDENTITY(1,1),
    MaSinhVien INT null,
    MonHoc NVARCHAR(100),
    DiemSo FLOAT,
    FOREIGN KEY (MaSinhVien) REFERENCES SinhVien(MaSinhVien)
);
use QuanLySinhVien