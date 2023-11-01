CREATE DATABASE QuanLyHocSinh;
USE QuanLyHocSinh;

CREATE TABLE Account_Management
(
	UserName VARCHAR(50) PRIMARY KEY,
    DisplayName VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PasswordAccount VARCHAR(32) NOT NULL,
    TypeAccount BIT NOT NULL DEFAULT 0
);

CREATE TABLE Lop
(
	MaLop INT PRIMARY KEY,
    TenLop CHAR(4) NOT NULL,
    HocKy INT NOT NULL,
    NamHoc CHAR(9)
);

CREATE TABLE HocSinh
(
	MaHS INT PRIMARY KEY,
    HoTen VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    GioiTinh VARCHAR(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    NgaySinh DATE,
    QuocTinh VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    DanToc VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    TonGiao VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    HoKhauThuongTru VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
);

CREATE TABLE PhuHuynh
(
	MaPH INT PRIMARY KEY,
    HoTenPH VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    NgaySinh DATE,
    MaCCCD CHAR(12) UNIQUE NOT NULL,
    NoiCap VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    QuocTich VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    DanToc VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    TonGiao VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    QuanHe CHAR(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
);

DELIMITER //
CREATE TRIGGER ThemHocSinh
AFTER INSERT ON HocSinh_Lop
FOR EACH ROW
	UPDATE Lop SET SiSo = SiSo + 1 WHERE MaLop = NEW.MaLop;
// DELIMITER ;

DELIMITER //
CREATE TRIGGER XoaHocSinh
AFTER DELETE ON HocSinh_Lop
FOR EACH ROW
	UPDATE LOP SET SiSo = SiSo - 1 WHERE MaLop = OLD.MaLop;
// DELIMITER ;

SHOW TRIGGERS;



