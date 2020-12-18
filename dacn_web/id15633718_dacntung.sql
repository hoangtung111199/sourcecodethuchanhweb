-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th12 18, 2020 lúc 07:03 AM
-- Phiên bản máy phục vụ: 10.3.16-MariaDB
-- Phiên bản PHP: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `id15633718_dacntung`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `maad` int(10) NOT NULL,
  `accad` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passad` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`maad`, `accad`, `passad`, `permission`) VALUES
(3, 'admin11', '123', 100);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `masp` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `makh` int(10) NOT NULL,
  `ngaytao` date NOT NULL,
  `noidung` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `maddh` int(10) NOT NULL,
  `masp` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soluong` int(10) NOT NULL,
  `gia` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dondathang`
--

CREATE TABLE `dondathang` (
  `maddh` int(10) NOT NULL,
  `makh` int(10) NOT NULL,
  `soluong` int(10) NOT NULL,
  `ngaytao` date NOT NULL,
  `trangthai` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `makh` int(20) NOT NULL,
  `tenkh` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioitinh` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngaysinh` date NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matkhau` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sodienthoai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`makh`, `tenkh`, `gioitinh`, `ngaysinh`, `email`, `matkhau`, `diachi`, `sodienthoai`) VALUES
(6, 'vu', 'Nam', '1999-01-01', 'e@gmail.com', '123', '123', 123),
(7, 'tung', 'Nam', '1999-11-11', 'pinpo0909@gmail.com', '123', 'TPHCM', 582573197);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai`
--

CREATE TABLE `loai` (
  `maloai` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenloai` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai`
--

INSERT INTO `loai` (`maloai`, `tenloai`) VALUES
('Móc khóa', 'Móc khóa'),
('Nhẫn', 'Nhẫn'),
('Ốp', 'Ốp'),
('Vòng', 'Vòng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mau`
--

CREATE TABLE `mau` (
  `mamau` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenmau` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mau`
--

INSERT INTO `mau` (`mamau`, `tenmau`) VALUES
('Đen', 'Đen'),
('Đỏ', 'Đỏ'),
('Vàng', 'Vàng'),
('Xanh', 'Xanh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `masp` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tensp` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinh` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia` int(20) NOT NULL,
  `mamau` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maloai` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`masp`, `tensp`, `hinh`, `gia`, `mamau`, `maloai`) VALUES
('C1', 'Ốp lưng', '130192148_819225731979715_2073472424588628589_n.jpg', 45000, 'Đen', 'Ốp'),
('C2', 'Ốp lưng', '130192947_2034060793560184_3649702141141847657_n.jpg', 65000, 'Đen', 'Ốp'),
('C3', 'Ốp lưng', '130308307_206130014304827_6806720321762557059_n.jpg', 80000, 'Đen', 'Ốp'),
('M1', 'Móc khóa', '130248809_231012678371654_7716777910607899422_n.jpg', 35000, 'Đen', 'Móc khóa'),
('M2', 'Móc khóa', '130287730_1018120908683885_744364474758673796_n.jpg', 45000, 'Đen', 'Móc khóa'),
('M3', 'Móc khóa', '130234055_312843529890396_2317280996385095739_n.jpg', 65000, 'Đen', 'Móc khóa'),
('N1', 'Nhẫn', '130195046_202596001425476_6891073449003479285_n.jpg', 125000, 'Đen', 'Nhẫn'),
('N2', 'Nhẫn', '130194066_494405204868926_8649463600255531725_n.jpg', 200000, 'Đen', 'Nhẫn'),
('N3', 'Nhẫn', '130248625_324300058541592_2059024843676632838_n.jpg', 300000, 'Đen', 'Nhẫn'),
('N4', 'Nhẫn', '130321465_205968591059161_1336657831255614760_n.jpg', 400000, 'Vàng', 'Nhẫn'),
('V1', 'Vòng', '130098332_138182707845485_6141850256798094094_n.jpg', 150000, 'Đen', 'Vòng'),
('V2', 'Vòng', '130196981_828955991283015_5567674497773991069_n.jpg', 235000, 'Đen', 'Vòng'),
('V3', 'Vòng', '130219892_780498349489011_385550355160634646_n.jpg', 300000, 'Đen', 'Vòng'),
('V4', 'Vòng', '130254254_695739318024030_7690384873271299862_n.jpg', 325000, 'Đen', 'Vòng');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`maad`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`masp`,`makh`),
  ADD KEY `makh` (`makh`);

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`maddh`),
  ADD KEY `masp` (`masp`);

--
-- Chỉ mục cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  ADD PRIMARY KEY (`maddh`),
  ADD KEY `makh` (`makh`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makh`);

--
-- Chỉ mục cho bảng `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`maloai`);

--
-- Chỉ mục cho bảng `mau`
--
ALTER TABLE `mau`
  ADD PRIMARY KEY (`mamau`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masp`),
  ADD KEY `maloai` (`maloai`),
  ADD KEY `mamau` (`mamau`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `maad` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `maddh` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  MODIFY `maddh` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `makh` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`makh`) REFERENCES `khachhang` (`makh`),
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`);

--
-- Các ràng buộc cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`maddh`) REFERENCES `dondathang` (`maddh`),
  ADD CONSTRAINT `chitietdonhang_ibfk_2` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`);

--
-- Các ràng buộc cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  ADD CONSTRAINT `dondathang_ibfk_1` FOREIGN KEY (`makh`) REFERENCES `khachhang` (`makh`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`maloai`) REFERENCES `loai` (`maloai`),
  ADD CONSTRAINT `sanpham_ibfk_3` FOREIGN KEY (`mamau`) REFERENCES `mau` (`mamau`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
