USE [BT2]
GO
/****** Object:  Table [dbo].[DMKhoa]    Script Date: 07/10/2020 9:12:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DMKhoa](
	[MaKhoa] [char](2) NOT NULL,
	[TenKhoa] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DMMonHoc]    Script Date: 07/10/2020 9:12:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DMMonHoc](
	[MaMH] [char](2) NOT NULL,
	[TenMH] [nvarchar](25) NOT NULL,
	[SoTiet] [tinyint] NULL,
	[GhiChu] [nchar](50) NULL,
 CONSTRAINT [DMMH_MaMH_pk] PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DSSinhVien]    Script Date: 07/10/2020 9:12:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSSinhVien](
	[MaSV] [char](3) NOT NULL,
	[HoSV] [nvarchar](15) NOT NULL,
	[TenSV] [nvarchar](7) NOT NULL,
	[Phai] [nchar](7) NULL,
	[NgaySinh] [datetime] NOT NULL,
	[NoiSinh] [nvarchar](20) NULL,
	[MaKhoa] [char](2) NULL,
	[HocBong] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[KetQua]    Script Date: 07/10/2020 9:12:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KetQua](
	[MaSV] [char](3) NOT NULL,
	[MaMH] [char](2) NOT NULL,
	[LanThi] [tinyint] NOT NULL,
	[Diem] [decimal](4, 2) NULL,
 CONSTRAINT [KetQua_MaSV_MaMH_LanThi_pk] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC,
	[MaMH] ASC,
	[LanThi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DMKhoa] ([MaKhoa], [TenKhoa]) VALUES (N'AV', N'Anh Văn')
INSERT [dbo].[DMKhoa] ([MaKhoa], [TenKhoa]) VALUES (N'TH', N'Tin Học')
INSERT [dbo].[DMKhoa] ([MaKhoa], [TenKhoa]) VALUES (N'TR', N'Triết')
INSERT [dbo].[DMKhoa] ([MaKhoa], [TenKhoa]) VALUES (N'VL', N'Vật Lý')
GO
INSERT [dbo].[DMMonHoc] ([MaMH], [TenMH], [SoTiet], [GhiChu]) VALUES (N'01', N'Cơ Sở Dữ Liệu', 45, NULL)
INSERT [dbo].[DMMonHoc] ([MaMH], [TenMH], [SoTiet], [GhiChu]) VALUES (N'02', N'Trí Tuệ Nhân Tạo', 45, NULL)
INSERT [dbo].[DMMonHoc] ([MaMH], [TenMH], [SoTiet], [GhiChu]) VALUES (N'03', N'Truyền Tin', 45, NULL)
INSERT [dbo].[DMMonHoc] ([MaMH], [TenMH], [SoTiet], [GhiChu]) VALUES (N'04', N'Đồ Họa', 60, NULL)
INSERT [dbo].[DMMonHoc] ([MaMH], [TenMH], [SoTiet], [GhiChu]) VALUES (N'05', N'Văn Phạm', 60, NULL)
GO
INSERT [dbo].[DSSinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKhoa], [HocBong]) VALUES (N'A01', N'Nguyễn Thị', N'Hải', N'Nữ     ', CAST(N'1990-02-23T00:00:00.000' AS DateTime), N'Hà Nội', N'TH', 130000)
INSERT [dbo].[DSSinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKhoa], [HocBong]) VALUES (N'A02', N'Trần Văn', N'Chính', N'Nam    ', CAST(N'1992-12-24T00:00:00.000' AS DateTime), N'Bình Định', N'VL', 150000)
INSERT [dbo].[DSSinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKhoa], [HocBong]) VALUES (N'A03', N'Lê Thu Bạch', N'Yến', N'Nữ     ', CAST(N'1990-02-21T00:00:00.000' AS DateTime), N'TP Hồ Chí Minh', N'TH', 170000)
INSERT [dbo].[DSSinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKhoa], [HocBong]) VALUES (N'A04', N'Trần Anh', N'Tuấn', N'Nam    ', CAST(N'1990-12-20T00:00:00.000' AS DateTime), N'Hà Nội', N'AV', 80000)
INSERT [dbo].[DSSinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKhoa], [HocBong]) VALUES (N'A05', N'Hoàng Khánh', N'Ngọc', N'Nữ     ', CAST(N'2000-11-10T00:00:00.000' AS DateTime), N'Hà Nội', N'TH', 300000)
INSERT [dbo].[DSSinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKhoa], [HocBong]) VALUES (N'B01', N'Trần Thanh', N'Mai', N'Nữ     ', CAST(N'1991-08-12T00:00:00.000' AS DateTime), N'Hải Phòng', N'TR', 0)
INSERT [dbo].[DSSinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKhoa], [HocBong]) VALUES (N'B02', N'Trần Thị Thu', N'Thủy', N'Nữ     ', CAST(N'1991-01-02T00:00:00.000' AS DateTime), N'TP Hồ Chí Minh', N'AV', 0)
INSERT [dbo].[DSSinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKhoa], [HocBong]) VALUES (N'B03', N'Trần Thị', N'Hiền', N'Nữ     ', CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Hà Nội', N'AV', NULL)
INSERT [dbo].[DSSinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKhoa], [HocBong]) VALUES (N'B04', N'Lê Văn', N'Hùng', N'Nam    ', CAST(N'2000-02-01T00:00:00.000' AS DateTime), N'Hà Nội', N'AV', NULL)
INSERT [dbo].[DSSinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKhoa], [HocBong]) VALUES (N'B05', N'Lê Quang', N'Hưng', N'Nam    ', CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'TP Hồ Chí Minh', N'VL', NULL)
INSERT [dbo].[DSSinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKhoa], [HocBong]) VALUES (N'B06', N'Nguyễn Mai', N'Hương', N'Nữ     ', CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Hưng Yên', N'TH', NULL)
INSERT [dbo].[DSSinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKhoa], [HocBong]) VALUES (N'B07', N'Hoàng Thanh', N'Hằng', N'Nữ     ', CAST(N'2000-02-02T00:00:00.000' AS DateTime), N'Thái Nguyên', N'TH', NULL)
GO
INSERT [dbo].[KetQua] ([MaSV], [MaMH], [LanThi], [Diem]) VALUES (N'A01', N'01', 1, CAST(3.00 AS Decimal(4, 2)))
INSERT [dbo].[KetQua] ([MaSV], [MaMH], [LanThi], [Diem]) VALUES (N'A01', N'01', 2, CAST(6.00 AS Decimal(4, 2)))
INSERT [dbo].[KetQua] ([MaSV], [MaMH], [LanThi], [Diem]) VALUES (N'A01', N'02', 2, CAST(6.00 AS Decimal(4, 2)))
INSERT [dbo].[KetQua] ([MaSV], [MaMH], [LanThi], [Diem]) VALUES (N'A01', N'03', 1, CAST(5.00 AS Decimal(4, 2)))
INSERT [dbo].[KetQua] ([MaSV], [MaMH], [LanThi], [Diem]) VALUES (N'A02', N'01', 1, CAST(4.50 AS Decimal(4, 2)))
INSERT [dbo].[KetQua] ([MaSV], [MaMH], [LanThi], [Diem]) VALUES (N'A02', N'01', 2, CAST(7.00 AS Decimal(4, 2)))
INSERT [dbo].[KetQua] ([MaSV], [MaMH], [LanThi], [Diem]) VALUES (N'A02', N'03', 1, CAST(10.00 AS Decimal(4, 2)))
INSERT [dbo].[KetQua] ([MaSV], [MaMH], [LanThi], [Diem]) VALUES (N'A02', N'05', 1, CAST(9.00 AS Decimal(4, 2)))
INSERT [dbo].[KetQua] ([MaSV], [MaMH], [LanThi], [Diem]) VALUES (N'A03', N'01', 1, CAST(2.00 AS Decimal(4, 2)))
INSERT [dbo].[KetQua] ([MaSV], [MaMH], [LanThi], [Diem]) VALUES (N'A03', N'01', 2, CAST(5.00 AS Decimal(4, 2)))
INSERT [dbo].[KetQua] ([MaSV], [MaMH], [LanThi], [Diem]) VALUES (N'A03', N'03', 1, CAST(2.50 AS Decimal(4, 2)))
INSERT [dbo].[KetQua] ([MaSV], [MaMH], [LanThi], [Diem]) VALUES (N'A03', N'03', 2, CAST(4.00 AS Decimal(4, 2)))
INSERT [dbo].[KetQua] ([MaSV], [MaMH], [LanThi], [Diem]) VALUES (N'A04', N'05', 2, CAST(10.00 AS Decimal(4, 2)))
INSERT [dbo].[KetQua] ([MaSV], [MaMH], [LanThi], [Diem]) VALUES (N'B01', N'01', 1, CAST(7.00 AS Decimal(4, 2)))
INSERT [dbo].[KetQua] ([MaSV], [MaMH], [LanThi], [Diem]) VALUES (N'B01', N'03', 1, CAST(2.50 AS Decimal(4, 2)))
INSERT [dbo].[KetQua] ([MaSV], [MaMH], [LanThi], [Diem]) VALUES (N'B01', N'03', 2, CAST(5.00 AS Decimal(4, 2)))
INSERT [dbo].[KetQua] ([MaSV], [MaMH], [LanThi], [Diem]) VALUES (N'B02', N'02', 1, CAST(6.00 AS Decimal(4, 2)))
INSERT [dbo].[KetQua] ([MaSV], [MaMH], [LanThi], [Diem]) VALUES (N'B02', N'04', 1, CAST(10.00 AS Decimal(4, 2)))
GO
ALTER TABLE [dbo].[DSSinhVien]  WITH CHECK ADD  CONSTRAINT [DMKhoa_MaKhoa_fk] FOREIGN KEY([MaKhoa])
REFERENCES [dbo].[DMKhoa] ([MaKhoa])
GO
ALTER TABLE [dbo].[DSSinhVien] CHECK CONSTRAINT [DMKhoa_MaKhoa_fk]
GO
ALTER TABLE [dbo].[KetQua]  WITH CHECK ADD  CONSTRAINT [DMMH_MaMH_fk] FOREIGN KEY([MaMH])
REFERENCES [dbo].[DMMonHoc] ([MaMH])
GO
ALTER TABLE [dbo].[KetQua] CHECK CONSTRAINT [DMMH_MaMH_fk]
GO
ALTER TABLE [dbo].[KetQua]  WITH CHECK ADD  CONSTRAINT [KetQua_MaSV_fk] FOREIGN KEY([MaSV])
REFERENCES [dbo].[DSSinhVien] ([MaSV])
GO
ALTER TABLE [dbo].[KetQua] CHECK CONSTRAINT [KetQua_MaSV_fk]
GO


--1. Tạo View danh sách sinh viên, gồm các thông tin sau: Mã sinh viên, Họ sinh viên, Tên sinh viên, Học bổng.
alter VIEW Cau1 AS
select MaSV, HoSV, TenSV, HocBong
from DSSinhVien;
go

SELECT * FROM Cau1;
go 
drop view Cau1
go

--2. Tạo view Liệt kê các sinh viên có học bổng từ 150,000 trở lên và sinh ở Hà Nội, 
--gồm các thông tin: Họ tên sinh viên, Mã khoa, Nơi sinh, Học bổng.
-- Tạo view DSHocBong
alter VIEW Cau2 AS
SELECT HoSV, TenSV, DMKhoa.MaKhoa, NoiSinh, HocBong
FROM DSSinhVien
INNER JOIN DMKhoa ON DSSinhVien.MaKhoa = DMKhoa.MaKhoa
WHERE DSSinhVien.HocBong >= 150000 AND DSSinhVien.NoiSinh = N'Hà Nội';
GO

select * from Cau2
go
drop view Cau2
go


--3. Tạo view liệt kê những sinh viên nam của khoa Anh Văn và khoa Tin Học, gồm các thông
--tin: Mã sinh viên, Họ tên sinh viên, tên khoa, Phái.
create view Cau3 as
select DSSinhVien.MaSV, DSSinhVien.HoSV, DSSinhVien.TenSV, DSSinhVien.Phai, DMKhoa.TenKhoa 
from DSSinhVien inner join DMKhoa on DSSinhVien.MaKhoa = DMKhoa.MaKhoa
where (DMKhoa.TenKhoa = N'Anh Văn' or DMKhoa.TenKhoa = N'Tin Học') and DSSinhVien.Phai=N'Nam';
go

select *from Cau3
go
drop view Cau3
go

--4. Tạo view gồm những sinh viên có tuổi từ 20 đến 25, thông tin gồm: Họ tên sinh viên,
--Tuổi, Tên khoa.

create View Cau4 as
select DSSinhVien.HoSV, DSSinhVien.TenSV,DATEDIFF(Year,DSSinhVien.NgaySinh,GETDATE()) as Tuoi, DMKhoa.TenKhoa 
from DSSinhVien inner join DMKhoa on DSSinhVien.MaKhoa = DMKhoa.MaKhoa
where DATEDIFF(Year,DSSinhVien.NgaySinh,GETDATE()) between 20 and 25
go
select * from Cau4
go
drop view Cau4
go

--5. Tạo view cho biết thông tin về mức học bổng của các sinh viên, gồm: Mã sinh viên,
--Phái, Mã khoa, Mức học bổng. Trong đó, mức học bổng sẽ hiển thị là “Học bổng cao”
--nếu giá trị của field học bổng lớn hơn 500,000 và ngược lại hiển thị là “Mức trung bình”

create view MucHocBong as 
select 
	DSSinhVien.MaSV,
	DSSinhVien.Phai,
	DSSinhVien.MaKhoa,
	DSSinhVien.HocBong,
	Case
		When DSSinhVien.HocBong >500000 then N'Học bổng cao'
		else N'Mức trung bình'
	end as N'Mức học bổng'
from DSSinhVien
go
select * from MucHocBong
go 
drop view MucHocBong
go

--6. Tạo view đưa ra thông tin những sinh viên có học bổng lớn hơn bất kỳ học bổng của
--sinh viên học khóa anh văn
create view DS_HBlonhonAV as
select DSSinhVien.MaSV, DSSinhVien.HoSV, DSSinhVien.TenSV, DSSinhVien.HocBong, DMKhoa.TenKhoa
from DSSinhVien inner join DMKhoa on DSSinhVien.MaKhoa = DMKhoa.MaKhoa
where DMKhoa.TenKhoa not in (N'Anh Văn') 
and DSSinhVien.HocBong > (select max(DSSinhVien.HocBong) from DSSinhVien inner join DMKhoa 
							on DSSinhVien.MaKhoa = DMKhoa.MaKhoa
							where DMKhoa.TenKhoa in (N'Anh Văn'))
go
select * from DS_HBlonhonAV
go
--7. Tạo view đưa ra thông tin những sinh viên đạt điểm cao nhất trong từng môn.

select DMMonHoc.MaMH, DMMonHoc.TenMH, KetQua.MaSV, DSSinhVien.HoSV, DSSinhVien.TenSV,  KetQua.Diem
from DMMonHoc inner join KetQua on DMMonHoc.MaMH = KetQua.MaMH
inner join DSSinhVien on DSSinhVien.MaSV = KetQua.MaSV
where KetQua.Diem = (select max(KetQua.Diem) as MaxDiem
					from KetQua 
					where KetQua.MaMH = DMMonHoc.MaMH);
go

--8. Tạo view đưa ra những sinh viên chưa thi môn cơ sở dữ liệu.
CREATE VIEW DS_ChuaThiCSDl AS
SELECT DSSinhVien.MaSV, DSSinhVien.HoSV, DSSinhVien.TenSV
FROM DSSinhVien 
WHERE DSSinhVien.MaSV NOT IN (
    SELECT KetQua.MaSV
    FROM KetQua
    WHERE KetQua.MaMH = N'01' -- '01' là Mã môn học của Cơ Sở Dữ Liệu
);
go

select * from DS_ChuaThiCSDl
go
drop view DS_ChuaThiCSDl
go

--9. Tạo view đưa ra thông tin những sinh viên không trượt môn nào.
CREATE VIEW Cau9 AS
SELECT DSSinhVien.MaSV, DSSinhVien.HoSV, DSSinhVien.TenSV
FROM DSSinhVien
WHERE DSSinhVien.MaSV NOT IN (
    SELECT DISTINCT KetQua.MaSV
    FROM KetQua
    WHERE KetQua.Diem < 5.0 or KetQua.LanThi>=2
);
go
select * from Cau9
go
drop view Cau9
go


