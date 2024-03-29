
CREATE DATABASE QLVanTai
 
GO
USE QLVanTai
GO
/****** Object:  Table [dbo].[ChiTietVanTai]    Script Date: 23/02/2017 11:58:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietVanTai](
	[MaVT] [int] NOT NULL,
	[SoXe] [nvarchar](255) NULL,
	[MaTrongTai] [nvarchar](255) NULL,
	[MaLoTrinh] [nvarchar](255) NULL,
	[SoLuongVT] [int] NULL,
	[NgayDi] [datetime] NULL,
	[NgayDen] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoTrinh]    Script Date: 23/02/2017 11:58:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoTrinh](
	[MaLoTrinh] [nvarchar](255) NOT NULL,
	[TenLoTrinh] [nvarchar](255) NULL,
	[DonGia] [int] NULL,
	[ThoiGianQD] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TrongTai]    Script Date: 23/02/2017 11:58:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrongTai](
	[MaTrongTai] [nvarchar](255) NOT NULL,
	[TrongTaiQD] [int] NULL
) ON [PRIMARY]

GO
INSERT [dbo].[ChiTietVanTai] ([MaVT], [SoXe], [MaTrongTai], [MaLoTrinh], [SoLuongVT], [NgayDi], [NgayDen]) VALUES (1, N'333', N'50', N'PK', 5, CAST(N'2014-05-01T00:00:00.000' AS DateTime), CAST(N'2014-05-03T00:00:00.000' AS DateTime))
INSERT [dbo].[ChiTietVanTai] ([MaVT], [SoXe], [MaTrongTai], [MaLoTrinh], [SoLuongVT], [NgayDi], [NgayDen]) VALUES (2, N'123', N'52', N'QN', 10, CAST(N'2014-05-03T00:00:00.000' AS DateTime), CAST(N'2014-05-04T00:00:00.000' AS DateTime))
INSERT [dbo].[ChiTietVanTai] ([MaVT], [SoXe], [MaTrongTai], [MaLoTrinh], [SoLuongVT], [NgayDi], [NgayDen]) VALUES (3, N'444', N'50', N'NT', 2, CAST(N'2014-05-03T00:00:00.000' AS DateTime), CAST(N'2014-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[ChiTietVanTai] ([MaVT], [SoXe], [MaTrongTai], [MaLoTrinh], [SoLuongVT], [NgayDi], [NgayDen]) VALUES (4, N'333', N'50', N'HN', 3, CAST(N'2014-05-04T00:00:00.000' AS DateTime), CAST(N'2014-05-10T00:00:00.000' AS DateTime))
INSERT [dbo].[ChiTietVanTai] ([MaVT], [SoXe], [MaTrongTai], [MaLoTrinh], [SoLuongVT], [NgayDi], [NgayDen]) VALUES (5, N'111', N'51', N'NT', 6, CAST(N'2014-05-06T00:00:00.000' AS DateTime), CAST(N'2014-05-06T00:00:00.000' AS DateTime))
INSERT [dbo].[ChiTietVanTai] ([MaVT], [SoXe], [MaTrongTai], [MaLoTrinh], [SoLuongVT], [NgayDi], [NgayDen]) VALUES (6, N'222', N'52', N'HN', 5, CAST(N'2014-05-10T00:00:00.000' AS DateTime), CAST(N'2014-05-16T00:00:00.000' AS DateTime))
INSERT [dbo].[ChiTietVanTai] ([MaVT], [SoXe], [MaTrongTai], [MaLoTrinh], [SoLuongVT], [NgayDi], [NgayDen]) VALUES (7, N'444', N'50', N'HN', 3, CAST(N'2014-05-25T00:00:00.000' AS DateTime), CAST(N'2014-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[ChiTietVanTai] ([MaVT], [SoXe], [MaTrongTai], [MaLoTrinh], [SoLuongVT], [NgayDi], [NgayDen]) VALUES (8, N'111', N'51', N'DN', 4, CAST(N'2014-05-10T00:00:00.000' AS DateTime), CAST(N'2014-05-12T00:00:00.000' AS DateTime))
INSERT [dbo].[ChiTietVanTai] ([MaVT], [SoXe], [MaTrongTai], [MaLoTrinh], [SoLuongVT], [NgayDi], [NgayDen]) VALUES (9, N'333', N'50', N'PK', 4, CAST(N'2014-05-05T00:00:00.000' AS DateTime), CAST(N'2014-05-10T00:00:00.000' AS DateTime))
INSERT [dbo].[ChiTietVanTai] ([MaVT], [SoXe], [MaTrongTai], [MaLoTrinh], [SoLuongVT], [NgayDi], [NgayDen]) VALUES (10, N'123', N'52', N'HN', 14, CAST(N'2014-05-07T00:00:00.000' AS DateTime), CAST(N'2014-05-15T00:00:00.000' AS DateTime))
INSERT [dbo].[LoTrinh] ([MaLoTrinh], [TenLoTrinh], [DonGia], [ThoiGianQD]) VALUES (N'DN', N'Đà nẵng', 5000, 3)
INSERT [dbo].[LoTrinh] ([MaLoTrinh], [TenLoTrinh], [DonGia], [ThoiGianQD]) VALUES (N'HN', N'Hà Nội', 10000, 5)
INSERT [dbo].[LoTrinh] ([MaLoTrinh], [TenLoTrinh], [DonGia], [ThoiGianQD]) VALUES (N'NT', N'Nha Trang', 3000, 1)
INSERT [dbo].[LoTrinh] ([MaLoTrinh], [TenLoTrinh], [DonGia], [ThoiGianQD]) VALUES (N'PK', N'Pleiku', 6000, 4)
INSERT [dbo].[LoTrinh] ([MaLoTrinh], [TenLoTrinh], [DonGia], [ThoiGianQD]) VALUES (N'QN', N'Quảng Nam', 4000, 2)
INSERT [dbo].[TrongTai] ([MaTrongTai], [TrongTaiQD]) VALUES (N'50', 4)
INSERT [dbo].[TrongTai] ([MaTrongTai], [TrongTaiQD]) VALUES (N'51', 8)
INSERT [dbo].[TrongTai] ([MaTrongTai], [TrongTaiQD]) VALUES (N'52', 12)
USE [master]
GO
ALTER DATABASE [BT3] SET  READ_WRITE 
GO


-- 1. Tạo hàm có đầu vào là lộ trình, đầu ra là số xe, mã trọng tải, số lượng vận tải, ngày đi, ngày 
--    đến (SoXe, MaTrongTai, SoLuongVT, NgayDi, NgayDen.)
create or alter function Func_Cau1
(	
	@MaLoTrinh nvarchar(10)
)
returns table as
return
(
	select ChiTietVanTai.SoXe, ChiTietVanTai.MaTrongTai,
		   ChiTietVanTai.SoLuongVT, ChiTietVanTai.NgayDi, ChiTietVanTai.NgayDen
	from ChiTietVanTai 
	where ChiTietVanTai.MaLoTrinh = @MaLoTrinh
)
go
select * from Func_Cau1(N'PK')
go

-- 2. Thiết lập hàm có đầu vào là số xe, đầu ra là thông tin về lộ trình
create or alter function Func_Cau2
(
	@soXe nvarchar(20)
)
returns table as
return 
(
	select LoTrinh.MaLoTrinh, LoTrinh.TenLoTrinh, LoTrinh.DonGia, LoTrinh.ThoiGianQD
	from LoTrinh join ChiTietVanTai on LoTrinh.MaLoTrinh = ChiTietVanTai.MaLoTrinh
	where ChiTietVanTai.SoXe = @soXe
)
go
select * from Func_Cau2(333)
go


-- 3.Tạo hàm có đầu vào là trọng tải, đầu ra là các số xe có trọng tải quy định lớn hơn hoặc bằng 
--   trọng tải đó
create or alter function Func_Cau3
(
	@TrongTai int
)
returns table as
return
(
	select ChiTietVanTai.SoXe, ChiTietVanTai.MaTrongTai, TrongTai.TrongTaiQD
	from ChiTietVanTai join TrongTai on ChiTietVanTai.MaTrongTai = TrongTai.MaTrongTai
	where TrongTai.TrongTaiQD >= @TrongTai
)
go
select * from Func_Cau3(10)
go

--4. Tạo hàm có đầu vào là trọng tải và mã lộ trình, đầu ra là số lượng xe có trọng tải quy định 
--   lớn hơn hoặc bằng trọng tải đó và thuộc lộ trình đó.
create or alter function Func_Cau4
(
	@TrongTai int,
	@maLoTrinh nvarchar(10)
)
returns table as
return
(
	select ChiTietVanTai.SoXe, ChiTietVanTai.MaTrongTai, TrongTai.TrongTaiQD
	from ChiTietVanTai 
	join TrongTai on ChiTietVanTai.MaTrongTai = TrongTai.MaTrongTai
	join LoTrinh on ChiTietVanTai.MaLoTrinh=LoTrinh.MaLoTrinh
	where TrongTai.TrongTaiQD >= @TrongTai and LoTrinh.MaLoTrinh=@maLoTrinh
)
go
select * from Func_Cau4(10,'HN')
go

--5. Tạo thủ tục có đầu vào Mã lộ trình đầu ra là số lượng xe thuộc lộ trình đó.
create or alter procedure Proc_Cau5
(
	@maLoTrinh nvarchar(10),
	@soLuongXe int output
)
as
begin
	select @soLuongXe=ChiTietVanTai.SoXe
	from ChiTietVanTai 
	join LoTrinh on ChiTietVanTai.MaLoTrinh=LoTrinh.MaLoTrinh
	where LoTrinh.MaLoTrinh = @maLoTrinh
end
go

declare @maLoTrinhTest nvarchar(10) = N'HN';
declare @soLuongXeTest int;
exec Proc_Cau5
	@maLoTrinh = @maLoTrinhTest,
	@soLuongXe = @soLuongXeTest output
print 'Mã lộ trình: '+ cast(@maLoTrinhTest as nvarchar(20))
print 'Số lượng xe: '+ cast(@soLuongXeTest as nvarchar(20))
go

--6. Tạo thủ tục có đầu vào là mã lộ trình, năm vận tải, đầu ra là số tiền theo mã lộ trình và năm 
--	 vận tải đó
create or alter procedure Proc_Cau6
(
	@maLoTrinh nvarchar(10),
	@namVanTai int,
	@soTien money output 
)
as
begin
	select @soTien = cast(Sum(LoTrinh.DonGia) as money)
	from ChiTietVanTai
	join LoTrinh on ChiTietVanTai.MaLoTrinh=LoTrinh.MaLoTrinh
	where LoTrinh.MaLoTrinh=@maLoTrinh and YEAR(ChiTietVanTai.NgayDi)=@namVanTai
end
go
declare @maLoTrinhTest nvarchar(10) = N'HN';
declare @namVanTaiTest int = 2014;
declare @soTienTest money 
exec Proc_Cau6
	@maLoTrinh = @maLoTrinhTest,
	@namVanTai = @namVanTaiTest,
	@soTien = @soTienTest output
print 'Ma lo trinh: '+cast(@maLoTrinhTest as nvarchar(20))
print 'Nam van tai: '+cast(@namVanTaiTest as nvarchar(20))
print 'So tien: '+cast(@soTienTest as nvarchar(20))
go

--7. Tạo thủ tục có đầu vào là số xe, năm vận tải, đầu ra là số tiền theo số xe và năm vận tải đó
create or alter procedure Proc_Cau7
(
	@soXe int,
	@namVanTai int,
	@SoTien money output
)
as
begin
	select @SoTien=cast(Sum(ChiTietVanTai.SoLuongVT*LoTrinh.DonGia) as money)
	from ChiTietVanTai
	join LoTrinh on ChiTietVanTai.MaLoTrinh=LoTrinh.MaLoTrinh
	where ChiTietVanTai.SoXe=@soXe and YEAR(ChiTietVanTai.NgayDi)=@namVanTai
end
go

declare @soXeTest int = 333;
declare @namVanTaiTest int = 2014;
declare @soTienTest money 
exec Proc_Cau7
	@soXe = @soXeTest,
	@namVanTai = @namVanTaiTest,
	@soTien = @soTienTest output
print 'So tien: '+cast(@soTienTest as nvarchar(20))
go

--8. Tạo thủ tục có đầu vào là mã trọng tải, đầu ra là số lượng xe vượt quá trọng tải quy định 
--của mã trọng tải đó.
create or alter procedure Proc_Cau8
(
	@maTrongTai int,
	@soLuongXe int output
)
as
begin
	select @soLuongXe=count(ChiTietVanTai.SoXe) 
	from ChiTietVanTai
	join TrongTai on ChiTietVanTai.MaTrongTai=TrongTai.MaTrongTai
	where ChiTietVanTai.MaTrongTai=@maTrongTai and ChiTietVanTai.SoLuongVT>TrongTai.TrongTaiQD
end
go
declare @maTrongTaiTest int = 50
declare @soLuongXeTest int;
exec Proc_Cau8
	@maTrongTai=@maTrongTaiTest,
	@soLuongXe=@soLuongXeTest output
print 'So luong xe: '+cast(@soLuongXeTest as nvarchar(10))
go

