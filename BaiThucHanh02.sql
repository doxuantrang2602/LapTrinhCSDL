create database QLDonDatHang
USE QLDonDatHang
GO
/****** Object:  Table [dbo].[CT_HOADON]    Script Date: 21/09/2021 1:43:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_HOADON](
	[MaHD] [nvarchar](50) NOT NULL,
	[MaHH] [nvarchar](50) NOT NULL,
	[SL] [int] NULL,
 CONSTRAINT [PK_CT_HOADON] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PHIEUNHAP]    Script Date: 21/09/2021 1:43:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PHIEUNHAP](
	[MaPN] [nvarchar](50) NOT NULL,
	[MaHH] [nvarchar](50) NOT NULL,
	[GiaMua] [float] NULL,
	[SL] [int] NULL,
 CONSTRAINT [PK_CT_PHIEUNHAP] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC,
	[MaHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HANGHOA]    Script Date: 21/09/2021 1:43:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HANGHOA](
	[MaHH] [nvarchar](50) NOT NULL,
	[HangSX] [nvarchar](255) NULL,
	[TenHH] [nvarchar](255) NULL,
	[GiaBan] [float] NULL,
	[DacDiem] [nvarchar](max) NULL,
 CONSTRAINT [PK_HANGHOA] PRIMARY KEY CLUSTERED 
(
	[MaHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 21/09/2021 1:43:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MaHD] [nvarchar](50) NOT NULL,
	[MaKH] [nvarchar](50) NULL,
	[MaNV] [nvarchar](50) NULL,
	[NgayLap] [datetime] NULL,
 CONSTRAINT [PK_HOADON] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 21/09/2021 1:43:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [nvarchar](50) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [nvarchar](15) NULL,
	[NgaySInh] [date] NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 21/09/2021 1:43:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[MaNCC] [nvarchar](50) NOT NULL,
	[TenNCC] [nvarchar](255) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[SDT] [nvarchar](15) NULL,
 CONSTRAINT [PK_NHACUNGCAP] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 21/09/2021 1:43:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[QueQuan] [nvarchar](max) NULL,
	[Gioi Tinh] [nvarchar](10) NULL,
	[SDT] [nvarchar](15) NULL,
	[NgaySinh] [datetime] NULL,
	[NgayLV] [datetime] NULL,
	[HSL] [nvarchar](50) NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUNHAP]    Script Date: 21/09/2021 1:43:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUNHAP](
	[MaPN] [nvarchar](50) NOT NULL,
	[MaNV] [nvarchar](50) NULL,
	[NgayLap] [datetime] NULL,
	[MaNCC] [nvarchar](50) NULL,
 CONSTRAINT [PK_PHIEUNHAP] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0001', N'0003', 1)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0001', N'0004', 15)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0001', N'0007', 5)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0002', N'0003', 3)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0002', N'0004', 12)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0002', N'0006', 7)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0002', N'0008', 11)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0003', N'0006', 9)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0003', N'0009', 15)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0004', N'0009', 3)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0005', N'0010', 14)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0006', N'0011', 8)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0007', N'0011', 11)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0008', N'0012', 12)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0009', N'0012', 9)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0010', N'0012', 5)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0011', N'0015', 15)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0011', N'0016', 11)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0012', N'0002', 10)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0012', N'0016', 15)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0013', N'0003', 11)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0013', N'0011', 13)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0014', N'0012', 15)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0015', N'0013', 4)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0015', N'0014', 12)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0016', N'0008', 3)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0016', N'0009', 2)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0016', N'0015', 13)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0017', N'0011', 11)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0018', N'0001', 6)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0018', N'0012', 2)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0019', N'0002', 7)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0019', N'0003', 9)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0019', N'0004', 10)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0019', N'0005', 11)
GO
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'1', N'0001', 20000000, 10)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'1', N'0012', 7500000, 10)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'1', N'0016', 3000000, 20)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'10', N'0010', 7000000, 10)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'10', N'0011', 8000000, 5)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'11', N'0011', 8000000, 10)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'11', N'0015', 4900000, 20)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'2', N'0002', 19000000, 5)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'2', N'0013', 5500000, 10)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'3', N'0003', 16000000, 10)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'3', N'0014', 5000000, 10)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'4', N'0004', 11000000, 10)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'4', N'0015', 4900000, 5)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'5', N'0002', 20000000, 5)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'5', N'0005', 14000000, 10)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'6', N'0001', 19500000, 5)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'6', N'0006', 11000000, 10)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'7', N'0003', 16000000, 10)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'7', N'0007', 10000000, 5)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'8', N'0004', 11000000, 10)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'8', N'0008', 10000000, 5)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'9', N'0005', 13800000, 10)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'9', N'0009', 7500000, 5)
GO
INSERT [dbo].[HANGHOA] ([MaHH], [HangSX], [TenHH], [GiaBan], [DacDiem]) VALUES (N'0001', N'Samsung', N'Galaxy note Edge', 20990000, NULL)
INSERT [dbo].[HANGHOA] ([MaHH], [HangSX], [TenHH], [GiaBan], [DacDiem]) VALUES (N'0002', N'Apple', N'Iphone 6 Plus 16GB', 19590000, NULL)
INSERT [dbo].[HANGHOA] ([MaHH], [HangSX], [TenHH], [GiaBan], [DacDiem]) VALUES (N'0003', N'HTC', N'One M9', 16990000, NULL)
INSERT [dbo].[HANGHOA] ([MaHH], [HangSX], [TenHH], [GiaBan], [DacDiem]) VALUES (N'0004', N'Sony', N'Z2', 11990000, NULL)
INSERT [dbo].[HANGHOA] ([MaHH], [HangSX], [TenHH], [GiaBan], [DacDiem]) VALUES (N'0005', N'Sony', N'Z3', 14990000, NULL)
INSERT [dbo].[HANGHOA] ([MaHH], [HangSX], [TenHH], [GiaBan], [DacDiem]) VALUES (N'0006', N'Sony', N'Z3 Compact', 11990000, NULL)
INSERT [dbo].[HANGHOA] ([MaHH], [HangSX], [TenHH], [GiaBan], [DacDiem]) VALUES (N'0007', N'Nokia', N'Lumia 930', 10990000, NULL)
INSERT [dbo].[HANGHOA] ([MaHH], [HangSX], [TenHH], [GiaBan], [DacDiem]) VALUES (N'0008', N'Oppo', N'R5', 10000000, NULL)
INSERT [dbo].[HANGHOA] ([MaHH], [HangSX], [TenHH], [GiaBan], [DacDiem]) VALUES (N'0009', N'Oppo', N'N1 Mini', 8490000, NULL)
INSERT [dbo].[HANGHOA] ([MaHH], [HangSX], [TenHH], [GiaBan], [DacDiem]) VALUES (N'0010', N'Oppo', N'R1K R8001', 7990000, NULL)
INSERT [dbo].[HANGHOA] ([MaHH], [HangSX], [TenHH], [GiaBan], [DacDiem]) VALUES (N'0011', N'HTC', N'Desire 826', 8690000, NULL)
INSERT [dbo].[HANGHOA] ([MaHH], [HangSX], [TenHH], [GiaBan], [DacDiem]) VALUES (N'0012', N'Pantech', N'Vega iron 2 A910S', 8200000, NULL)
INSERT [dbo].[HANGHOA] ([MaHH], [HangSX], [TenHH], [GiaBan], [DacDiem]) VALUES (N'0013', N'Sony', N'C3', 6000000, NULL)
INSERT [dbo].[HANGHOA] ([MaHH], [HangSX], [TenHH], [GiaBan], [DacDiem]) VALUES (N'0014', N'Asus', N'Zenfone 6', 5500000, NULL)
INSERT [dbo].[HANGHOA] ([MaHH], [HangSX], [TenHH], [GiaBan], [DacDiem]) VALUES (N'0015', N'Lenovo', N'P70', 5400000, NULL)
INSERT [dbo].[HANGHOA] ([MaHH], [HangSX], [TenHH], [GiaBan], [DacDiem]) VALUES (N'0016', N'Sony', N'C3', 3500000, NULL)
GO
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLap]) VALUES (N'0001', N'0019', N'0004', CAST(N'2015-04-02T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLap]) VALUES (N'0002', N'0020', N'0002', CAST(N'2016-04-03T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLap]) VALUES (N'0003', N'0003', N'0001', CAST(N'2015-03-16T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLap]) VALUES (N'0004', N'0004', N'0001', CAST(N'2015-03-17T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLap]) VALUES (N'0005', N'0002', N'0003', CAST(N'2015-03-24T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLap]) VALUES (N'0006', N'0002', N'0001', CAST(N'2015-03-17T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLap]) VALUES (N'0007', N'0004', N'0003', CAST(N'2014-03-17T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLap]) VALUES (N'0008', N'0005', N'0002', CAST(N'2015-03-20T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLap]) VALUES (N'0009', N'0006', N'0003', CAST(N'2015-03-21T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLap]) VALUES (N'0010', N'0007', N'0004', CAST(N'2015-03-21T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLap]) VALUES (N'0011', N'0005', N'0004', CAST(N'2015-03-22T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLap]) VALUES (N'0012', N'0002', N'0003', CAST(N'2014-03-22T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLap]) VALUES (N'0013', N'0004', N'0002', CAST(N'2015-03-24T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLap]) VALUES (N'0014', N'0011', N'0002', CAST(N'2015-03-25T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLap]) VALUES (N'0015', N'0003', N'0002', CAST(N'2015-03-22T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLap]) VALUES (N'0016', N'0008', N'0003', CAST(N'2016-03-23T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLap]) VALUES (N'0017', N'0009', N'0002', CAST(N'2015-03-23T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLap]) VALUES (N'0018', N'0010', N'0001', CAST(N'2015-03-24T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLap]) VALUES (N'0019', N'0012', N'0001', CAST(N'2015-03-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0001', N'Nguyễn Văn Hùng', N'Cầu Giấy - Hà Nội', N'0978965195', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0002', N'Bùi Minh Chí', N'Hà Đông', N'0978965236', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0003', N'Trần Chí Kiên', N'Tây Hồ - Hà Nội', N'0912559654', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0004', N'Nguyễn Hữu Minh', N'Bắc Từ Liêm - Hà Nội', N'01658256325', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0005', N'Trần Lan Anh', N'Hà Đông', N'0985621531', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0006', N'Lê Thị Quỳnh', N'Ba Vì - Hà Nội', N'0912565842', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0007', N'Nguyễn Tuấn Anh', N'Nam Từ Liêm - Hà Nội', N'0925632514', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0008', N'Lê Kim Anh', N'Hà Đông', N'01625632512', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0009', N'Trần Trung Đức', N'Cầu Giấy - Hà Nội', N'0921235236', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0010', N'Nguyễn Xuân Huy', N'Cầu Giấy - Hà Nội', N'0912584633', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0011', N'Bùi Duy Khánh', N'Cầu Giấy - HN', N'0978563256', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0012', N'Chương Văn Tài', N'Hà Đông', N'0985623652', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0013', N'Nguyễn Văn An', N'Vĩnh Phúc', N'0985632563', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0014', N'Lê Thị Hoa', N'Nam Từ Liêm - Hà Nội', N'0912355658', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0015', N'Bùi Thị Trang', N'Tây Hồ - Hà Nội', N'0912365896', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0016', N'Lê Huyền Trang', N'Nam Từ Liêm - Hà Nội', N'0987562632', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0017', N'Tăng Thanh Hà', N'Tây Hồ - Hà Nội', N'0912563259', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0018', N'Hồ Ngọc Hà', N'Tây Hồ - Hà Nội', N'0986523625', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0019', N'Bùi Minh Hằng', N'Nam Từ Liêm - Hà Nội', N'0986523652', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0020', N'Đàm Vĩnh Hương', N'Tây Hồ - Hà Nội', N'0985623652', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0021', N'Nguyễn Ánh Hồng', N'Đống Đa - Hà Nội', N'0909900999', NULL)
GO
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (N'0001', N'FPT', NULL, NULL)
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (N'0002', N'Viettel', NULL, NULL)
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (N'0003', N'Thế giới di động', NULL, NULL)
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (N'0004', N'Nhật Cường', NULL, NULL)
GO
INSERT [dbo].[NHANVIEN] ([MaNV], [HoTen], [QueQuan], [Gioi Tinh], [SDT], [NgaySinh], [NgayLV], [HSL]) VALUES (N'0001', N'Tăng Thanh Hà', N'Số 3, Ngõ 165,Cầu Giấy - Hà Nội', N'Nữ', N'0978652365', CAST(N'2000-09-21T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[NHANVIEN] ([MaNV], [HoTen], [QueQuan], [Gioi Tinh], [SDT], [NgaySinh], [NgayLV], [HSL]) VALUES (N'0002', N'Nguyễn Văn Hùng', N'Số 69, Ngách 24, ngõ 23, Từ Liêm - Hà Nội', N'Nam', N'0912563215', CAST(N'2001-09-21T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[NHANVIEN] ([MaNV], [HoTen], [QueQuan], [Gioi Tinh], [SDT], [NgaySinh], [NgayLV], [HSL]) VALUES (N'0003', N'Tạ Quang Huy', N'Số 25, Ngõ 196, Cầu Giấy -  Hà Nội', N'Nam', N'016502256523', CAST(N'2000-08-10T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[NHANVIEN] ([MaNV], [HoTen], [QueQuan], [Gioi Tinh], [SDT], [NgaySinh], [NgayLV], [HSL]) VALUES (N'0004', N'Nguyễn Thị Ngọc Anh', N'Số 27, Ngách 49, Ngõ 165, Cầu Giấy - Hà Nội', N'Nữ', N'0978563254', CAST(N'2005-06-07T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[NHANVIEN] ([MaNV], [HoTen], [QueQuan], [Gioi Tinh], [SDT], [NgaySinh], [NgayLV], [HSL]) VALUES (N'0005', N'Trần Quang Khải', N'Số 27, Ngách 49, Ngõ 165, Cầu Giấy - Hà Nội', N'Nam', N'09088888888', CAST(N'1999-07-07T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [NgayLap], [MaNCC]) VALUES (N'1', N'0002', CAST(N'2015-03-01T00:00:00.000' AS DateTime), N'0001')
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [NgayLap], [MaNCC]) VALUES (N'10', N'0003', CAST(N'2015-05-19T00:00:00.000' AS DateTime), N'0002')
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [NgayLap], [MaNCC]) VALUES (N'11', N'0004', CAST(N'2015-05-31T00:00:00.000' AS DateTime), N'0003')
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [NgayLap], [MaNCC]) VALUES (N'2', N'0001', CAST(N'2015-03-02T00:00:00.000' AS DateTime), N'0004')
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [NgayLap], [MaNCC]) VALUES (N'3', N'0003', CAST(N'2015-03-04T00:00:00.000' AS DateTime), N'0001')
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [NgayLap], [MaNCC]) VALUES (N'4', N'0004', CAST(N'2015-03-05T00:00:00.000' AS DateTime), N'0001')
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [NgayLap], [MaNCC]) VALUES (N'5', N'0001', CAST(N'2015-03-06T00:00:00.000' AS DateTime), N'0002')
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [NgayLap], [MaNCC]) VALUES (N'6', N'0003', CAST(N'2015-03-06T00:00:00.000' AS DateTime), N'0004')
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [NgayLap], [MaNCC]) VALUES (N'7', N'0002', CAST(N'2015-05-19T00:00:00.000' AS DateTime), N'0003')
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [NgayLap], [MaNCC]) VALUES (N'8', N'0004', CAST(N'2015-05-19T00:00:00.000' AS DateTime), N'0002')
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [NgayLap], [MaNCC]) VALUES (N'9', N'0003', CAST(N'2015-05-19T00:00:00.000' AS DateTime), N'0003')
GO
ALTER TABLE [dbo].[CT_HOADON]  WITH CHECK ADD  CONSTRAINT [FK_CT_HOADON_HANGHOA] FOREIGN KEY([MaHH])
REFERENCES [dbo].[HANGHOA] ([MaHH])
GO
ALTER TABLE [dbo].[CT_HOADON] CHECK CONSTRAINT [FK_CT_HOADON_HANGHOA]
GO
ALTER TABLE [dbo].[CT_HOADON]  WITH CHECK ADD  CONSTRAINT [FK_CT_HOADON_HOADON] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HOADON] ([MaHD])
GO
ALTER TABLE [dbo].[CT_HOADON] CHECK CONSTRAINT [FK_CT_HOADON_HOADON]
GO
ALTER TABLE [dbo].[CT_PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_CT_PHIEUNHAP_HANGHOA] FOREIGN KEY([MaHH])
REFERENCES [dbo].[HANGHOA] ([MaHH])
GO
ALTER TABLE [dbo].[CT_PHIEUNHAP] CHECK CONSTRAINT [FK_CT_PHIEUNHAP_HANGHOA]
GO
ALTER TABLE [dbo].[CT_PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_CT_PHIEUNHAP_PHIEUNHAP] FOREIGN KEY([MaPN])
REFERENCES [dbo].[PHIEUNHAP] ([MaPN])
GO
ALTER TABLE [dbo].[CT_PHIEUNHAP] CHECK CONSTRAINT [FK_CT_PHIEUNHAP_PHIEUNHAP]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_KHACHHANG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_KHACHHANG]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_NHANVIEN] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_NHANVIEN]
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUNHAP_NHACUNGCAP] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NHACUNGCAP] ([MaNCC])
GO
ALTER TABLE [dbo].[PHIEUNHAP] CHECK CONSTRAINT [FK_PHIEUNHAP_NHACUNGCAP]
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUNHAP_NHANVIEN] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[PHIEUNHAP] CHECK CONSTRAINT [FK_PHIEUNHAP_NHANVIEN]
GO


-- View

--1. Liệt kê thông tin mã nhân viên, họ tên, tuổi, quê quán, số điện thoại, hệ số lương,
--   lương (=HSL * 1500000)
create or alter view View_Cau1
as
select NHANVIEN.MaNV, NHANVIEN.HoTen,NHANVIEN.QueQuan,year(getdate())-YEAR(NHANVIEN.NgaySinh) as Tuoi,
NHANVIEN.QueQuan as Que, NHANVIEN.SDT,NHANVIEN.HSL, NHANVIEN.HSL*1500000 as Luong
from NHANVIEN
go
select * from View_Cau1
go

--2. Liệt kê các nhân viên cùng quê Hà Nội
create or alter view View_Cau2
as
select NHANVIEN.MaNV, NHANVIEN.HoTen,year(getdate())-YEAR(NHANVIEN.NgaySinh) as Tuoi
from NHANVIEN
where NHANVIEN.QueQuan like N'%Hà Nội%'
go
select * from View_Cau2
go

--3. Liệt kê các mặt hàng của cùng nhà cung cấp có mã ‘0001’
create or alter view View_Cau3
as
select HANGHOA.MaHH,HANGHOA.TenHH, HANGHOA.GiaBan,PHIEUNHAP.MaNCC
from HANGHOA 
inner join CT_PHIEUNHAP on CT_PHIEUNHAP.MaHH=HANGHOA.MaHH
inner join PHIEUNHAP on PHIEUNHAP.MaPN = CT_PHIEUNHAP.MaPN
where PHIEUNHAP.MaNCC = N'0001'
go
select * from View_Cau3
go

--4. Tạo view doanh thu theo từng hóa đơn của tháng 11 năm 2021
create or alter view View_Cau4
as
select CT_HOADON.MaHD, Sum(CT_HOADON.SL*HANGHOA.GiaBan) as DoanhThu
from CT_HOADON
inner join HANGHOA on CT_HOADON.MaHH=HANGHOA.MaHH
inner join HOADON on HOADON.MaHD= CT_HOADON.MaHD
where YEAR(HOADON.NgayLap) = 2015 and MONTH(HOADON.NgayLap) = 3
group by CT_HOADON.MaHD
go
select * from View_Cau4
go

--5. Tạo view doanh thu theo mỗi khách hàng trong năm 2021
create or alter view View_Cau5
as
select KHACHHANG.MaKH, KHACHHANG.TenKH, SUM(CT_HOADON.SL*HANGHOA.GiaBan) as TongMua
from KHACHHANG
inner join HOADON on KHACHHANG.MaKH=HOADON.MaKH
inner join CT_HOADON on CT_HOADON.MaHD=HOADON.MaHD
inner join HANGHOA on HANGHOA.MaHH=CT_HOADON.MaHH
group by KHACHHANG.MaKH, KHACHHANG.TenKH
go
select * from View_Cau5
go

--6. Tạo view liệt kê số tiền phải trả cho mỗi nhà cung cấp trong năm 2021
create or alter view View_Cau6
as
select NHACUNGCAP.MaNCC,NHACUNGCAP.TenNCC, sum(CT_PHIEUNHAP.GiaMua*CT_PHIEUNHAP.SL) as SoTienPhaiTra
from NHACUNGCAP
inner join PHIEUNHAP on PHIEUNHAP.MaNCC = NHACUNGCAP.MaNCC
inner join CT_PHIEUNHAP on CT_PHIEUNHAP.MaPN=PHIEUNHAP.MaPN
where year(PHIEUNHAP.NgayLap) = 2015
group by NHACUNGCAP.MaNCC,NHACUNGCAP.TenNCC
go
select * from View_Cau6
go
--7. Tạo view số lượng nhập và bán ứng với mỗi sản phẩm trong năm 2021
create or alter view View_Cau7
as
select HANGHOA.MaHH,sum(CT_PHIEUNHAP.SL) as SoLuongNhap,sum(CT_HOADON.SL) as SoLuongBan
from HANGHOA
inner join CT_PHIEUNHAP on HANGHOA.MaHH=CT_PHIEUNHAP.MaHH
inner join CT_HOADON on CT_HOADON.MaHH=HANGHOA.MaHH
inner join PHIEUNHAP on CT_PHIEUNHAP.MaPN=PHIEUNHAP.MaPN
inner join HOADON on CT_HOADON.MaHD=HOADON.MaHD
where YEAR(PHIEUNHAP.NgayLap)=2015 and YEAR(HOADON.NgayLap)=2015
group by HANGHOA.MaHH
go
select * from View_Cau7
go



-- Procedure 

--1. Cho biết tổng số tiền của một hóa đơn nào đó theo mã hóa đơn
create or alter procedure Proc_Cau1
(
	@MaHD nvarchar(10),
	@TongTien money output
)
as
begin 
	select @TongTien=SUM(HANGHOA.GiaBan*CT_HOADON.SL)
	from HANGHOA 
	inner join CT_HOADON on HANGHOA.MaHH=CT_HOADON.MaHH
	where CT_HOADON.MaHD = @MaHD
end
go
declare @MaHDTest nvarchar(10) = N'0002'
declare @TongTienTest money

exec Proc_Cau1
	@MaHD=@MaHDTest,
	@TongTien=@TongTienTest output

print 'Ma hoa don: '+cast(@MaHDTest as nvarchar(10))
print 'Tong tien: '+cast(@TongTienTest as nvarchar(20))
go

--2. Cho biết tổng số hóa đơn đã lập được trong một tháng của một năm nào đó
create or alter procedure Proc_Cau2
(
	@thang int,
	@nam int,
	@TongSoHD int output
)
as
begin
	select @TongSoHD=count(HOADON.MaHD) 
	from HOADON
	where YEAR(HOADON.NgayLap)=@nam and MONTH(2015)=@thang
end
go
declare @thangTest int=3
declare @namTest int=2015
declare @TongSoHDTest int 

exec Proc_Cau2
	@thang=@thangTest,
	@nam=@namTest,
	@TongSoHD=@TongSoHDTest output

print 'Thang: '+cast(@thangTest as nvarchar(2))
print 'Nam: '+cast(@namTest as nvarchar(10))
print 'So Hoa Don: '+cast(@TongSoHDTest as nvarchar(2))
go

--3. Cho biết tổng số hóa đơn đã lập và tổng doanh thu đã bán hàng của một nhân
--   viên trong một năm nào đó dựa vào mã nhân viên
create or alter procedure Proc_Cau3
(
	@maNV nvarchar(20),
	@nam int,
	@TongSoHD int output,
	@DoanhThuBanHang money output
)
as
begin
	select @TongSoHD=count(HOADON.MaHD), @DoanhThuBanHang=sum(HANGHOA.GiaBan*CT_HOADON.SL)
	from HOADON 
	inner join NHANVIEN on HOADON.MaNV = NHANVIEN.MaNV
	inner join CT_HOADON on HOADON.MaHD = CT_HOADON.MaHD
	inner join HANGHOA on HANGHOA.MaHH = CT_HOADON.MaHH
	where NHANVIEN.MaNV=@maNV and YEAR(HOADON.NgayLap)=2015
end
go
declare @maNVTest nvarchar(10)= N'0001'
declare @namTest int=2015
declare @TongSoHDTest int 
declare @DoanhThuBanHangTest money 
exec Proc_Cau3
	@maNV=@maNVTest,
	@nam=@namTest,
	@TongSoHD=@TongSoHDTest output,
	@DoanhThuBanHang=@DoanhThuBanHangTest output

print 'Ma NV: '+cast(@maNVTest as nvarchar(4))
print 'Nam: '+cast(@namTest as nvarchar(10))
print 'So Hoa Don: '+cast(@TongSoHDTest as nvarchar(100))
print 'Doanh thu ban hang: '+cast(@DoanhThuBanHangTest as nvarchar(20))
go


--4. Cho biết tổng số lượng đã nhập và tổng số tiền đã nhập của một mặt hàng nào
--   đó trong một năm nào đó dựa vào mã hàng hóa nào đó
create or alter procedure Proc_Cau4
(
	@maHang nvarchar(10),
	@nam int,
	@SoLuongNhap int output,
	@TongTienNhap money output
)
as
begin
	select @SoLuongNhap=SUM(CT_PHIEUNHAP.SL), @TongTienNhap=SUM(CT_PHIEUNHAP.GiaMua*CT_PHIEUNHAP.SL)
	from CT_PHIEUNHAP 
	inner join HANGHOA on HANGHOA.MaHH = CT_PHIEUNHAP.MaHH 
	inner join PHIEUNHAP on CT_PHIEUNHAP.MaPN = PHIEUNHAP.MaPN
	where HANGHOA.MaHH=@maHang and YEAR(PHIEUNHAP.NgayLap)=@nam
end
go
declare @maHangTest nvarchar(10)= N'0012'
declare @namTest int=2015
declare @SoLuongNhapTest int 
declare @TongTienNhapTest money 
exec Proc_Cau4
	@maHang=@maHangTest,
	@nam=@namTest,
	@SoLuongNhap=@SoLuongNhapTest output,
	@TongTienNhap=@TongTienNhapTest output

print 'Ma Hang: '+cast(@maHangTest as nvarchar(4))
print 'Nam: '+cast(@namTest as nvarchar(10))
print 'So Luong Nhap: '+cast(@SoLuongNhapTest as nvarchar(100))
print 'Tong tien nhap: '+cast(@TongTienNhapTest as nvarchar(20))
go

--5. Tính tổng số tiền thu được của từng hóa đơn
create or alter procedure Proc_Cau5
(
	@soHD nvarchar(10),
	@TongTien money output 
)
as
begin
	select @TongTien=Sum(CT_HOADON.SL*HANGHOA.GiaBan) 
	from CT_HOADON
	inner join HANGHOA on HANGHOA.MaHH = CT_HOADON.MaHH
	where CT_HOADON.MaHD=@soHD
end
go
declare @soHDTest nvarchar(10) = N'0001'
declare @TongTienTest money
exec Proc_Cau5
	@soHD=@soHDTest,
	@TongTien=@TongTienTest output
print 'So HD '+cast(@soHDTest as nvarchar(100))
print 'Tong tien: '+cast(@TongTienTest as nvarchar(20))
go



--6. Tính tổng số lượng và tổng số tiền đã bán được của từng hàng hóa
create or alter procedure Proc_Cau6
(
	@maHang nvarchar(10),
	@SoLuongBan int output,
	@TongTien money output 
)
as
begin
	select @SoLuongBan=COUNT(CT_HOADON.MaHH), @TongTien=Sum(CT_HOADON.SL*HANGHOA.GiaBan)
	from CT_HOADON
	inner join HANGHOA on HANGHOA.MaHH = CT_HOADON.MaHH
	where HANGHOA.MaHH=@maHang
end
go

--7. Tính tổng số lượng và tổng số tiền đã nhập của từng hàng hóa
create or alter procedure Proc_Cau7
(
	@maHang nvarchar(10),
	@SoLuongNhap int,
	@TongTienNhap money output 
)
as
begin
	select @SoLuongNhap=COUNT(CT_PHIEUNHAP.MaHH), @TongTienNhap=Sum(CT_PHIEUNHAP.SL*CT_PHIEUNHAP.GiaMua)
	from CT_PHIEUNHAP
	inner join HANGHOA on HANGHOA.MaHH = CT_PHIEUNHAP.MaHH
	where HANGHOA.MaHH=@maHang
end
go

--8. Tính tổng số hóa đơn đã lập trong từng tháng của năm 2015
create or alter procedure Proc_Cau8
(
	@SoLuongHoaDon int 
)
as
begin
	select @SoLuongHoaDon = count(CT_HOADON.MaHD)
	from CT_HOADON 
	inner join HOADON on CT_HOADON.MaHD=HOADON.MaHD
	where YEAR(HOADON.NgayLap)=2015
end
go

select MONTH(HOADON.NgayLap) as Thang,count(CT_HOADON.MaHD)
	from CT_HOADON 
	inner join HOADON on CT_HOADON.MaHD=HOADON.MaHD
	where YEAR(HOADON.NgayLap)=2015
	group by MONTH(HOADON.NgayLap)



--I. Tạo TRIGGER

--1. Kiểm soát giới tính của nhân viên chỉ được nhập giá trị là ‘Nam’ hoặc ‘Nữ’
create or alter trigger Trig_Cau1


--2. Kiểm soát ngày vào làm (NgayLV) của nhân viên phải sau ngày sinh và đảm bảo
--   nhân viên trên 18 tuổi


--3. Thêm trường Đơn vị tính vào bảng Hàng hóa. Kiểm soát đơn vị tính khi nhập
--   hàng hóa chỉ được chứa từ “Cái”, “Hộp”, “Thùng”, “Kg”, “Chiếc”


--4. Tạo trigger cập nhật tự động giá của bảng hàng hóa sang bảng chi tiết hóa đơn
--   mỗi khi thêm mới bản ghi


--5. Thêm trường ChietKhau vào bảng CT_Hoadon và cập nhật tự động trường này
--   bằng 15% giá bán


--6. Thêm Trường ThanhTien và cập nhật tự động cho trường này


--7. Cập nhật lại giá của bảng hàng hóa sang bảng chi tiết hóa đơn




--II. Tạo FUNCTION

--1. Tạo hàm lấy danh sách nhân viên theo quê quán


--2. Tạo hàm lấy danh sách hóa đơn theo nhân viên và ngày (ngày/tháng/năm)


--3. Tạo hàm tính tổng tiền của từng hóa đơn với mã hóa đơn là tham số đầu vào


--4. Tạo hàm lấy danh sách nhà cung cấp theo mã hàng


--5. Tạo hàm lấy danh sách các mặt hàng theo mã nhà cung cấp


--6. Cho danh sách các khách hàng ở một quận nào đó







-- TRIGGER
-- 1. Kiểm soát giới tính của nhân viên chỉ được nhập giá trị là ‘Nam’ hoặc ‘Nữ’
CREATE OR ALTER TRIGGER TRIG1
ON NHANVIEN
for insert, update 
AS
BEGIN
	DECLARE @MANV NVARCHAR(5)
	DECLARE @GioiTinh NVARCHAR(20)
	SELECT @MANV = MaNV FROM inserted
	SELECT @GioiTinh = [Gioi Tinh] FROM NHANVIEN
	WHERE MaNV = @MANV
	IF @GioiTinh NOT IN (N'Nam',N'Nữ')
	BEGIN
	RAISERROR('Loi xay ra', 16,1);
	rollback transaction
	END
END

INSERT [dbo].[NHANVIEN] ([MaNV], [HoTen], [QueQuan], [Gioi Tinh], [SDT], [NgaySinh], [NgayLV], [HSL]) VALUES (N'0006', N'T?ng Thanh Hà', N'S? 3, Ngõ 165,C?u Gi?y - Hà N?i', N'Nam', N'0978652365', CAST(N'2000-09-21T00:00:00.000' AS DateTime), NULL, NULL)


-- 2. Kiểm soát ngày vào làm (NgayLV) của nhân viên phải sau ngày sinh và 
-- đảm bảo nhân viên trên 18 tuổi

CREATE OR ALTER TRIGGER TRIG3
ON NHANVIEN
for insert, update
AS
BEGIN
	DECLARE @MANV NVARCHAR(5)
	DECLARE @nam int
	DECLARE @thang int
	DECLARE @ngay int
	SELECT @MANV = MaNV FROM inserted
	SELECT @nam = YEAR(GETDATE()) - YEAR(NHANVIEN.NgayLV) FROM NHANVIEN
	SELECT @thang = MONTH(GETDATE()) - MONTH(NHANVIEN.NgayLV) FROM NHANVIEN
	SELECT @ngay = DAY(GETDATE()) - DAY(NHANVIEN.NgayLV) FROM NHANVIEN
	WHERE MaNV = @MANV
	IF 
	BEGIN
	RAISERROR('Loi xay ra', 16,1);
	rollback transaction
	END
END

-- 3. Thêm trường Đơn vị tính vào bảng Hàng hóa. Kiểm soát đơn vị tính khi nhập
-- hàng hóa chỉ được chứa từ “Cái”, “Hộp”, “Thùng”, “Kg”, “Chiếc”

GO
CREATE OR ALTER TRIGGER TRIG3
ON HANGHOA
for insert, update 
AS
BEGIN
	DECLARE @MAHH NVARCHAR(5)
	DECLARE @DONVI NVARCHAR(20)
	SELECT @MAHH = MaHH FROM inserted
	SELECT @DONVI = DonVi FROM HANGHOA
	WHERE MAHH = @MAHH
	IF @DONVI NOT IN (N'Cái',N'Hộp',N'Thùng',N'Kg',N'Chiếc')
	BEGIN
	RAISERROR('Loi xay ra', 16,1);
	rollback transaction
	END
END

INSERT [dbo].[HANGHOA] ([MaHH], [HangSX], [TenHH], [GiaBan], [DacDiem], [DonVi]) VALUES (N'0023', N'Sony', N'Z3 Compact', 11990000, NULL,N'UBUUHNUH')

DISABLE TRIGGER TRIG7 ON HANGHOA
-- 4. Thêm trường ChietKhau vào bảng CT_Hoadon và cập nhật tự động trường này bằng 15% giá bán
GO 
CREATE OR ALTER TRIGGER TRIG5
ON CT_HOADON
FOR INSERT, UPDATE
AS
BEGIN
    -- Cập nhật trường "ChietKhau" trong bảng "CT_Hoadon"
    UPDATE CT_HOADON
    SET ChietKhau =  0.15  -- Cập nhật "ChietKhau" bằng 15% giá bán
    FROM CT_HOADON AS c
    INNER JOIN inserted AS i ON c.MaHD = i.MaHD
END

INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0013', N'0015', 11)


-- 5. Thêm Trường ThanhTien và cập nhật tự động cho trường này
GO
CREATE OR ALTER TRIGGER TRIG6
ON CT_HOADON
AFTER INSERT
AS
BEGIN
    -- Cập nhật trường "Thành Tiền" trong bảng "Hóa Đơn"
    UPDATE HOADON
    SET ThanhTien = h.ThanhTien + (i.SL * hh.GiaBan)  -- Tính toán tổng thành tiền
    FROM HOADON AS h
    INNER JOIN inserted AS i ON h.MaHD = i.MaHD
    INNER JOIN HANGHOA AS hh ON i.MaHH = hh.MaHH
END
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0013', N'0019', 11)


-- 6. Cập nhật lại giá của bảng hàng hóa sang bảng chi tiết hóa đơn
GO
CREATE OR ALTER TRIGGER TRIG_UpdateGiaToCT_Hoadon
ON CT_HOADON
AFTER INSERT
AS
BEGIN
    UPDATE CT_HOADON
    SET Gia = hh.GiaBan
    FROM CT_HOADON AS c
    INNER JOIN inserted AS i ON c.MaHH = i.MaHH
    INNER JOIN HANGHOA AS hh ON i.MaHH = hh.MaHH
END

INSERT [dbo].[HANGHOA] ([MaHH], [HangSX], [TenHH], [GiaBan], [DacDiem]) VALUES (N'0021', N'Samsung', N'Galaxy note Edge', 3000000, NULL)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0017', N'0021', 11)
go


-- TRIGGER
-- 1. Kiểm soát giới tính của nhân viên chỉ được nhập giá trị là ‘Nam’ hoặc ‘Nữ’
CREATE OR ALTER TRIGGER TRIG1
ON NHANVIEN
for insert, update 
AS
BEGIN
	DECLARE @MANV NVARCHAR(5)
	DECLARE @GioiTinh NVARCHAR(20)
	SELECT @MANV = MaNV FROM inserted
	SELECT @GioiTinh = [Gioi Tinh] FROM NHANVIEN
	WHERE MaNV = @MANV
	IF @GioiTinh NOT IN (N'Nam',N'Nữ')
	BEGIN
	RAISERROR('Loi xay ra', 16,1);
	rollback transaction
	END
END

INSERT [dbo].[NHANVIEN] ([MaNV], [HoTen], [QueQuan], [Gioi Tinh], [SDT], [NgaySinh], [NgayLV], [HSL]) VALUES (N'0006', N'T?ng Thanh Hà', N'S? 3, Ngõ 165,C?u Gi?y - Hà N?i', N'Nam', N'0978652365', CAST(N'2000-09-21T00:00:00.000' AS DateTime), NULL, NULL)
go

-- 2. Kiểm soát ngày vào làm (NgayLV) của nhân viên phải sau ngày sinh và 
-- đảm bảo nhân viên trên 18 tuổi

CREATE OR ALTER TRIGGER TRIG3
ON NHANVIEN
for insert, update
AS
BEGIN
	DECLARE @MANV NVARCHAR(5)
	DECLARE @nam int
	DECLARE @thang int
	DECLARE @ngay int
	SELECT @MANV = MaNV FROM inserted
	SELECT @nam = YEAR(GETDATE()) - YEAR(NHANVIEN.NgayLV) FROM NHANVIEN
	SELECT @thang = MONTH(GETDATE()) - MONTH(NHANVIEN.NgayLV) FROM NHANVIEN
	SELECT @ngay = DAY(GETDATE()) - DAY(NHANVIEN.NgayLV) FROM NHANVIEN
	WHERE MaNV = @MANV
	IF 
	BEGIN
	RAISERROR('Loi xay ra', 16,1);
	rollback transaction
	END
END
go

-- 3. Thêm trường Đơn vị tính vào bảng Hàng hóa. Kiểm soát đơn vị tính khi nhập
-- hàng hóa chỉ được chứa từ “Cái”, “Hộp”, “Thùng”, “Kg”, “Chiếc”
CREATE OR ALTER TRIGGER TRIG3
ON HANGHOA
for insert, update 
AS
BEGIN
	DECLARE @MAHH NVARCHAR(5)
	DECLARE @DONVI NVARCHAR(20)
	SELECT @MAHH = MaHH FROM inserted
	SELECT @DONVI = DonVi FROM HANGHOA
	WHERE MAHH = @MAHH
	IF @DONVI NOT IN (N'Cái',N'Hộp',N'Thùng',N'Kg',N'Chiếc')
	BEGIN
	RAISERROR('Loi xay ra', 16,1);
	rollback transaction
	END
END

INSERT [dbo].[HANGHOA] ([MaHH], [HangSX], [TenHH], [GiaBan], [DacDiem], [DonVi]) VALUES (N'0023', N'Sony', N'Z3 Compact', 11990000, NULL,N'UBUUHNUH')

DISABLE TRIGGER TRIG7 ON HANGHOA

-- 4. Thêm trường ChietKhau vào bảng CT_Hoadon và cập nhật tự động trường này bằng 15% giá bán
GO 
CREATE OR ALTER TRIGGER TRIG5
ON CT_HOADON
FOR INSERT, UPDATE
AS
BEGIN
    -- Cập nhật trường "ChietKhau" trong bảng "CT_Hoadon"
    UPDATE CT_HOADON
    SET ChietKhau =  0.15  -- Cập nhật "ChietKhau" bằng 15% giá bán
    FROM CT_HOADON AS c
    INNER JOIN inserted AS i ON c.MaHD = i.MaHD
END

INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0013', N'0015', 11)


-- 5. Thêm Trường ThanhTien và cập nhật tự động cho trường này
GO
CREATE OR ALTER TRIGGER TRIG6
ON CT_HOADON
AFTER INSERT
AS
BEGIN
    -- Cập nhật trường "Thành Tiền" trong bảng "Hóa Đơn"
    UPDATE HOADON
    SET ThanhTien = h.ThanhTien + (i.SL * hh.GiaBan)  -- Tính toán tổng thành tiền
    FROM HOADON AS h
    INNER JOIN inserted AS i ON h.MaHD = i.MaHD
    INNER JOIN HANGHOA AS hh ON i.MaHH = hh.MaHH
END
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0013', N'0019', 11)


-- 6. Cập nhật lại giá của bảng hàng hóa sang bảng chi tiết hóa đơn
GO
CREATE OR ALTER TRIGGER TRIG_UpdateGiaToCT_Hoadon
ON CT_HOADON
AFTER INSERT
AS
BEGIN
    UPDATE CT_HOADON
    SET Gia = hh.GiaBan
    FROM CT_HOADON AS c
    INNER JOIN inserted AS i ON c.MaHH = i.MaHH
    INNER JOIN HANGHOA AS hh ON i.MaHH = hh.MaHH
END

INSERT [dbo].[HANGHOA] ([MaHH], [HangSX], [TenHH], [GiaBan], [DacDiem]) VALUES (N'0021', N'Samsung', N'Galaxy note Edge', 3000000, NULL)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0017', N'0021', 11)
go


-- FUNCTION
-- 1. Tạo hàm lấy danh sách nhân viên theo quê quán
CREATE OR ALTER FUNCTION FUNC1 
(
	@QUEQUAN NVARCHAR(20)
)
RETURNS TABLE
AS
RETURN 
(
	SELECT * FROM NHANVIEN WHERE NHANVIEN.QueQuan like @QUEQUAN
)
go
SELECT * FROM FUNC1(N'%Hà Nội%')
go

-- 2. Tạo hàm lấy danh sách hóa đơn theo nhân viên và ngày (ngày/tháng/năm)
CREATE OR ALTER FUNCTION FUNC2
(
	@MANV NVARCHAR(5),
	@NGAY DATETIME
)
RETURNS TABLE
AS
RETURN 
(
	SELECT HOADON.MaHD,HOADON.MaNV,HOADON.NgayLap 
	FROM HOADON
	WHERE HOADON.MaNV = @MANV AND HOADON.NgayLap = @NGAY
)
go
SELECT * FROM FUNC2(N'0001',N'2015-03-17 00:00:00.000')
go

-- 3. Tạo hàm tính tổng tiền của từng hóa đơn với mã hóa đơn là tham số đầu vào
CREATE OR ALTER FUNCTION FUNC3
(
	@MAHD NVARCHAR(5)
)
RETURNS TABLE
AS
RETURN 
(
	SELECT SUM(CT_HOADON.SL * HANGHOA.GiaBan) AS TONGTIEN
	FROM CT_HOADON INNER JOIN HANGHOA ON CT_HOADON.MaHH = HANGHOA.MaHH
	WHERE CT_HOADON.MaHD = @MAHD
)
go
SELECT * FROM FUNC3(N'0001')
go

-- 4. Tạo hàm lấy danh sách nhà cung cấp theo mã hàng
CREATE OR ALTER FUNCTION FUNC4 
(
	@MAHANG NVARCHAR(5)
)
RETURNS TABLE 
AS
RETURN 
(
	SELECT NHACUNGCAP.TenNCC
	FROM NHACUNGCAP INNER JOIN PHIEUNHAP ON NHACUNGCAP.MaNCC = PHIEUNHAP.MaNCC
					INNER JOIN CT_PHIEUNHAP ON PHIEUNHAP.MaPN = CT_PHIEUNHAP.MaPN
	WHERE CT_PHIEUNHAP.MaHH = @MAHANG
)
go
SELECT * FROM FUNC4(N'0011')
go

-- 5. Tạo hàm lấy danh sách các mặt hàng theo mã nhà cung cấp
CREATE OR ALTER FUNCTION FUNC5 
(
	@MANCC NVARCHAR(5)
)
RETURNS TABLE
AS
RETURN 
(
	SELECT HANGHOA.MaHH,HANGHOA.TenHH
	FROM HANGHOA INNER JOIN CT_PHIEUNHAP ON HANGHOA.MaHH = CT_PHIEUNHAP.MaHH
				INNER JOIN PHIEUNHAP ON CT_PHIEUNHAP.MaPN = PHIEUNHAP.MaPN
	WHERE PHIEUNHAP.MaNCC = @MANCC
)
go
SELECT * FROM FUNC5(N'0001')
go

-- 6. Cho danh sách các khách hàng ở một quận nào đó
CREATE OR ALTER FUNCTION FUNC6
(
	@QUAN NVARCHAR(10)
)
RETURNS TABLE
AS
RETURN 
(
	SELECT KHACHHANG.MaKH,KHACHHANG.TenKH,KHACHHANG.DiaChi
	FROM KHACHHANG
	WHERE KHACHHANG.DiaChi LIKE @QUAN
)
go
SELECT * FROM FUNC6(N'Hà Đông')
go