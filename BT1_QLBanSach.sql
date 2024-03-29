CREATE DATABASE BT1CSD
USE BT1CSD
GO
/****** Object:  Table [dbo].[tChiTietHDB]    Script Date: 11/10/2021 9:51:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tChiTietHDB](
	[SoHDB] [nvarchar](10) NOT NULL,
	[MaSach] [nvarchar](10) NOT NULL,
	[SLBan] [int] NULL,
	[KhuyenMai] [nvarchar](100) NULL,
 CONSTRAINT [PK_tChiTietHDB] PRIMARY KEY CLUSTERED 
(
	[SoHDB] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tChiTietHDN]    Script Date: 11/10/2021 9:51:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tChiTietHDN](
	[SoHDN] [nvarchar](10) NOT NULL,
	[MaSach] [nvarchar](10) NOT NULL,
	[SLNhap] [int] NULL,
	[KhuyenMai] [nvarchar](100) NULL,
 CONSTRAINT [PK_tChiTietHDN] PRIMARY KEY CLUSTERED 
(
	[SoHDN] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tHoaDonBan]    Script Date: 11/10/2021 9:51:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tHoaDonBan](
	[SoHDB] [nvarchar](10) NOT NULL,
	[MaNV] [nvarchar](10) NULL,
	[NgayBan] [datetime] NULL,
	[MaKH] [nvarchar](10) NULL,
 CONSTRAINT [PK_tHoaDonBan] PRIMARY KEY CLUSTERED 
(
	[SoHDB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tHoaDonNhap]    Script Date: 11/10/2021 9:51:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tHoaDonNhap](
	[SoHDN] [nvarchar](10) NOT NULL,
	[MaNV] [nvarchar](10) NULL,
	[NgayNhap] [datetime] NULL,
	[MaNCC] [nvarchar](10) NULL,
 CONSTRAINT [PK_tHoaDonNhap] PRIMARY KEY CLUSTERED 
(
	[SoHDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tKhachHang]    Script Date: 11/10/2021 9:51:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tKhachHang](
	[MaKH] [nvarchar](10) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](150) NULL,
	[DienThoai] [nvarchar](15) NULL,
	[GioiTinh] [bit] NULL,
 CONSTRAINT [PK_tKhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tNhaCungCap]    Script Date: 11/10/2021 9:51:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tNhaCungCap](
	[MaNCC] [nvarchar](10) NOT NULL,
	[TenNCC] [nvarchar](200) NULL,
 CONSTRAINT [PK_tNhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tNhanVien]    Script Date: 11/10/2021 9:51:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tNhanVien](
	[MaNV] [nvarchar](10) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[NgaySinh] [datetime] NULL,
	[DiaChi] [nvarchar](150) NULL,
	[DienThoai] [nvarchar](15) NULL,
 CONSTRAINT [PK_tNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tNhaXuatBan]    Script Date: 11/10/2021 9:51:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tNhaXuatBan](
	[MaNXB] [nvarchar](10) NOT NULL,
	[TenNXB] [nvarchar](100) NULL,
 CONSTRAINT [PK_tNhaXuatBan] PRIMARY KEY CLUSTERED 
(
	[MaNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tSach]    Script Date: 11/10/2021 9:51:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tSach](
	[MaSach] [nvarchar](10) NOT NULL,
	[TenSach] [nvarchar](200) NULL,
	[TacGia] [nvarchar](150) NULL,
	[MaTheLoai] [nvarchar](10) NULL,
	[MaNXB] [nvarchar](10) NULL,
	[DonGiaNhap] [money] NULL,
	[DonGiaBan] [money] NULL,
	[SoLuong] [int] NULL,
	[SoTrang] [int] NULL,
	[TrongLuong] [nvarchar](50) NULL,
	[Anh] [image] NULL,
 CONSTRAINT [PK_tSach] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tTheLoai]    Script Date: 11/10/2021 9:51:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tTheLoai](
	[MaTheLoai] [nvarchar](10) NOT NULL,
	[TenTheLoai] [nvarchar](100) NULL,
 CONSTRAINT [PK_tTheLoai] PRIMARY KEY CLUSTERED 
(
	[MaTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB01', N'S01', 7, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB01', N'S02', 10, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB01', N'S04', 10, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB02', N'S04', 9, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB02', N'S05', 3, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB03', N'S02', 3, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB03', N'S06', 7, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB03', N'S08', 11, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB04', N'S03', 2, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB04', N'S04', 2, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB04', N'S10', 9, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB05', N'S05', 3, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB05', N'S07', 3, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB05', N'S08', 14, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB06', N'S02', 13, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB06', N'S05', 1, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB06', N'S10', 4, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB06', N'S11', 4, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB07', N'S01', 10, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB07', N'S06', 4, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB07', N'S08', 2, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB08', N'S01', 2, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB08', N'S06', 3, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB08', N'S07', 2, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB09', N'S03', 5, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB09', N'S06', 1, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB09', N'S09', 6, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB10', N'S07', 3, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB10', N'S11', 6, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB10', N'S13', 6, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB11', N'S04', 2, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB11', N'S08', 5, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB11', N'S11', 5, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB12', N'S05', 3, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB12', N'S09', 4, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB12', N'S12', 5, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB13', N'S02', 3, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB13', N'S03', 5, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB13', N'S04', 2, NULL)
GO
INSERT [dbo].[tChiTietHDN] ([SoHDN], [MaSach], [SLNhap], [KhuyenMai]) VALUES (N'HDN01', N'S01', 20, NULL)
INSERT [dbo].[tChiTietHDN] ([SoHDN], [MaSach], [SLNhap], [KhuyenMai]) VALUES (N'HDN02', N'S06', 10, NULL)
INSERT [dbo].[tChiTietHDN] ([SoHDN], [MaSach], [SLNhap], [KhuyenMai]) VALUES (N'HDN03', N'S03', 20, NULL)
INSERT [dbo].[tChiTietHDN] ([SoHDN], [MaSach], [SLNhap], [KhuyenMai]) VALUES (N'HDN04', N'S09', 10, NULL)
INSERT [dbo].[tChiTietHDN] ([SoHDN], [MaSach], [SLNhap], [KhuyenMai]) VALUES (N'HDN05', N'S06', 15, NULL)
GO
INSERT [dbo].[tHoaDonBan] ([SoHDB], [MaNV], [NgayBan], [MaKH]) VALUES (N'HDB01', N'NV01', CAST(N'2014-08-11T00:00:00.000' AS DateTime), N'KH01')
INSERT [dbo].[tHoaDonBan] ([SoHDB], [MaNV], [NgayBan], [MaKH]) VALUES (N'HDB02', N'NV02', CAST(N'2014-05-03T00:00:00.000' AS DateTime), N'KH02')
INSERT [dbo].[tHoaDonBan] ([SoHDB], [MaNV], [NgayBan], [MaKH]) VALUES (N'HDB03', N'NV03', CAST(N'2013-12-01T00:00:00.000' AS DateTime), N'KH03')
INSERT [dbo].[tHoaDonBan] ([SoHDB], [MaNV], [NgayBan], [MaKH]) VALUES (N'HDB04', N'NV04', CAST(N'2013-11-12T00:00:00.000' AS DateTime), N'KH01')
INSERT [dbo].[tHoaDonBan] ([SoHDB], [MaNV], [NgayBan], [MaKH]) VALUES (N'HDB05', N'NV04', CAST(N'2014-05-14T00:00:00.000' AS DateTime), N'KH04')
INSERT [dbo].[tHoaDonBan] ([SoHDB], [MaNV], [NgayBan], [MaKH]) VALUES (N'HDB06', N'NV05', CAST(N'2014-06-30T00:00:00.000' AS DateTime), N'KH02')
INSERT [dbo].[tHoaDonBan] ([SoHDB], [MaNV], [NgayBan], [MaKH]) VALUES (N'HDB07', N'NV06', CAST(N'2014-05-10T00:00:00.000' AS DateTime), N'KH01')
INSERT [dbo].[tHoaDonBan] ([SoHDB], [MaNV], [NgayBan], [MaKH]) VALUES (N'HDB08', N'NV01', CAST(N'2013-01-01T00:00:00.000' AS DateTime), N'KH02')
INSERT [dbo].[tHoaDonBan] ([SoHDB], [MaNV], [NgayBan], [MaKH]) VALUES (N'HDB09', N'NV01', CAST(N'2013-02-10T00:00:00.000' AS DateTime), N'KH02')
INSERT [dbo].[tHoaDonBan] ([SoHDB], [MaNV], [NgayBan], [MaKH]) VALUES (N'HDB10', N'NV02', CAST(N'2014-04-10T00:00:00.000' AS DateTime), N'KH04')
INSERT [dbo].[tHoaDonBan] ([SoHDB], [MaNV], [NgayBan], [MaKH]) VALUES (N'HDB11', N'NV03', CAST(N'2014-03-11T00:00:00.000' AS DateTime), N'KH04')
INSERT [dbo].[tHoaDonBan] ([SoHDB], [MaNV], [NgayBan], [MaKH]) VALUES (N'HDB12', N'NV03', CAST(N'2014-07-10T00:00:00.000' AS DateTime), N'KH03')
INSERT [dbo].[tHoaDonBan] ([SoHDB], [MaNV], [NgayBan], [MaKH]) VALUES (N'HDB13', N'NV05', CAST(N'2014-04-12T00:00:00.000' AS DateTime), N'KH04')
GO
INSERT [dbo].[tHoaDonNhap] ([SoHDN], [MaNV], [NgayNhap], [MaNCC]) VALUES (N'HDN01', N'NV02', CAST(N'2014-04-13T00:00:00.000' AS DateTime), N'NCC01')
INSERT [dbo].[tHoaDonNhap] ([SoHDN], [MaNV], [NgayNhap], [MaNCC]) VALUES (N'HDN02', N'NV01', CAST(N'2014-06-28T00:00:00.000' AS DateTime), N'NCC03')
INSERT [dbo].[tHoaDonNhap] ([SoHDN], [MaNV], [NgayNhap], [MaNCC]) VALUES (N'HDN03', N'NV04', CAST(N'2014-01-01T00:00:00.000' AS DateTime), N'NCC06')
INSERT [dbo].[tHoaDonNhap] ([SoHDN], [MaNV], [NgayNhap], [MaNCC]) VALUES (N'HDN04', N'NV05', CAST(N'2014-03-05T00:00:00.000' AS DateTime), N'NCC04')
INSERT [dbo].[tHoaDonNhap] ([SoHDN], [MaNV], [NgayNhap], [MaNCC]) VALUES (N'HDN05', N'NV03', CAST(N'2014-04-10T00:00:00.000' AS DateTime), N'NCC05')
GO
INSERT [dbo].[tKhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [GioiTinh]) VALUES (N'KH01', N'Nguyễn Đình Sơn', N'Bắc Ninh', N'0968686868', 1)
INSERT [dbo].[tKhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [GioiTinh]) VALUES (N'KH02', N'Đỗ Văn Bắc', N'Hải Dương', N'0905883993', 1)
INSERT [dbo].[tKhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [GioiTinh]) VALUES (N'KH03', N'Mạnh Thường Quân', N'Hải Phòng', N'0918688685', 1)
INSERT [dbo].[tKhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [GioiTinh]) VALUES (N'KH04', N'Mai Phương Lan', N'Hà Nội', N'0978656790', 0)
INSERT [dbo].[tKhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [GioiTinh]) VALUES (N'KH05', N'Nguyễn Thị Phương', N'Hà Nội', NULL, 0)
INSERT [dbo].[tKhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [GioiTinh]) VALUES (N'KH06', N'Trần Đăng Hưng', N'Ninh Bình', NULL, 1)
INSERT [dbo].[tKhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [GioiTinh]) VALUES (N'KH07', N'Hoàng Thị Hồng', N'Thái Nguyên', NULL, 0)
INSERT [dbo].[tKhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [GioiTinh]) VALUES (N'KH08', N'Cẩm Thị Hương', N'TP HCM', NULL, 0)
INSERT [dbo].[tKhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [GioiTinh]) VALUES (N'Kh09', N'Mai Văn Hùng', N'Phú Thọ', NULL, 1)
GO
INSERT [dbo].[tNhaCungCap] ([MaNCC], [TenNCC]) VALUES (N'NCC01', N'Bách Việt')
INSERT [dbo].[tNhaCungCap] ([MaNCC], [TenNCC]) VALUES (N'NCC02', N'NXB Trẻ')
INSERT [dbo].[tNhaCungCap] ([MaNCC], [TenNCC]) VALUES (N'NCC03', N'Phú Hà book')
INSERT [dbo].[tNhaCungCap] ([MaNCC], [TenNCC]) VALUES (N'NCC04', N'Alphabooks')
INSERT [dbo].[tNhaCungCap] ([MaNCC], [TenNCC]) VALUES (N'NCC05', N'TGM Books')
INSERT [dbo].[tNhaCungCap] ([MaNCC], [TenNCC]) VALUES (N'NCC06', N'Thái Hà')
GO
INSERT [dbo].[tNhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai]) VALUES (N'NV01', N'Trần Huy', N'Nam', CAST(N'1990-09-11T00:00:00.000' AS DateTime), N'Hà Nội', N'0986868686')
INSERT [dbo].[tNhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai]) VALUES (N'NV02', N'Thanh Tâm', N'Nữ', CAST(N'1986-01-12T00:00:00.000' AS DateTime), N'Bắc Ninh', N'0979657676')
INSERT [dbo].[tNhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai]) VALUES (N'NV03', N'Nguyễn Minh', N'Nam', CAST(N'1989-07-05T00:00:00.000' AS DateTime), N'Hải Dương', N'0968145689')
INSERT [dbo].[tNhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai]) VALUES (N'NV04', N'Phan Cao', N'Nam', CAST(N'1991-08-12T00:00:00.000' AS DateTime), N'Ninh Bình', N'0985143235')
INSERT [dbo].[tNhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai]) VALUES (N'NV05', N'Bùi Ngọc', N'Nữ', CAST(N'1987-03-01T00:00:00.000' AS DateTime), N'Thái Bình', N'0918167892')
INSERT [dbo].[tNhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai]) VALUES (N'NV06', N'Nguyễn Hoàng', N'Nam', CAST(N'1990-04-04T00:00:00.000' AS DateTime), N'Nam Định', N'0962091660')
INSERT [dbo].[tNhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai]) VALUES (N'NV07', N'Nguyễn Hải', N'Nam', CAST(N'1994-05-05T00:00:00.000' AS DateTime), N'Hà Nội', N'0962091666')
INSERT [dbo].[tNhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai]) VALUES (N'NV08', N'Đỗ Thảo', N'Nữ', CAST(N'1990-06-06T00:00:00.000' AS DateTime), N'Hà Nội', N'0962099666')
INSERT [dbo].[tNhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai]) VALUES (N'NV09', N'Đỗ Thảo Phương', N'Nữ', CAST(N'1990-07-07T00:00:00.000' AS DateTime), N'Hà Nội', N'0966666666')
INSERT [dbo].[tNhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai]) VALUES (N'NV10', N'Đỗ Huy Long', N'Nam', CAST(N'1995-08-08T00:00:00.000' AS DateTime), N'Nam Định', N'0983646585')
GO
INSERT [dbo].[tNhaXuatBan] ([MaNXB], [TenNXB]) VALUES (N'NXB01', N'NXB Kim Đồng')
INSERT [dbo].[tNhaXuatBan] ([MaNXB], [TenNXB]) VALUES (N'NXB02', N'NXB Trẻ')
INSERT [dbo].[tNhaXuatBan] ([MaNXB], [TenNXB]) VALUES (N'NXB03', N'NXB Thăng Long')
INSERT [dbo].[tNhaXuatBan] ([MaNXB], [TenNXB]) VALUES (N'NXB04', N'NXB Nhã Nam')
INSERT [dbo].[tNhaXuatBan] ([MaNXB], [TenNXB]) VALUES (N'NXB05', N'NXB Giáo Dục')
INSERT [dbo].[tNhaXuatBan] ([MaNXB], [TenNXB]) VALUES (N'NXB06', N'NXB Fahasa')
INSERT [dbo].[tNhaXuatBan] ([MaNXB], [TenNXB]) VALUES (N'NXB07', N'NXB Phương Nam')
INSERT [dbo].[tNhaXuatBan] ([MaNXB], [TenNXB]) VALUES (N'NXB08', N'NXB ĐH GTVT')
INSERT [dbo].[tNhaXuatBan] ([MaNXB], [TenNXB]) VALUES (N'NXB09', N'NXB ĐH QGHN')
INSERT [dbo].[tNhaXuatBan] ([MaNXB], [TenNXB]) VALUES (N'NXB10', N'NXB Thủ Đô')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [TacGia], [MaTheLoai], [MaNXB], [DonGiaNhap], [DonGiaBan], [SoLuong], [SoTrang], [TrongLuong], [Anh]) VALUES (N'S01', N'Sống và khát vọng', N'Trần Đăng Khoa', N'TL01', N'NXB01', 100000.0000, 108000.0000, 120, 365, N'638 gram', NULL)
INSERT [dbo].[tSach] ([MaSach], [TenSach], [TacGia], [MaTheLoai], [MaNXB], [DonGiaNhap], [DonGiaBan], [SoLuong], [SoTrang], [TrongLuong], [Anh]) VALUES (N'S02', N'Cha Nên Dạy Con Như Thế Nào?', N'Vương Ba, Vương Trí Diễm', N'TL01', N'NXB04', 60000.0000, 69000.0000, 70, 264, N'440 gram', NULL)
INSERT [dbo].[tSach] ([MaSach], [TenSach], [TacGia], [MaTheLoai], [MaNXB], [DonGiaNhap], [DonGiaBan], [SoLuong], [SoTrang], [TrongLuong], [Anh]) VALUES (N'S03', N'Trốn chạy và yêu thương', N'Maya banks', N'TL06', N'NXB02', 105000.0000, 115000.0000, 45, 508, N'450 gram', NULL)
INSERT [dbo].[tSach] ([MaSach], [TenSach], [TacGia], [MaTheLoai], [MaNXB], [DonGiaNhap], [DonGiaBan], [SoLuong], [SoTrang], [TrongLuong], [Anh]) VALUES (N'S04', N'Anh sẽ yêu em mãi chứ', N'Gào', N'TL06', N'NXB05', 65000.0000, 89000.0000, 78, 320, N'374 gram', NULL)
INSERT [dbo].[tSach] ([MaSach], [TenSach], [TacGia], [MaTheLoai], [MaNXB], [DonGiaNhap], [DonGiaBan], [SoLuong], [SoTrang], [TrongLuong], [Anh]) VALUES (N'S05', N'Thế giới phẳng ( Tái bản năm 2014)', N'Thomas L.Friedman', N'TL05', N'NXB03', 245000.0000, 272000.0000, 56, 818, N'902 gram', NULL)
INSERT [dbo].[tSach] ([MaSach], [TenSach], [TacGia], [MaTheLoai], [MaNXB], [DonGiaNhap], [DonGiaBan], [SoLuong], [SoTrang], [TrongLuong], [Anh]) VALUES (N'S06', N'Giáo trình C++ & lập trình hướng đối tượng', N'GS. Phạm Văn Ất', N'TL05', N'NXB06', 64000.0000, 78000.0000, 89, 496, N'650 gram', NULL)
INSERT [dbo].[tSach] ([MaSach], [TenSach], [TacGia], [MaTheLoai], [MaNXB], [DonGiaNhap], [DonGiaBan], [SoLuong], [SoTrang], [TrongLuong], [Anh]) VALUES (N'S07', N'Manchester United - Thiên sử về quỷ đỏ', N'Jim White', N'TL03', N'NXB07', 135000.0000, 149000.0000, 68, 639, N'720 gram', NULL)
INSERT [dbo].[tSach] ([MaSach], [TenSach], [TacGia], [MaTheLoai], [MaNXB], [DonGiaNhap], [DonGiaBan], [SoLuong], [SoTrang], [TrongLuong], [Anh]) VALUES (N'S08', N'Cát bụi thời gian', N'Sidney Sheldon', N'TL04', N'NXB05', 80000.0000, 92000.0000, 45, 482, N'500 gram', NULL)
INSERT [dbo].[tSach] ([MaSach], [TenSach], [TacGia], [MaTheLoai], [MaNXB], [DonGiaNhap], [DonGiaBan], [SoLuong], [SoTrang], [TrongLuong], [Anh]) VALUES (N'S09', N'Tự học bảo mật và quản trị mạng', N'Mai Hương', N'TL02', N'NXB08', 41000.0000, 48000.0000, 79, 344, N'480 gram', NULL)
INSERT [dbo].[tSach] ([MaSach], [TenSach], [TacGia], [MaTheLoai], [MaNXB], [DonGiaNhap], [DonGiaBan], [SoLuong], [SoTrang], [TrongLuong], [Anh]) VALUES (N'S10', N'Triệu phú khởi nghiệp từ hai bàn tay trắng', N'Triệu Phàm Vũ', N'TL05', N'NXB09', 115000.0000, 130000.0000, 43, 452, N'506 gram', NULL)
INSERT [dbo].[tSach] ([MaSach], [TenSach], [TacGia], [MaTheLoai], [MaNXB], [DonGiaNhap], [DonGiaBan], [SoLuong], [SoTrang], [TrongLuong], [Anh]) VALUES (N'S11', N'Cấu trúc dữ liệu và giải thuật', N'Hồ Đắc Phương', N'TL02', N'NXB10', 110000.0000, 150000.0000, 80, 300, N'500 gram', NULL)
INSERT [dbo].[tSach] ([MaSach], [TenSach], [TacGia], [MaTheLoai], [MaNXB], [DonGiaNhap], [DonGiaBan], [SoLuong], [SoTrang], [TrongLuong], [Anh]) VALUES (N'S12', N'Lập Trình C', N'Phạm Văn Ất', N'TL02', N'NXB10', 100000.0000, 130000.0000, 80, 440, N'400 gram', NULL)
INSERT [dbo].[tSach] ([MaSach], [TenSach], [TacGia], [MaTheLoai], [MaNXB], [DonGiaNhap], [DonGiaBan], [SoLuong], [SoTrang], [TrongLuong], [Anh]) VALUES (N'S13', N'Không ai qua sông', N'Lữ Ngọc Tư', N'TL01', N'NXB10', 100000.0000, 140000.0000, 80, 330, N'330 gram', NULL)
INSERT [dbo].[tSach] ([MaSach], [TenSach], [TacGia], [MaTheLoai], [MaNXB], [DonGiaNhap], [DonGiaBan], [SoLuong], [SoTrang], [TrongLuong], [Anh]) VALUES (N'S14', N'Đón đầu xu hướng', N'Rohit Bhargava', N'TL01', N'NXB10', 200000.0000, 250000.0000, 60, 220, N'200 gram', NULL)
INSERT [dbo].[tSach] ([MaSach], [TenSach], [TacGia], [MaTheLoai], [MaNXB], [DonGiaNhap], [DonGiaBan], [SoLuong], [SoTrang], [TrongLuong], [Anh]) VALUES (N'S15', N'Để con được ốm', N'Nguyễn Thị Đoan', N'TL01', N'NXB10', 200000.0000, 300000.0000, 40, 400, N'500 gram', NULL)
INSERT [dbo].[tSach] ([MaSach], [TenSach], [TacGia], [MaTheLoai], [MaNXB], [DonGiaNhap], [DonGiaBan], [SoLuong], [SoTrang], [TrongLuong], [Anh]) VALUES (N'S16', N'Búc xúc làm ta vô cảm', N'Đặng Hoàng Giang', N'TL01', N'NXB10', 200000.0000, 300000.0000, 50, 400, N'300 gram', NULL)
INSERT [dbo].[tSach] ([MaSach], [TenSach], [TacGia], [MaTheLoai], [MaNXB], [DonGiaNhap], [DonGiaBan], [SoLuong], [SoTrang], [TrongLuong], [Anh]) VALUES (N'S17', N'Tony buổi sáng - trên đường băng', N'Tony Buổi Sáng', N'TL01', N'NXB09', 250000.0000, 300000.0000, 30, 300, N'400 gram', NULL)
INSERT [dbo].[tSach] ([MaSach], [TenSach], [TacGia], [MaTheLoai], [MaNXB], [DonGiaNhap], [DonGiaBan], [SoLuong], [SoTrang], [TrongLuong], [Anh]) VALUES (N'S18', N'Đừng bao giờ đi ăn một mình', N'Keith Ferrazzi', N'TL01', N'NXB09', 300000.0000, 400000.0000, 60, 555, N'500 gram', NULL)
INSERT [dbo].[tSach] ([MaSach], [TenSach], [TacGia], [MaTheLoai], [MaNXB], [DonGiaNhap], [DonGiaBan], [SoLuong], [SoTrang], [TrongLuong], [Anh]) VALUES (N'S19', N'Ngày xưa có một con bò', N'Camilo Cruz', N'TL01', N'NXB09', 300000.0000, 450000.0000, 60, 400, N'400 gram', NULL)
INSERT [dbo].[tSach] ([MaSach], [TenSach], [TacGia], [MaTheLoai], [MaNXB], [DonGiaNhap], [DonGiaBan], [SoLuong], [SoTrang], [TrongLuong], [Anh]) VALUES (N'S20', N'Tôi thấy hoa vàng trên cỏ xanh', N'Nguyễn nhật ánh', N'TL01', N'NXB09', 300000.0000, 400000.0000, 80, 550, N'300 gram', NULL)
GO
INSERT [dbo].[tTheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL01', N'Bí quyết Cuộc sống')
INSERT [dbo].[tTheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL02', N'Sách Tin học')
INSERT [dbo].[tTheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL03', N'Thể Thao, Du lịch')
INSERT [dbo].[tTheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL04', N'Văn hóa, Nghệ thuật')
INSERT [dbo].[tTheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL05', N'Sách Kinh doanh')
INSERT [dbo].[tTheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL06', N'Sách Khuyến mại, Sách mới phát hành')
GO
ALTER TABLE [dbo].[tChiTietHDB]  WITH CHECK ADD  CONSTRAINT [FK_tChiTietHDB_tHoaDonBan] FOREIGN KEY([SoHDB])
REFERENCES [dbo].[tHoaDonBan] ([SoHDB])
GO
ALTER TABLE [dbo].[tChiTietHDB] CHECK CONSTRAINT [FK_tChiTietHDB_tHoaDonBan]
GO
ALTER TABLE [dbo].[tChiTietHDB]  WITH CHECK ADD  CONSTRAINT [FK_tChiTietHDB_tSach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[tSach] ([MaSach])
GO
ALTER TABLE [dbo].[tChiTietHDB] CHECK CONSTRAINT [FK_tChiTietHDB_tSach]
GO
ALTER TABLE [dbo].[tChiTietHDN]  WITH CHECK ADD  CONSTRAINT [FK_tChiTietHDN_tHoaDonNhap] FOREIGN KEY([SoHDN])
REFERENCES [dbo].[tHoaDonNhap] ([SoHDN])
GO
ALTER TABLE [dbo].[tChiTietHDN] CHECK CONSTRAINT [FK_tChiTietHDN_tHoaDonNhap]
GO
ALTER TABLE [dbo].[tChiTietHDN]  WITH CHECK ADD  CONSTRAINT [FK_tChiTietHDN_tSach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[tSach] ([MaSach])
GO
ALTER TABLE [dbo].[tChiTietHDN] CHECK CONSTRAINT [FK_tChiTietHDN_tSach]
GO
ALTER TABLE [dbo].[tHoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_tHoaDonBan_tKhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[tKhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[tHoaDonBan] CHECK CONSTRAINT [FK_tHoaDonBan_tKhachHang]
GO
ALTER TABLE [dbo].[tHoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_tHoaDonBan_tNhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[tNhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[tHoaDonBan] CHECK CONSTRAINT [FK_tHoaDonBan_tNhanVien]
GO
ALTER TABLE [dbo].[tHoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_tHoaDonNhap_tNhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[tNhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[tHoaDonNhap] CHECK CONSTRAINT [FK_tHoaDonNhap_tNhaCungCap]
GO
ALTER TABLE [dbo].[tHoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_tHoaDonNhap_tNhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[tNhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[tHoaDonNhap] CHECK CONSTRAINT [FK_tHoaDonNhap_tNhanVien]
GO
ALTER TABLE [dbo].[tSach]  WITH CHECK ADD  CONSTRAINT [FK_tSach_tNhaXuatBan] FOREIGN KEY([MaNXB])
REFERENCES [dbo].[tNhaXuatBan] ([MaNXB])
GO
ALTER TABLE [dbo].[tSach] CHECK CONSTRAINT [FK_tSach_tNhaXuatBan]
GO
ALTER TABLE [dbo].[tSach]  WITH CHECK ADD  CONSTRAINT [FK_tSach_tTheLoai] FOREIGN KEY([MaTheLoai])
REFERENCES [dbo].[tTheLoai] ([MaTheLoai])
GO
ALTER TABLE [dbo].[tSach] CHECK CONSTRAINT [FK_tSach_tTheLoai]
GO



--Luyện tập 46 Câu hỏi Truy vấn


-- 4 In ra danh sách các các sách (MaSach,TenSach) do Nhà xuất bản Giáo Dục hoặc Nhà 
--Xuất Bản Trẻ sản xuất có giá từ 90.000 đến 140.000.
Select  tSach.MaSach, tSach.TenSach,tSach.DonGiaBan from tSach inner join tNhaXuatBan on tSach.MaNXB = tNhaXuatBan.MaNXB
where (tNhaXuatBan.TenNXB = N'NXB Giáo Dục' or tNhaXuatBan.TenNXB =N'NXB Trẻ') and 90000<=tSach.DonGiaBan and tSach.DonGiaBan <= 140000

--6 In ra các số hóa đơn, trị giá hóa đơn trong tháng 4/2014, sắp xếp theo ngày (tăng dần) và 
--trị giá của hóa đơn (giảm dần)
select tHoaDonBan.NgayBan, tChiTietHDB.SoHDB, sum(tChiTietHDB.SLBan*tSach.DonGiaBan)
from (tChiTietHDB inner join tSach on tChiTietHDB.MaSach = tSach.MaSach) 
inner join tHoaDonBan on  tHoaDonBan.SoHDB = tChiTietHDB.SoHDB
where tHoaDonBan.NgayBan between '2014-04-01' and '2014-04-30' 
group by tHoaDonBan.NgayBan, tChiTietHDB.SoHDB
order by sum(tChiTietHDB.SLBan*tSach.DonGiaBan) desc	

--7 In ra danh sách các khách hàng (MaKH, TenKH) đã mua hàng trong ngày 10/4/2014.
select tKhachHang.MaKH, tKhachHang.TenKH, tHoaDonBan.NgayBan
from tKhachHang inner join tHoaDonBan on tKhachHang.MaKH = tHoaDonBan.MaKH
where tHoaDonBan.NgayBan = '2014-04-10' 

-- 8 In ra số hóa đơn, trị giá các hóa đơn do nhân viên có tên “Trần Huy” lập trong ngày 
--   “11/8/2014”
select tChiTietHDB.SoHDB,  tNhanVien.TenNV, sum(tChiTietHDB.SLBan*tSach.DonGiaBan) 
from tChiTietHDB inner join tSach on tChiTietHDB.MaSach = tSach.MaSach
inner join tHoaDonBan on tHoaDonBan.SoHDB = tChiTietHDB.SoHDB
inner join tNhanVien on tHoaDonBan.MaNV = tNhanVien.MaNV
where tNhanVien.TenNV = N'Trần Huy' and tHoaDonBan.NgayBan = '2014-08-11' 
group by tChiTietHDB.SoHDB,  tNhanVien.TenNV

-- 17 Có bao nhiêu đầu sách khác nhau được bán ra trong năm 2014
Select count(distinct tSach.MaSach) from tSach inner join tChiTietHDB on tSach.MaSach = tChiTietHDB.MaSach
inner join tHoaDonBan on tChiTietHDB.SoHDB = tHoaDonBan.SoHDB
where NgayBan between '2014-01-01' and '2014-12-31'

--18 Cho biết trị giá hóa đơn cao nhất, thấp nhất là bao nhiêu?
select Min(TongGiaTriHD) as HoaDonMin, Max(TongGiaTriHD) as HoaDonMax
from (
	select tChiTietHDB.SoHDB, sum(tSach.DonGiaBan*tChiTietHDB.SLBan) as TongGiaTriHD
	from tSach inner join tChiTietHDB on tSach.MaSach = tChiTietHDB.MaSach 
	inner join tHoaDonBan on tHoaDonBan.SoHDB = tChiTietHDB.SoHDB
	where year(tHoaDonBan.NgayBan) = 2014
	group by tChiTietHDB.SoHDB
) as TongGiaTriHD


-- 19 Trị giá trung bình của tất cả các hóa đơn được bán ra trong năm 2014 là bao nhiêu
select avg(TongGiaTriHD) as GiaTriTB
from (
	select tChiTietHDB.SoHDB, sum(tSach.DonGiaBan*tChiTietHDB.SLBan) as TongGiaTriHD
	from tSach inner join tChiTietHDB on tSach.MaSach = tChiTietHDB.MaSach 
	inner join tHoaDonBan on tHoaDonBan.SoHDB = tChiTietHDB.SoHDB
	group by tChiTietHDB.SoHDB
) as TongGiaTriHD

-- 20 Tính doanh thu bán hàng trong năm 2014
select sum(TongGiaTriHD) as GiaTriTB
from (
	select tChiTietHDB.SoHDB, sum(tSach.DonGiaBan*tChiTietHDB.SLBan) as TongGiaTriHD
	from tSach inner join tChiTietHDB on tSach.MaSach = tChiTietHDB.MaSach 
	inner join tHoaDonBan on tHoaDonBan.SoHDB = tChiTietHDB.SoHDB
	where year(tHoaDonBan.NgayBan) = 2014
	group by tChiTietHDB.SoHDB
) as TongGiaTriHD

--22. Tìm họ tên khách hàng đã mua hóa đơn có trị giá cao nhất trong năm 2014.
with maxHoaDon as(
	select top 10 with ties tHoaDonBan.MaKH, tKhachHang.TenKH, 
	Sum(tSach.DonGiaBan*tChiTietHDB.SLBan) as TongTriGiaHD
	from tHoaDonBan inner join tChiTietHDB on tHoaDonBan.SoHDB = tChiTietHDB.SoHDB
	inner join tSach on tSach.MaSach = tChiTietHDB.MaSach
	inner join tKhachHang on tKhachHang.MaKH = tHoaDonBan.MaKH
	where YEAR(tHoaDonBan.NgayBan) = '2014'
	group by tHoaDonBan.MaKH, tKhachHang.TenKH
	order by Sum(tSach.DonGiaBan*tChiTietHDB.SLBan) desc
) 
select MaKH, TenKH, TongTriGiaHD from maxHoaDon
go










-- BÀI TẬP THỰC HÀNH TRÊN LỚP

-- View
-- 1.Tạo view in ra danh sách các sách của nhà xuất bản giáo dục nhập trong năm 2021
create view Cau1 as
select tSach.MaSach, tSach.TenSach from tSach 
inner join tNhaXuatBan on tSach.MaNXB = tNhaXuatBan.MaNXB
inner join tChiTietHDN on tChiTietHDN.MaSach = tSach.MaSach 
inner join tHoaDonNhap on tHoaDonNhap.SoHDN = tChiTietHDN.SoHDN
where tNhaXuatBan.TenNXB = N'Giáo Dục'
and YEAR(tHoaDonNhap.NgayNhap) = '2014' 
go 
select * from Cau1
go

-- 2.Tạo view thống kê các sách không bán được trong năm 2014
Create view Cau2 as
select tSach.MaSach, tSach.TenSach from tSach
 where tSach.MaSach not in (select tSach.MaSach from tSach 
							inner join tChiTietHDB on tSach.MaSach = tChiTietHDB.MaSach
							inner join tHoaDonBan on tHoaDonBan.SoHDB = tChiTietHDB.SoHDB
							where YEAR(tHoaDonBan.NgayBan) = '2014')
go
select * from Cau2
go

--3.Tạo view thống kê 10 khách hàng có tổng tiền tiêu dùng cao nhất trong năm 2021
create view Cau3 as
select top 10 with ties tHoaDonBan.MaKH, tKhachHang.TenKH, 
sum(tChiTietHDB.SLBan*tSach.DonGiaBan) as TongTriGiaHD
from tKhachHang inner join tHoaDonBan on tKhachHang.MaKH = tHoaDonBan.MaKH
inner join tChiTietHDB on tChiTietHDB.SoHDB = tHoaDonBan.SoHDB
inner join tSach on tSach.MaSach = tChiTietHDB.MaSach
where YEAR(tHoaDonBan.NgayBan) = '2014'
group by tHoaDonBan.MaKH, tKhachHang.TenKH
order by TongTriGiaHD desc
go
select * from Cau3
go
drop view Cau3
go
--4.Tạo view thống kê số lượng sách bán ra trong năm 2021 và số lượng sách nhập trong năm
--2021 và chênh lệch giữa hai số lượng này ứng với mỗi đầu sách

--C1:
select tSach.MaSach, 
		isnull(sum(tChiTietHDB.SLBan), 0) as TongSLBan, 
		isnull(sum(tChiTietHDN.SLNhap), 0) as TongSLNhap,
		abs(isnull(sum(tChiTietHDN.SLNhap), 0) - sum(tCHiTietHDB.SLBan)) as ChenhLech
from tSach full outer join tChiTietHDB on tSach.MaSach = tChiTietHDB.MaSach
			full outer join tHoaDonBan on tChiTietHDB.SoHDB = tHoaDonBan.SoHDB
			full outer join tChiTietHDN on tSach.MaSach = tChiTietHDN.MaSach
			full outer join tHoaDonNhap on tChiTietHDN.SoHDN = tHoaDonNhap.SoHDN
where Year(tHoaDonBan.NgayBan) = 2014 or Year(tHoaDonNhap.NgayNhap) = 2014 
group by tSach.MaSach


SELECT tSach.MaSach, 
    ISNULL(SUM(tChiTietHDB.SLBan), 0) AS TongSLBan
FROM tSach
LEFT JOIN tChiTietHDB ON tSach.MaSach = tChiTietHDB.MaSach
LEFT JOIN tHoaDonBan ON tChiTietHDB.SoHDB = tHoaDonBan.SoHDB
WHERE Year(tHoaDonBan.NgayBan) = 2014
GROUP BY tSach.MaSach


--C2:
SELECT
    tSach.MaSach,
    tSach.TenSach,
    -- Tính tổng số lượng sách đã bán trong năm 2021 và đặt tên cho cột này là SoLuongBan2021
    ISNULL(SUM(CASE WHEN YEAR(tHoaDonBan.NgayBan) = 2014 
	THEN tChiTietHDB.SLBan ELSE 0 END), 0) AS SoLuongBan2021,
    -- Tính tổng số lượng sách đã nhập trong năm 2021 và đặt tên cho cột này là SoLuongNhap2021
    ISNULL(SUM(CASE WHEN YEAR(tHoaDonNhap.NgayNhap) = 2014 
	THEN tChiTietHDN.SLNhap ELSE 0 END), 0) AS SoLuongNhap2021,
    -- Tính chênh lệch giữa số lượng sách bán và số lượng sách nhập trong năm 2021
    abs(ISNULL(SUM(CASE WHEN YEAR(tHoaDonBan.NgayBan) = 2014 
	THEN tChiTietHDB.SLBan ELSE 0 END), 0) -	
	ISNULL(SUM(CASE WHEN YEAR(tHoaDonNhap.NgayNhap) = 2014 
	THEN tChiTietHDN.SLNhap ELSE 0 END), 0)) AS ChenhLech
FROM
    tSach
LEFT JOIN
    tChiTietHDB ON tSach.MaSach = tChiTietHDB.MaSach
LEFT JOIN
    tHoaDonBan ON tChiTietHDB.SoHDB = tHoaDonBan.SoHDB
LEFT JOIN
    tChiTietHDN ON tSach.MaSach = tChiTietHDN.MaSach
LEFT JOIN
    tHoaDonNhap ON tChiTietHDN.SoHDN = tHoaDonNhap.SoHDN
GROUP BY
    tSach.MaSach, tSach.TenSach;


select tSach.MaSach, tSach.TenSach, sum(tChiTietHDB.SLBan) as SoLuongBan
from tSach inner join tChiTietHDB on tSach.MaSach = tChiTietHDB.MaSach
		   inner join tHoaDonBan on tHoaDonBan.SoHDB = tChiTietHDB.SoHDB
		   where YEAR(tHoaDonBan.NgayBan) = '2014' and tSach.MaSach = N'S01'
group by tSach.MaSach, tSach.TenSach

--5.Tạo view đưa ra những thông tin hóa đơn và tổng tiền của hóa đơn đó trong ngày
--16/11/2021
select tChiTietHDB.SoHDB, sum(tChiTietHDB.SLBan*tSach.DonGiaBan) as TongTien
from tHoaDonBan inner join tChiTietHDB on tHoaDonBan.SoHDB = tChiTietHDB.SoHDB
inner join tSach on tSach.MaSach = tChiTietHDB.MaSach
where tHoaDonBan.NgayBan = '2014-04-12'
group by tChiTietHDB.SoHDB

--6. Tạo view đưa ra doanh thu bán hàng của từng tháng trong năm 2014, những tháng không
--có doanh thu thì ghi là 0.

-- C1: Chưa hoàn thiện
select MONTH(tHoaDonBan.NgayBan) as Thang, Sum(tChiTietHDB.SLBan*tSach.DonGiaBan) as DoanhThu
from tHoaDonBan inner join tChiTietHDB on tHoaDonBan.SoHDB = tChiTietHDB.SoHDB
inner join tSach on tSach.MaSach = tChiTietHDB.MaSach
where YEAR(tHoaDonBan.NgayBan) = '2014'
group by MONTH(tHoaDonBan.NgayBan)
go

--C2:
CREATE VIEW vThang
AS
(SELECT 1 AS Thang UNION ALL
SELECT 2 UNION ALL
SELECT 3 UNION ALL
SELECT 4 UNION ALL
SELECT 5 UNION ALL
SELECT 6 UNION ALL
SELECT 7 UNION ALL
SELECT 8 UNION ALL
SELECT 9 UNION ALL
SELECT 10 UNION ALL
SELECT 11 UNION ALL
SELECT 12)
go
SELECT * FROM vTHang
go

CREATE VIEW Ex06
AS
(SELECT tmpDoanhThuThang.Thang, 
IsNull(DoanhThuThang.DoanhThu, 0) AS DoanhThuTong
FROM vThang AS tmpDoanhThuThang
LEFT JOIN
(SELECT MONTH(hdb.NgayBan) AS 'Thang', SUM(s.DonGiaBan*ct_hdb.SLBan) AS DoanhThu
FROM tHoaDonBan AS hdb
LEFT JOIN tChiTietHDB AS ct_hdb ON hdb.SoHDB = ct_hdb.SoHDB
LEFT JOIN tSach AS s ON ct_hdb.MaSach = s.MaSach
GROUP BY MONTH(hdb.NgayBan)) AS DoanhThuThang
ON tmpDoanhThuThang.Thang = DoanhThuThang.Thang)
go

SELECT * FROM Ex06

--C3: 
SELECT
    Months.Thang AS Thang,
    SUM(
        CASE
            WHEN YEAR(tHoaDonBan.NgayBan) = 2014 THEN tChiTietHDB.SLBan * tSach.DonGiaBan
            ELSE 0
        END
    ) AS DoanhThu
FROM
    (
        SELECT 1 AS Thang UNION ALL
        SELECT 2 AS Thang UNION ALL
        SELECT 3 AS Thang UNION ALL
        SELECT 4 AS Thang UNION ALL
        SELECT 5 AS Thang UNION ALL
        SELECT 6 AS Thang UNION ALL
        SELECT 7 AS Thang UNION ALL
        SELECT 8 AS Thang UNION ALL
        SELECT 9 AS Thang UNION ALL
        SELECT 10 AS Thang UNION ALL
        SELECT 11 AS Thang UNION ALL
        SELECT 12 AS Thang
    ) AS Months
LEFT JOIN
    tHoaDonBan ON MONTH(tHoaDonBan.NgayBan) = Months.Thang
LEFT JOIN
    tChiTietHDB ON tHoaDonBan.SoHDB = tChiTietHDB.SoHDB
LEFT JOIN
    tSach ON tSach.MaSach = tChiTietHDB.MaSach
GROUP BY
    Months.Thang;
go


--7. Tạo view đưa ra doanh thu bán hàng theo ngày, và tổng doanh thu cho mỗi tháng (dùng
--roll up)
CREATE VIEW View_Cau7 AS
SELECT 
    YEAR(hdb.NgayBan) AS Nam,
    MONTH(hdb.NgayBan) AS Thang,
    DAY(hdb.NgayBan) AS Ngay,
    SUM(ctb.SLBan * s.DonGiaBan) AS DoanhThu
FROM tHoaDonBan hdb
INNER JOIN tChiTietHDB ctb ON hdb.SoHDB = ctb.SoHDB
INNER JOIN tSach s ON ctb.MaSach = s.MaSach
GROUP BY YEAR(hdb.NgayBan), MONTH(hdb.NgayBan), DAY(hdb.NgayBan)
WITH ROLLUP
HAVING YEAR(hdb.NgayBan) IS NOT NULL
GO
SELECT * FROM View_Cau7
GO

--8.Tạo view đưa ra danh sách 3 khách hàng có tiền tiêu dùng cao nhất
CREATE OR ALTER VIEW View_Cau8
AS
	SELECT TOP(3) kh.MaKH, kh.TenKH, kh.DienThoai, ISNULL(SUM(ctb.SLBan*s.DonGiaBan),0) AS TONGTIEUDUNG
	FROM tKhachHang kh
	INNER JOIN tHoaDonBan hdb ON hdb.MaKH = kh.MaKH
	INNER JOIN tChiTietHDB ctb ON ctb.SoHDB = hdb.SoHDB
	INNER JOIN tSach s ON s.MaSach=ctb.MaSach
	GROUP BY kh.MaKH, kh.TenKH, kh.DienThoai
GO
SELECT * FROM View_Cau8
GO
--9.Tạo view đưa ra 10 đầu sách được tiêu thụ nhiều nhất trong năm 2022 và số lượng tiêu thụ
--  mỗi đầu sách.
CREATE OR ALTER VIEW Vieu_Cau9
AS 
	SELECT TOP(10) s.MaSach, s.TenSach, s.TacGia, ISNULL(SUM(ctb.SLBan),0) AS N'Số lượng tiêu thụ'
	FROM tSach s
	JOIN tChiTietHDB ctb ON ctb.MaSach = s.MaSach
	JOIN tHoaDonBan hdb ON hdb.SoHDB = ctb.SoHDB
	WHERE YEAR(hdb.NgayBan) = 2014
	GROUP BY s.MaSach, s.TenSach, s.TacGia
	ORDER BY ISNULL(SUM(ctb.SLBan),0) 
GO
SELECT * FROM Vieu_Cau9
GO

--10.Tạo view SachGD đưa ra danh sách các sách với các thông tin MaSach,TenSach, tên 
--   thể loại, tổng số lượng nhập, tổng số lượng bán, số lượng tồn do Nhà xuất bản Giáo Dục xuất bản.
create or alter view View_Cau10
as
	select s.MaSach, s.TenSach, tl.TenTheLoai,
	ISNULL(sum(ban.SoLuongBan),0) as N'Tổng Số lượng bán',
	ISNULL(SUM(nhap.SoLuongNhap),0) as N'Tổng số lượng nhập',
	ISNULL(SUM(nhap.SoLuongNhap),0)-ISNULL(sum(ban.SoLuongBan),0) as N'Chênh lệch'
	from tSach s
	left join (select ctb.MaSach, SUM(ctb.SLBan) as SoLuongBan
			   from tChiTietHDB ctb 
			   inner join tHoaDonBan hdb on ctb.SoHDB = hdb.SoHDB
			   group by ctb.MaSach)
			   ban on ban.MaSach = s.MaSach
	left join (select ctn.MaSach, SUM(ctn.SLNhap) as SoLuongNhap
			   from tChiTietHDN ctn
			   inner join tHoaDonNhap hdn on hdn.SoHDN = ctn.SoHDN
			   group by ctn.MaSach) 
			   nhap on s.MaSach = nhap.MaSach
	LEFT JOIN tTheLoai tl ON tl.MaTheLoai = s.MaTheLoai
	LEFT JOIN tNhaXuatBan nxb ON nxb.MaNXB = s.MaNXB
	WHERE nxb.TenNXB = N'NXB Thủ Đô'
	group by s.MaSach, s.TenSach, tl.TenTheLoai
go
select * from View_Cau10
go



--11.Tạo view KhachVip đưa ra khách hàng gồm thông tin MaKH, TenKH, địa chỉ, điện 
--   thoại cho những khách hàng đã mua hàng với tổng tất cả các trị giá hóa đơn trong năm 
--   hiện tại lớn hơn 30.000.000
CREATE OR ALTER VIEW View_Cau11
AS
	SELECT kh.MaKH, kh.TenKH, kh.DiaChi, kh.DienThoai, SUM(ctb.SLBan*s.DonGiaBan) AS N'Tổng tiền tiêu dùng'
	FROM tKhachHang kh 
	JOIN tHoaDonBan hdb ON hdb.MaKH = kh.MaKH
	JOIN tChiTietHDB ctb ON ctb.SoHDB = hdb.SoHDB
	JOIN tSach s ON s.MaSach = ctb.MaSach
	WHERE YEAR(hdb.NgayBan) = 2014
	GROUP BY kh.MaKH, kh.TenKH, kh.DiaChi, kh.DienThoai
	HAVING SUM(ctb.SLBan*s.DonGiaBan) >= 1000000
GO
SELECT * FROM View_Cau11
GO

--12.Tạo view đưa ra số hóa đơn, trị giá các hóa đơn và tổng toàn bộ trị giá của các hoa đơn 
--   do nhân viên có tên “Trần Huy” lập trong tháng hiện tại
CREATE OR ALTER VIEW View_Cau12
AS
	SELECT hdb.SoHDB, nv.TenNV, SUM(ctb.SLBan*s.DonGiaBan) AS N'Trị giá hóa đơn'
	FROM tHoaDonBan hdb 
	JOIN tNhanVien nv ON nv.MaNV = hdb.MaNV
	JOIN tChiTietHDB ctb ON ctb.SoHDB = hdb.SoHDB
	JOIN tSach s ON s.MaSach = ctb.MaSach
	WHERE nv.TenNV = N'Trần Huy'
		  --AND hdb.NgayBan = GETDATE()
	GROUP BY hdb.SoHDB, nv.TenNV
GO
SELECT * FROM View_Cau12
GO

--13.Tạo view đưa thông tin các các sách còn tồn 
CREATE OR ALTER VIEW View_Cau13
AS
	SELECT s.MaSach, s.TenSach, s.TacGia,
	ISNULL(SUM(ctn.SLNhap),0) - ISNULL(SUM(ctb.SLBan),0) AS 'Số lượng tồn'
	FROM tSach s
	LEFT JOIN tChiTietHDN ctn ON ctn.MaSach = s.MaSach
	LEFT JOIN tChiTietHDB ctb ON ctb.MaSach = s.MaSach
	GROUP BY s.MaSach, s.TenSach, s.TacGia
	HAVING ISNULL(SUM(ctn.SLNhap),0) - ISNULL(SUM(ctb.SLBan),0) >0
GO	
SELECT * FROM View_Cau13
GO


--14.Tạo view đưa ra danh sách các sách không bán được trong năm 2014.
CREATE OR ALTER VIEW View_Cau14
AS
	SELECT s.MaSach, s.TenSach, s.TacGia
	FROM tSach s
	Where s.MaSach not in( SELECT ctb.MaSach 
						   FROM tChiTietHDB ctb 
						   JOIN tHoaDonBan hdb ON hdb.SoHDB = ctb.SoHDB
						   WHERE YEAR(hdb.NgayBan) = 2014)
GO
SELECT * FROM View_Cau14
GO
--15.Tạo view đưa ra danh sách các sách của NXB Giáo Dục không bán được trong năm 2014.
CREATE OR ALTER VIEW View_Cau15
AS
	SELECT s.MaSach, s.TenSach, s.TacGia
	FROM tSach s
	INNER JOIN tNhaXuatBan nxb ON nxb.MaNXB = s.MaNXB
	Where s.MaSach not in( SELECT ctb.MaSach 
						   FROM tChiTietHDB ctb 
						   JOIN tHoaDonBan hdb ON hdb.SoHDB = ctb.SoHDB
						   WHERE YEAR(hdb.NgayBan) = 2014)
	AND nxb.TenNXB = N'NXB Giáo Dục'
GO
SELECT * FROM View_Cau15
GO

--16.Tạo view đưa ra các thông tin về sách và số lượng từng sách được bán ra trong năm 2014.
CREATE OR ALTER VIEW View_Cau16
AS
	SELECT s.MaSach, s.TenSach, s.TacGia, ISNULL(SUM(ctb.SLBan),0) AS N'Số lượng bán'
	FROM tSach s
	JOIN tChiTietHDB ctb ON ctb.MaSach = s.MaSach
	JOIN tHoaDonBan hdb ON hdb.SoHDB = ctb.SoHDB
	WHERE YEAR(hdb.NgayBan) = 2014
	GROUP BY s.MaSach, s.TenSach, s.TacGia
GO
SELECT * FROM View_Cau16
GO


--17.Tạo view đưa ra họ tên khách hàng đã mua hóa đơn có trị giá cao nhất trong năm 2014.
CREATE OR ALTER VIEW View_Cau17
AS 
	SELECT TOP(1) kh.MaKH, kh.TenKH, ISNULL(SUM(ctb.SLBan*s.DonGiaBan),0) AS N'Tổng tiền tiêu'
	FROM tKhachHang kh
	JOIN tHoaDonBan hdb ON hdb.MaKH = kh.MaKH
	JOIN tChiTietHDB ctb ON ctb.SoHDB = hdb.SoHDB
	JOIN tSach s ON s.MaSach = ctb.MaSach
	WHERE YEAR(hdb.NgayBan) = 2014
	GROUP BY kh.MaKH, kh.TenKH
	ORDER BY ISNULL(SUM(ctb.SLBan*s.DonGiaBan),0) DESC
GO
SELECT * FROM View_Cau17
GO
--18.Tạo view đưa ra danh sách 3 nhân viên (MaKH, TenKH) có doanh số cao nhất của năm hiện tại.
CREATE OR ALTER VIEW View_Cau18
AS
	SELECT TOP(3) nv.MaNV, nv.TenNV, ISNULL(SUM(ctb.SLBan*s.DonGiaBan),0) AS N'Doanh số bán'
	FROM tNhanVien nv
	JOIN tHoaDonBan hdb ON hdb.MaNV = nv.MaNV
	JOIN tChiTietHDB ctb ON ctb.SoHDB = hdb.SoHDB
	JOIN tSach s ON s.MaSach = ctb.MaSach
	WHERE YEAR(hdb.NgayBan) = 2014
	GROUP BY nv.MaNV, nv.TenNV
	ORDER BY ISNULL(SUM(ctb.SLBan*s.DonGiaBan),0) DESC
GO
SELECT * FROM View_Cau18
GO


--19.Tạo view đưa ra danh sách sách và số lượng nhập của mỗi nhà xuất bản trong năm hiện tại
CREATE OR ALTER VIEW View_Cau19
AS 
	SELECT nxb.MaNXB,nxb.TenNXB,s.MaSach, s.TenSach ,SUM(ctn.SLNhap) AS N'Số lượng nhập'
	FROM tNhaXuatBan nxb 
	JOIN tSach s ON s.MaNXB = nxb.MaNXB
	JOIN tChiTietHDN ctn ON ctn.MaSach = s.MaSach
	JOIN tHoaDonNhap hdn ON hdn.SoHDN = ctn.SoHDN
	WHERE YEAR(hdn.NgayNhap) = 2014
	GROUP BY nxb.MaNXB,nxb.TenNXB,s.MaSach, s.TenSach
GO
SELECT * FROM View_Cau19
GO




-- Thủ tục Procedure
USE BT1CSD; 
SELECT name
FROM sys.procedures;
go


--1. Tạo thủ tục có đầu vào là mã sách, đầu ra là số lượng sách đó được bán trong năm 2014
--C1:
alter procedure ProcCau1
	@MaSach nvarchar(100),
	@SoLuongBan int output
as
begin
	set nocount on; -- Tắt thông báo về số bản ghi bị ảnh hướng
	select @SoLuongBan = sum(tChiTietHDB.SLBan)
	from tChiTietHDB
	where SoHDB in (
		select SoHDB
		from tHoaDonBan
		where year(NgayBan) = 2014
	) and tChiTietHDB.MaSach = @MaSach;
end;
go



-- C2: 
select tSach.MaSach, tSach.TenSach, sum(tChiTietHDB.SLBan) as SoLuongBan
from tSach inner join tChiTietHDB on tSach.MaSach = tChiTietHDB.MaSach
		   inner join tHoaDonBan on tHoaDonBan.SoHDB = tChiTietHDB.SoHDB
		   where YEAR(tHoaDonBan.NgayBan) = '2014' and tSach.MaSach = N'S01'
group by tSach.MaSach, tSach.TenSach
go

--2.Tạo thủ tục có đầu vào là ngày, đầu ra là số lượng hóa đơn và 
-- số lượng tiền bán của sách trong ngày đó

--C1:
-- Tạo thủ tục có đầu vào là ngày, đầu ra là số lượng hóa đơn và tổng tiền bán của sách trong ngày đó
alter PROCEDURE ProcCau2
    @Ngay date,
    @SoLuongHoaDon int OUTPUT,
    @TongTienBan money OUTPUT
AS
BEGIN
    SET NOCOUNT ON; -- Tắt thông báo số bản ghi bị ảnh hưởng

    -- Tính số lượng hóa đơn trong ngày
    SELECT @SoLuongHoaDon = COUNT(SoHDB)
    FROM tHoaDonBan 
    WHERE NgayBan = @Ngay
    -- Tính tổng tiền bán trong ngày
    SELECT @TongTienBan = SUM(TongTien)
    FROM (
        SELECT SUM(tChiTietHDB.SLBan * tSach.DonGiaBan) AS TongTien
        FROM tChiTietHDB INNER JOIN tSach ON tSach.MaSach = tChiTietHDB.MaSach
        WHERE SoHDB IN (
            SELECT SoHDB
            FROM tHoaDonBan
            WHERE NgayBan = @Ngay
        )
        GROUP BY SoHDB
    ) AS TienBanTrongNgay;
END;
go

declare @SL int;
declare @tien money;
declare @NgayTest date = '2014-05-14';
exec ProcCau2
	@Ngay = @NgayTest, @SoLuongHoaDon = @SL output, @TongTienBan = @tien output
print 'So luong hoa don trong ngay: ' + cast(@SL as nvarchar(10))
print 'Tong tien ban trong ngay: '+cast(@tien as nvarchar(40))
go



--3. Tạo thủ tục có đầu vào là mã nhà cung cấp, đầu ra là số đầu sách và số tiền cửa hàng đã 
--   nhập của nhà cung cấp đó

alter procedure ProcCau3
(
    @MaNCC nvarchar(10),
    @SoDauSach int OUTPUT,
    @SoTienNhap money OUTPUT
)
as
BEGIN
    SET NOCOUNT ON;
   
    SELECT @SoDauSach = COUNT(*), @SoTienNhap = SUM(tChiTietHDN.SLNhap * tSach.DonGiaNhap)
    FROM tChiTietHDN inner join tSach on tChiTietHDN.MaSach = tSach.MaSach
    WHERE SoHDN IN (SELECT SoHDN FROM tHoaDonNhap WHERE MaNCC = @MaNCC);
END
go

declare @SoDauSachResult int; 
declare @SoTienNhapResult money;

exec ProcCau3
	@MaNCC = N'NCC01', 
	@SoDauSach = @SoDauSachResult OUTPUT, 
	@SoTienNhap = @SoTienNhapResult OUTPUT;

print 'So dau sach: ' + cast(@SoDauSachResult as nvarchar(10));
print 'So tien nhap: ' + cast(@SoTienNhapResult as nvarchar(30));
go


--4. Tạo thủ tục có đầu vào là năm, đầu ra là số tiền nhập hàng, số tiền bán hàng của năm đó.

create procedure ProcCau4
	@nam int,
	@tienNhapHang money output,
	@tienBanHang money output 
as
begin 
	select @tienNhapHang = sum(tSach.DonGiaNhap*tChiTietHDN.SLNhap), 
		   @tienBanHang = sum(tSach.DonGiaBan*tChiTietHDB.SLBan)
	from tSach 
	inner join tChiTietHDN on tSach.MaSach = tChiTietHDN.MaSach 
	inner join tChiTietHDB on tSach.MaSach=tChiTietHDB.MaSach 
	inner join tHoaDonBan on tHoaDonBan.SoHDB = tChiTietHDB.SoHDB
	inner join tHoaDonNhap on tHoaDonNhap.SoHDN = tChiTietHDN.SoHDN
	where YEAR(tHoaDonBan.NgayBan) = @nam and YEAR(tHoaDonNhap.NgayNhap) = @nam
end 
go

declare @tienNhapHangTest money;
declare @tienBanHangTest money;

exec ProcCau4
	@nam = 2014,
	@tienNhapHang = @tienNhapHangTest output,
	@tienBanHang = @tienBanHangTest output

print 'So tien nhap hang: ' + cast(@tienNhapHangTest as nvarchar(20))
print 'So tien ban hang: ' + cast(@tienBanHangTest as nvarchar(20))
go

--5.Tạo thủ tục có đầu vào là mã NXB, đầu ra là số lượng sách tồn của nhà xuất bản đó


--6. Tạo thủ tục nhập dữ liệu cho bảng hóa đơn nhập và chi tiết hóa đơn nhập cùng lúc 
--   (sử dụng transaction)
-- Tạo thủ tục nhập dữ liệu cho HoaDonNhap và ChiTietHDN cùng lúc



--7. Tạo thủ tục xóa đồng thời hóa đơn bán và chi tiết hóa đơn bán (dùng transaction)


--8. Tạo thủ tục có đầu vào là năm, đầu ra là số lượng sách nhập, sách bán của năm đó


--9. Tạo thủ tục có đầu vào là mã sách, năm, đầu ra số lượng sách nhập, số lượng sách bán 
--   trong năm đó



--10.Tạo thủ tục có đầu vào là mã khách hàng, năm, đầu ra là số lượng sách đã mua và số 
--   lượng tiền tiêu dùng của khách hàng đó trong năm nhập vào.




--11.Tạo thủ tục có đầu vào là mã khách hàng, năm, đầu ra là số lượng hóa đơn đã mua và số 
--   lượng tiền tiêu dùng của khách hàng đó trong năm đó.









-- Hàm

--1. Tạo hàm đưa ra tổng số tiền đã nhập sách trong một năm với tham số đầu vào là năm
create function Function_Cau1
(
	@nam int
) 
returns money as 
BEGIN
	DECLARE @sum money
	SELECT @sum = SUM(tChiTietHDN.SLNhap * tSach.DonGiaNhap)
	from tChiTietHDN inner join tSach on tChiTietHDN.MaSach = tSach.MaSach
	inner join tHoaDonNhap on tHoaDonNhap.SoHDN = tChiTietHDN.SoHDN
	WHERE YEAR(tHoaDonNhap.NgayNhap) = @nam
	return @sum	
END
go
--Thử 
select dbo.Function_Cau1(2014)
go


--2. Tạo hàm đưa ra danh sách 5 đầu sách bán chạy nhất trong tháng nào đó 
--   (tháng là tham số đầu vào)
create function Function_Cau2
(
	@thang int
)
returns table as
return
(
	select top(5) tSach.MaSach, tSach.TenSach, sum(tChiTietHDB.SLBan) as SoLuong
	from tSach inner join tChiTietHDB on tChiTietHDB.MaSach = tSach.MaSach
	inner join tHoaDonBan on tHoaDonBan.SoHDB = tChiTietHDB.SoHDB
	where MONTH(tHoaDonBan.NgayBan) = @thang
	group by tSach.MaSach, tSach.TenSach
)
go
select * from Function_Cau2(5)
go
-- 3. Tạo hàm đưa ra danh sách n nhân viên có doanh thu cao nhất trong một năm 
-- với n và năm là tham số đầu vào

alter function Function_Cau3
(
	@n int,
	@year int
)
returns table as
return
(
	select top (@n) tNhanVien.MaNV, tNhanVien.TenNV, 
	Sum(tSach.DonGiaBan*tChiTietHDB.SLBan) as DoanhThu
	from tHoaDonBan
	inner join tChiTietHDB on tHoaDonBan.SoHDB = tChiTietHDB.SoHDB
	inner join tSach on tSach.MaSach = tChiTietHDB.MaSach
	inner join tNhanVien on tNhanVien.MaNV = tHoaDonBan.MaNV
	Where year(tHoaDonBan.NgayBan) = @year
	group by tNhanVien.MaNV, tNhanVien.TenNV
	order by DoanhThu desc
)
go
select * from Function_Cau3(2, 2014)
go

--4. Tạo hàm đưa ra thông tin Nhân viên sinh nhật trong ngày là tham số nhập vào
alter function Function_Cau4
(
	@NgayNhap date
)
returns table as
return
(
	select tNhanVien.MaNV, tNhanVien.TenNV, tNhanVien.NgaySinh
	from tNhanVien 
	where NgaySinh = @NgayNhap
)
go 
select * from Function_Cau4('1991-08-12')
go



--5. Tạo hàm đưa ra danh sách sách tồn trong kho quá 2 năm 
--   (nhập nhưng không bán hết trong hai năm)
-- => nghĩa là nhập vào nhưng không bán hết trong hai năm
alter function Function_Cau5
(
	@NamNhap int
)
returns table as
return
(
	select tSach.MaSach, tSach.TenSach 
	from tSach inner join tChiTietHDN on tChiTietHDN.MaSach = tSach.MaSach
	inner join tHoaDonNhap on tHoaDonNhap.SoHDN = tChiTietHDN.SoHDN
	where year(tHoaDonNhap.NgayNhap) <= @NamNhap - 2
	and not exists
	( 
		select 1
		from tHoaDonBan
		inner join tChiTietHDB on tHoaDonBan.SoHDB = tChiTietHDB.SoHDB
		WHERE tChiTietHDN.MaSach = tSach.MaSach
        AND YEAR(tHoaDonBan.NgayBan) >= (@NamNhap - 2)
	)
)
go
select * from Function_Cau5(2014);
go

--6. Tạo hàm với đầu vào là ngày, đầu ra là thông tin các hóa đơn và 
--   trị giá của hóa đơn trong ngày đó
create function Function_Cau6
(
	@ngay date
) 
returns table as
return
(
	select tHoaDonBan.SoHDB, sum(tChiTietHDB.SLBan*tSach.DonGiaBan) as TriGiaHoaDon
	from tHoaDonBan 
	inner join tChiTietHDB on tHoaDonBan.SoHDB = tChiTietHDB.SoHDB
	inner join tSach on tSach.MaSach = tChiTietHDB.MaSach
	where tHoaDonBan.NgayBan = @ngay
	group by tHoaDonBan.SoHDB
)
go 
select * from Function_Cau6('2014-05-14')
go


--7. Tạo hàm có đầu vào là năm đầu ra là thống kê doanh thu theo 
--   từng tháng và cả năm (dùng roll up)

-- Cách 1:
ALTER FUNCTION Function_Cau7
(
    @nam INT
)
RETURNS TABLE AS
RETURN
(
    SELECT
        CASE
            WHEN GROUPING(month(tHoaDonBan.NgayBan)) = 1 THEN N'Tổng cộng'
            ELSE DATENAME(month, tHoaDonBan.NgayBan)
        END AS Thang,
        SUM(ISNULL(tChiTietHDB.SLBan * tSach.DonGiaBan, 0)) AS DoanhThu
    FROM tHoaDonBan
    INNER JOIN tChiTietHDB ON tHoaDonBan.SoHDB = tChiTietHDB.SoHDB
    INNER JOIN tSach ON tSach.MaSach = tChiTietHDB.MaSach
    WHERE YEAR(tHoaDonBan.NgayBan) = @nam
    GROUP BY ROLLUP(MONTH(tHoaDonBan.NgayBan), DATENAME(month, tHoaDonBan.NgayBan))
)
GO
SELECT * FROM Function_Cau7(2014)
WHERE Thang IS NOT NULL
GO



-- Cách 2:
ALTER FUNCTION Function_Cau7
(
    @nam INT
)
RETURNS TABLE AS
RETURN
(
    SELECT MONTH(tHoaDonBan.NgayBan) AS Thang, SUM(tChiTietHDB.SLBan * tSach.DonGiaBan) AS DoanhThu
    FROM tHoaDonBan
    INNER JOIN tChiTietHDB ON tHoaDonBan.SoHDB = tChiTietHDB.SoHDB
    INNER JOIN tSach ON tSach.MaSach = tChiTietHDB.MaSach
    WHERE YEAR(tHoaDonBan.NgayBan) = @nam
    GROUP BY MONTH(tHoaDonBan.NgayBan)
    
    UNION ALL
    
    SELECT NULL AS Thang, SUM(tChiTietHDB.SLBan * tSach.DonGiaBan) AS DoanhThu
    FROM tHoaDonBan
    INNER JOIN tChiTietHDB ON tHoaDonBan.SoHDB = tChiTietHDB.SoHDB
    INNER JOIN tSach ON tSach.MaSach = tChiTietHDB.MaSach
    WHERE YEAR(tHoaDonBan.NgayBan) = @nam
)
GO

-- Để lấy tổng cộng cho cả năm, bạn có thể thực hiện truy vấn sau:
SELECT Thang, SUM(DoanhThu) AS DoanhThu
FROM Function_Cau7(2014)
GROUP BY Thang
go


-- 8. Tạo hàm có đầu vào là sách, đầu ra là số lượng tồn của sách
create function Func_Cau8(@maSach char(10))
returns int
as
	begin
		declare @SLTon int;
		declare @SoLuongNhap int;
		declare @SoLuongBan int;

		select @SoLuongNhap = isnull(sum(SLNhap), 0)
		from tChiTietHDN hdn
		where hdn.MaSach = @maSach

		select @SoLuongBan = isnull(sum(SLBan), 0)
		from tChiTietHDB hdb
		where hdb.MaSach = @maSach

		set @SLTon = @SoLuongNhap - @SoLuongBan;

		return @SLTon
	end
go
select dbo.Func_Cau8('S01') as SoLuongTon
go

-- 9. Tạo hàm có đầu vào là mã loại, đầu ra là thông tin sách, số lượng sách nhập, số lượng sách 
--	  bán của mỗi sách thuộc mã loại đó
alter function Function_Cau9(@MaLoai char(10))
returns table
as return
(	
	with SLSachNhap as (
		select tSach.MaSach, tSach.TenSach, sum(isnull(SLNhap, 0)) as TongSoLgNhap
		from tSach left outer join tChiTietHDN on tSach.MaSach = tChiTietHDN.MaSach
		where tSach.MaTheLoai = @MaLoai
		group by tSach.MaSach, tSach.TenSach
	),
		SLSachBan as (
		select tSach.MaSach, tSach.TenSach, sum(isnull(SLBan, 0)) as TongSoLgBan
		from tSach left outer join tChiTietHDB on tSach.MaSach = tChiTietHDB.MaSach
		where tSach.MaTheLoai = @MaLoai
		group by tSach.MaSach, tSach.TenSach
	)
	select tSach.MaSach, tSach.TenSach, SLSachNhap.TongSoLgNhap, SLSachBan.TongSoLgBan
	from tSach inner join SLSachNhap on tSach.MaSach = SLSachNhap.MaSach
				inner join SLSachBan on tSach.MaSach = SLSachBan.MaSach
)
go
select * from Function_Cau9('TL01')
go






-- Them truong TongTien vao HoaDonBan, cap nhat tu dong cho truong nay






-- Trigger
-- 1. Tạo trường thành tiền (ThanhTien) cho bảng tChitietHDB, tạo trigger cập nhật tự động 
--    cho trường này biết ThanhTien=SLBan*DonGiaBan
alter table tChiTietHDB
add ThanhTien money null
go
create or alter trigger Trig_Cau1 on tChiTietHDB
for insert, update
as
begin
	declare @sohdb nvarchar(50),
			@dongia money, 
			@thanhtien money, 
			@masach nvarchar(10)
	select @sohdb = inserted.SoHDB, @masach = inserted.MaSach from inserted  
	select @dongia = tSach.DonGiaBan from tSach 
	where MaSach = @masach
	update tChiTietHDB set ThanhTien=tChiTietHDB.SLBan*@dongia 
	where tChiTietHDB.SoHDB = @sohdb and tChiTietHDB.MaSach = @masach	
end
go

insert into tChiTietHDB(SoHDB,MaSach,SLBan)
values ('HDB01','S03',10),
		('HDB01','S05',10)

update tChiTietHDB set tChiTietHDB.SLBan=10 where tChiTietHDB.SoHDB = 'HDB01'

select * from tChiTietHDB where SoHDB='HDB01'


-- 2. Thêm trường TongTien cho bảng hóa đơn bán, cập nhật dữ liệu cho trường 
--    này mỗi khi thêm, sửa bản ghi vào bảng chi tiết hóa đơn bán.
-- Cách 1:
alter table tHoaDonBan
add TongTien money null
go

alter trigger Test
on tChiTietHDB
for insert, update
as
begin 
	declare @SLBan int
	select @SLBan = tChiTietHDB.SLBan from tChiTietHDB
	update tHoaDonBan set tHoaDonBan.TongTien =(select isnull(sum(@SLBan*tSach.DonGiaBan),0)
	from tChiTietHDB
	inner join inserted on tChiTietHDB.SoHDB = inserted.SoHDB
	inner join tSach on tSach.MaSach = inserted.MaSach
	where tHoaDonBan.SoHDB = inserted.SoHDB
	group by tChiTietHDB.SoHDB
	)
end
go
select * from tHoaDonBan
update tChiTietHDB set tChiTietHDB.SLBan=10 where tChiTietHDB.SoHDB = 'HDB02'
update tChiTietHDB set tChiTietHDB.SLBan=10 where tChiTietHDB.SoHDB = 'HDB01'
go

-- Cách 2:
create or alter trigger Trig_Cau2 on tChiTietHDB
for insert as
begin
declare @sohdb nvarchar(10), @masach nvarchar(10), @sl int, @dongia money
select @sohdb = sohdb, @masach = masach, @sl =SLBan from inserted
select @dongia=dongiaban from tSach where MaSach=@masach

update tHoaDonBan set TongTien = TongTien + @sl*@dongia where sohdb=@sohdb
End

INSERT INTO tChiTietHDB VALUES ('HDB14','S01', 2, NULL, NULL )
INSERT INTO tChiTietHDB VALUES ('HDB14','S02', 1, NULL, NULL )

select * from tHoaDonBan WHERE SoHDB='HDB14'
select * from tChiTietHDB WHERE SoHDB='HDB14'
delete from tChiTietHDB WHERE SoHDB='HDB14'
update tHoaDonBan set TongTien=0 WHERE SoHDB='HDB14'
update tChiTietHDB set tChiTietHDB.SLBan=20 where tChiTietHDB.SoHDB = 'HDB02'
select * from tHoaDonBan
update tChiTietHDB set tChiTietHDB.SLBan=10 where tChiTietHDB.SoHDB = 'HDB01'
go


-- 3. Thêm trường số lượng hóa đơn vào bảng khách hàng và cập nhật tự động cho trường này 
--    mỗi khi thêm hóa đơn



-- 4. Thêm trường số sản phẩm vào bảng hóa đơn bán, cập nhật tự động cho trường này mỗi khi 
--    thêm chi tiết hóa đơn




-- 5. Thêm trường số sản phẩm vào bảng hóa đơn bán, cập nhật tự động cho trường này mỗi khi 
--    xóa chi tiết hóa đơn



-- 6. Thêm trường số sản phẩm vào bảng hóa đơn bán, cập nhật tự động cho trường này mỗi khi 
--    thêm, sửa, xóa chi tiết hóa đơn



-- 7. Thêm trường tổng tiền cho hóa đơn bán, cập nhật tự động cho trường này mỗi khi thêm 
--    chi tiết hóa đơn



-- 8. Thêm trường số lượng hóa đơn vào bảng khách hàng và cập nhật tự động cho trường này 
--    mỗi khi thêm, sửa, xóa hóa đơn



-- 9. Thêm trường số sản phẩm vào bảng hóa đơn bán, cập nhật tự động cho trường này mỗi khi 
--    thêm, xóa, sửa chi tiết hóa đơn




-- 10. Thêm trường tổng tiền cho hóa đơn bán, cập nhật tự động cho trường này mỗi khi thêm, 
--     xóa, sửa chi tiết hóa đơn


-- 11. Số lượng trong bảng Sách là số lượng tồn kho, cập nhật tự động dữ liệu cho trường này
--     mỗi khi nhập hay bán sách


-- 12. Thêm trường Tổng tiền tiêu dùng cho bảng khách hàng, cập nhật thông tin cho trường này
alter table tKhachHang
add TongTienTieu money null
go
create or alter trigger Trig_Cau12 
on tChiTietHDB 
after insert, update 
as
begin
	declare @maKhach nvarchar(10),
		    @soHD nvarchar(10),
			@maSach nvarchar(20),
			@soLuong int,
			@donGia money
	select @soHD=inserted.SoHDB, @maSach=inserted.MaSach,@soLuong=inserted.SLBan
	from inserted
	select @donGia=tSach.DonGiaBan from tSach where tSach.MaSach=@maSach
	select @maKhach=tHoaDonBan.MaKH
	from tHoaDonBan where tHoaDonBan.SoHDB=@soHD
	update tKhachHang set TongTienTieu=ISNULL(TongTienTieu,0)+@soLuong*@donGia
	where tKhachHang.MaKH=@maKhach
end
go
update tChiTietHDB set tChiTietHDB.SLBan=20 where tChiTietHDB.SoHDB = 'HDB01'
select * from tKhachHang
go


--13. Thêm trường Số đầu sách cho bảng nhà cung cấp, cập nhật tự động số đầu sách nhà cung 
--    cấp cung cấp cho cửa hàng 
alter table tNhaCungCap
add SoDauSach int null
go
create or alter trigger Trig_Cau13 
on tHoaDonNhap
after insert, update 
as
begin
     declare @maNCC nvarchar(10),
            @soDauSach int
    
    select @maNCC = inserted.MaNCC, @soDauSach = inserted.SoDauSach
    from inserted
    
    update tNhaCungCap
    set SoDauSach = @soDauSach
    where MaNCC = @maNCC
end
go



--14. Thêm trường Số lượng sách và Tổng tiền hàng vào bảng nhà cung cấp, cập nhật dữ liệu 
--    cho trường này mỗi khi nhập hàng.
alter table tNhaCungCap
add SoLuongSach int null,
    TongTienHang money null
go

create or alter trigger Trig_Cau14 
on tChiTietHDN 
after insert,update
as
begin
    declare @maNCC nvarchar(10),
            @maSach nvarchar(20),
            @soLuong int,
            @donGia money
    select @maNCC = tHoaDonNhap.MaNCC, @maSach = inserted.MaSach, @soLuong = inserted.SLNhap
    from inserted inner join tHoaDonNhap on inserted.SoHDN=tHoaDonNhap.SoHDN
    select @donGia = tSach.DonGiaNhap
    from tSach
    where MaSach = @maSach
    update tNhaCungCap
    set SoLuongSach = ISNULL(SoLuongSach, 0) + @soLuong,
        TongTienHang = ISNULL(TongTienHang, 0) + @soLuong * @donGia
    where MaNCC = @maNCC
end
go
update tChiTietHDN set tChiTietHDN.SLNhap=20 where tChiTietHDN.SoHDN = N'HDN01'
select * from tNhaCungCap
go
--15.Tạo trigger trên bảng thoadonban thực hiện xóa các chi tiết hóa đơn mỗi khi xóa hóa đơn





--Kiểm tra

--Câu 1:
create or alter view View_Cau1
as
	select tKhachHang.MaKH,tKhachHang.TenKH,tHoaDonBan.SoHDB,Sum(tChiTietHDB.SLBan*tSach.DonGiaBan) as TongTien
	from tKhachHang 
	inner join tHoaDonBan on tKhachHang.MaKH=tHoaDonBan.MaKH
	inner join tChiTietHDB on tChiTietHDB.SoHDB=tHoaDonBan.SoHDB
	inner join tSach on tSach.MaSach=tChiTietHDB.MaSach
	where YEAR(tHoaDonBan.NgayBan) = 2014
	group by tKhachHang.MaKH,tKhachHang.TenKH,tHoaDonBan.SoHDB
go
select * from View_Cau1
go

-- Câu 2: Thêm trường Tổng số đầu sách vào bảng thể loại, cập nhật tự động
--        cho trường này mỗi khi xóa 1 bản ghi sách
alter table tTheLoai
add TongSoDauSach int null
go
create or alter trigger Trig_Cau2KiemTra
on tSach
after delete
as
begin
	declare @maTL nvarchar(10),
			@TongSoSach int 
	select @TongSoSach= (select COUNT(tSach.MaSach) from tSach where MaTheLoai = @maTL)
	select @maTL=deleted.MaTheLoai from deleted
	update tTheLoai set tTheLoai.TongSoDauSach = @TongSoSach-1
	where tTheLoai.MaTheLoai = @maTL
end
go

delete from tChiTietHDB where MaSach=N'S03'
delete from tSach where MaSach=N'S03'
select * from tTheLoai


-- Câu 3:
exec sp_addlogin 'NnguyenMaiTrang', '123'
exec sp_addlogin 'NguyenVanTrieu', '123'

use BT1CSD
exec sp_adduser 'NnguyenMaiTrang','UserNnguyenMaiTrang'
exec sp_adduser 'NguyenVanTrieu','UserNguyenVanTrieu'

grant select,update on tSach to UserNnguyenMaiTrang with grant option
grant select,update on tSach to UserNguyenVanTrieu 
go


-- Đề 2
-- Câu 1:
create or alter procedure Test_Cau1
(
	@nam int,
	@soLuongNhap int output,
	@soLuongBan int output
)
as
begin
	select @soLuongNhap = SUM(tChiTietHDN.SLNhap)
	from tChiTietHDN 
	inner join tSach on tChiTietHDN.MaSach = tSach.MaSach
	inner join tHoaDonNhap on tHoaDonNhap.SoHDN = tChiTietHDN.SoHDN
	where YEAR(tHoaDonNhap.NgayNhap) = @nam
	select @soLuongBan = SUM(tChiTietHDB.SLBan)
	from tChiTietHDB
	inner join tHoaDonBan on tHoaDonBan.SoHDB = tChiTietHDB.SoHDB
	inner join tSach on tChiTietHDB.MaSach = tSach.MaSach
	where YEAR(tHoaDonBan.NgayBan) = @nam
end
go
declare @namTest int = 2014
declare @soLuongNhapTest int
declare @soLuongBanTest int

exec Test_Cau1
	@nam = @namTest,
	@soLuongNhap = @soLuongNhapTest output,
	@soLuongBan = @soLuongBanTest output

print 'Nam: '+ + cast(@namTest as nvarchar(20))
print 'So luong nhap: '+ + cast(@soLuongNhapTest as nvarchar(10))
print 'So luong ban: '+ + cast(@soLuongBanTest as nvarchar(10))
go

-- Câu 2:
alter table tHoaDonBan
add TongTien money null
go

create or alter trigger Trig_Cau2
on tChiTietHDB
after insert, update
as
begin
	declare @soHDB nvarchar(10), 
	        @maSach nvarchar(10), 
			@slg int, 
			@donGia money
   select @soHDB = inserted.SoHDB, @maSach = inserted.MaSach, @slg = inserted.SLBan
   from inserted
   select @donGia = tSach.DonGiaBan from tSach where tSach.MaSach = @maSach
   update tHoaDonBan set TongTien = TongTien + @slg*@donGia where tHoaDonBan.SoHDB = @soHDB
end
go
--delete from tChiTietHDB WHERE SoHDB='HDB01' and tChiTietHDB.MaSach = N'S04'
update tChiTietHDB set tChiTietHDB.SLBan=15 where tChiTietHDB.SoHDB = 'HDB03'
select * from tHoaDonBan
go

-- Câu 3:
create or alter function Test_Cau3
(
	@MaLoai nvarchar(10)
)
returns table
as return
(	
	with SLSachNhap as (
		select tSach.MaSach, tSach.TenSach, sum(isnull(SLNhap, 0)) as TongSoLgNhap
		from tSach left outer join tChiTietHDN on tSach.MaSach = tChiTietHDN.MaSach
		where tSach.MaTheLoai = @MaLoai
		group by tSach.MaSach, tSach.TenSach
	),
		SLSachBan as (
		select tSach.MaSach, tSach.TenSach, sum(isnull(SLBan, 0)) as TongSoLgBan
		from tSach left outer join tChiTietHDB on tSach.MaSach = tChiTietHDB.MaSach
		where tSach.MaTheLoai = @MaLoai
		group by tSach.MaSach, tSach.TenSach
	)
	select tSach.MaSach, tSach.TenSach, SLSachNhap.TongSoLgNhap, SLSachBan.TongSoLgBan
	from tSach inner join SLSachNhap on tSach.MaSach = SLSachNhap.MaSach
				inner join SLSachBan on tSach.MaSach = SLSachBan.MaSach
)
go
select * from Test_Cau3('TL01')
go



create or alter view Test1
as
	select top(3) tNhanVien.MaNV, tNhanVien.TenNV, SUM(tChiTietHDB.SLBan*tSach.DonGiaBan) as DoanhSo
	from tNhanVien
	inner join tHoaDonBan on tNhanVien.MaNV = tHoaDonBan.MaNV
	inner join tChiTietHDB on tHoaDonBan.SoHDB = tChiTietHDB.SoHDB
	inner join tSach on tSach.MaSach = tChiTietHDB.MaSach
	group by tNhanVien.MaNV, tNhanVien.TenNV
	order by DoanhSo desc
go
select * from Test1

-- Câu 2
alter table tKhachHang
add TongTienTieu money null
go
create or alter trigger Test2 
on tChiTietHDB 
after insert, update ,delete
as
begin
	declare @maKhach nvarchar(10),
		    @soHD nvarchar(10),
			@maSach nvarchar(20),
			@soLuong int,
			@donGia money
	select @soHD=inserted.SoHDB, @maSach=inserted.MaSach,@soLuong=inserted.SLBan
	from inserted
	select @soHD=deleted.SoHDB, @maSach=deleted.MaSach,@soLuong=deleted.SLBan
	from deleted
	select @donGia=tSach.DonGiaBan from tSach where tSach.MaSach=@maSach
	select @maKhach=tHoaDonBan.MaKH
	from tHoaDonBan where tHoaDonBan.SoHDB=@soHD
	if(select count(*) from inserted)>0
	begin
		update tKhachHang set TongTienTieu=ISNULL(TongTienTieu,0)+@soLuong*@donGia
	     where tKhachHang.MaKH=@maKhach
	end
	if(select count(*) from inserted)=0 and (select count(*) from deleted)>0
	begin
		update tKhachHang set TongTienTieu=ISNULL(TongTienTieu,0)-@soLuong*@donGia
	     where tKhachHang.MaKH = @maKhach
	end
end
go
update tChiTietHDB set tChiTietHDB.SLBan=20 where tChiTietHDB.SoHDB = 'HDB06'
select * from tKhachHang
go

-- Thêm trường số lượng sách và Tổng tiền tiêu dùng vào bảng Khách hàng, cập nhật dữ liệu cho trường này 
-- mỗi khi thêm, sửa, xóa
alter table tKhachHang
add SoLuongSach money null
go
alter table tKhachHang
add TongTienTieu money null
go
create or alter trigger Test2 
on tChiTietHDB 
after insert, update ,delete
as
begin
	if(select count(*) from inserted)>0
	begin
		UPDATE kh
		SET kh.SoLuongSach = kh.SoLuongSach + i.SLBan,
			kh.TongTienTieu = kh.TongTienTieu + (s.DonGiaBan * i.SLBan)
		FROM inserted i
		INNER JOIN tSach s ON i.MaSach = s.MaSach
		INNER JOIN tHoaDonBan hdb ON i.SoHDB = hdb.SoHDB
		INNER JOIN tKhachHang kh ON hdb.MaKH = kh.MaKH;	     
	end
	if(select count(*) from inserted)=0 and (select count(*) from deleted)>0
	begin
	    UPDATE kh
		SET kh.SoLuongSach = kh.SoLuongSach - d.SLBan,
			kh.TongTienTieu = kh.TongTienTieu - (s.DonGiaBan * d.SLBan)
		FROM deleted d
		INNER JOIN tSach s ON d.MaSach = s.MaSach
		INNER JOIN tHoaDonBan hdb ON d.SoHDB = hdb.SoHDB
		INNER JOIN tKhachHang kh ON hdb.MaKH = kh.MaKH;
	end
end
go
update tChiTietHDB set tChiTietHDB.SLBan=20 where tChiTietHDB.SoHDB = 'HDB03'
select * from tKhachHang
go

-- Câu 3: 
create or alter procedure Test3
(
	@maNhaCC nvarchar(20),
	@soLuongBan int output,
	@soLuongNhap int output
)
as
begin
	select @soLuongNhap = SUM(tChiTietHDN.SLNhap)
	from tChiTietHDN 
	inner join tSach on tChiTietHDN.MaSach = tSach.MaSach
	inner join tHoaDonNhap on tHoaDonNhap.SoHDN = tChiTietHDN.SoHDN
	where tHoaDonNhap.MaNCC = @maNhaCC
	select @soLuongBan = SUM(tChiTietHDB.SLBan)
	from tChiTietHDB
	inner join tHoaDonBan on tHoaDonBan.SoHDB = tChiTietHDB.SoHDB
	inner join tSach on tChiTietHDB.MaSach = tSach.MaSach
	inner join tNhanVien on tNhanVien.MaNV = tHoaDonBan.MaNV
	inner join tHoaDonNhap on tHoaDonNhap.MaNV = tNhanVien.MaNV
	where tHoaDonNhap.MaNCC = @maNhaCC
end
go
declare @maNhaCCTest nvarchar(20) = N'NCC01'
declare @soLuongBanTest int
declare @soLuongNhapTest int 
exec Test3 
	@maNhaCC = @maNhaCCTest,
	@soLuongBan = @soLuongBanTest output,
	@soLuongNhap = @soLuongNhapTest output

print'Ma nha cung cap: '+ cast(@maNhaCCTest as nvarchar(20))
print'So luong ban: '+ cast(@soLuongBanTest as nvarchar(20))
print'So luong nhap: '+ cast(@soLuongNhapTest as nvarchar(20))
GO




CREATE OR ALTER VIEW Test_Cau23
AS
	SELECT TOP(2) WITH TIES tNhanVien.MaNV, tNhanVien.TenNV, SUM(tChiTietHDB.SLBan*tSach.DonGiaBan) AS DoanhThu
	FROM tNhanVien
	JOIN tHoaDonBan ON tNhanVien.MaNV = tHoaDonBan.MaNV
	JOIN tChiTietHDB ON tChiTietHDB.SoHDB = tHoaDonBan.SoHDB
	JOIN tSach ON tSach.MaSach = tChiTietHDB.MaSach
	WHERE YEAR(NgayBan) = 2014 
	GROUP BY tNhanVien.MaNV, tNhanVien.TenNV
	ORDER BY SUM(tChiTietHDB.SLBan*tSach.DonGiaBan) DESC
GO
SELECT * FROM Test_Cau23
GO



-- Câu 30:
-- Đáp án B
ALTER TABLE tHoaDonBan 
Add SoSanPham int
GO
Create trigger SoSanPHamBan On tChiTietHDB
after update, insert, delete as
begin
	update tHoaDonBan set SoSanPham = SoSanPham + SLBan
	where SoHDB in (Select SoHDB from inserted)
	update tHoaDonBan set SoSanPham = SoSanPham - SLBan
	where SoHDB in (Select SoHDB from deleted)
end
go

-- đáp án C
Create trigger SoSanPhamBan2 On tChiTietHDB
after update, insert, delete as
begin
	declare @sohdb Nvarchar(10), @sl int, @sohdb1 Nvarchar(10), @sl1 int
	select @sohdb = SoHDB, @sl = SLBan From inserted
	update tHoaDonBan set SoSanPham = SoSanPham + @sl
	where SoHDB = @sohdb
	select @sohdb1 = SoHDB, @sl1 = SLBan From deleted
	update tHoaDonBan set SoSanPham = SoSanPham - @sl1
	where SoHDB = @sohdb1
end