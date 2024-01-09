create database BT4
go
USE [BT4]
GO
/****** Object:  Table [dbo].[ChiTietDT]    Script Date: 18/09/2018 7:34:45 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDT](
	[DTDuThi] [tinyint] NOT NULL,
	[DienGiaiDT] [nvarchar](255) NULL,
	[DiemUT] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhSach]    Script Date: 18/09/2018 7:34:45 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhSach](
	[SoBD] [int] NOT NULL,
	[Ho] [nvarchar](15) NULL,
	[Ten] [nvarchar](7) NULL,
	[Phai] [bit] NOT NULL,
	[NTNS] [datetime] NULL,
	[DTDuThi] [tinyint] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DiemThi]    Script Date: 18/09/2018 7:34:45 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiemThi](
	[SoBD] [int] NOT NULL,
	[Toan] [real] NULL,
	[Van] [real] NULL,
	[AnhVan] [real] NULL
) ON [PRIMARY]

GO
INSERT [dbo].[ChiTietDT] ([DTDuThi], [DienGiaiDT], [DiemUT]) VALUES (1, N'Đối tượng thuộc diện chính sách', 2)
INSERT [dbo].[ChiTietDT] ([DTDuThi], [DienGiaiDT], [DiemUT]) VALUES (2, N'Đối tượng thuộc diện chính sáchĐối tượng thuộc diện chính sách', 1)
INSERT [dbo].[ChiTietDT] ([DTDuThi], [DienGiaiDT], [DiemUT]) VALUES (3, N'Học sinh phổ thông', 0)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (1, N'Nguyen Viet', N'Hong', 0, CAST(N'1981-04-04T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (2, N'Nguyen Hong', N'Hanh', 1, CAST(N'1982-03-15T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (3, N'Nguyen Minh', N'Quang', 0, CAST(N'1982-07-10T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (4, N'Dinh Thi', N'Tam', 1, CAST(N'1982-02-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (5, N'Nguyen Hoai', N'Anh', 1, CAST(N'1982-08-21T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (6, N'Dang Bich', N'Thuy', 1, CAST(N'1982-10-22T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (7, N'Hoang Thanh', N'Trang', 1, CAST(N'1982-08-12T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (8, N'Tran Cat', N'Dung', 1, CAST(N'1981-12-04T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (9, N'Pham Hoai', N'Bong', 0, CAST(N'1980-10-11T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (10, N'Tran Minh', N'Nguyet', 1, CAST(N'1981-12-07T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (11, N'Ma Thi Hong', N'Xuan', 1, CAST(N'1981-10-19T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (12, N'Le Thao', N'Dung', 1, CAST(N'1982-11-03T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (13, N'Luu Phuong', N'Thanh', 1, CAST(N'1982-02-25T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (14, N'Phan', N'Thanh', 0, CAST(N'1981-07-03T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (15, N'Pham Thu', N'Thuy', 1, CAST(N'1981-12-04T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (16, N'Dang Dinh', N'Tam', 0, CAST(N'1981-11-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (17, N'Tong Duc', N'Cuong', 0, CAST(N'1982-06-25T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (18, N'Tran Thu', N'Nga', 1, CAST(N'1981-09-14T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (19, N'Tran Thi Thanh', N'Giang', 1, CAST(N'1982-03-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (20, N'Truong Thi', N'My', 1, CAST(N'1982-08-16T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (21, N'Nguyen Thi', N'Hoa', 1, CAST(N'1982-11-27T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (22, N'Ha Son', N'Tri', 0, CAST(N'1981-08-27T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (23, N'Tang My', N'Hanh', 1, CAST(N'1980-10-28T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (24, N'Tran Thi', N'Tam', 1, CAST(N'1982-02-22T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (25, N'Pham Thi', N'Lua', 1, CAST(N'1981-07-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (26, N'Huynh Bach', N'Cuc', 1, CAST(N'1980-09-21T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (27, N'Nguyen Thi', N'Tuyet', 1, CAST(N'1981-12-20T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (28, N'Vu Thi', N'No', 1, CAST(N'1982-04-02T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (29, N'Tran My', N'Dung', 1, CAST(N'1982-01-12T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (30, N'Truong Minh', N'Thang', 0, CAST(N'1982-02-26T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (31, N'Le Kim', N'Thoa', 1, CAST(N'1982-04-01T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (32, N'Huynh Thanh', N'Nga', 1, CAST(N'1980-12-07T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (33, N'Tran Thi', N'Loan', 1, CAST(N'1981-11-25T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (34, N'Tran Thi', N'Nhi', 1, CAST(N'1982-11-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (35, N'Lam Ngoc', N'Quan', 0, CAST(N'1981-08-28T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (36, N'Nguyen Ngoc', N'Bich', 1, CAST(N'1981-08-26T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (37, N'Vuong Kim', N'Anh', 1, CAST(N'1982-04-18T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (38, N'Nguyen Thu', N'Van', 1, CAST(N'1982-09-16T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (39, N'Phan Mai', N'Phuong', 1, CAST(N'1981-07-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (40, N'Pham Thi', N'Thu', 1, CAST(N'1982-01-26T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (41, N'Nguyen Thi', N'Dung', 1, CAST(N'1982-11-25T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (42, N'Doan Thuy', N'Trang', 1, CAST(N'1982-11-19T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (43, N'Hoang Van', N'Hoa', 0, CAST(N'1982-01-10T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (44, N'Nguyen Van', N'Tien', 0, CAST(N'1981-10-07T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (45, N'Du Thi Lieu', N'Dung', 1, CAST(N'1982-06-17T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (46, N'Vu Kieu', N'Oanh', 1, CAST(N'1982-03-09T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (47, N'Nguyen Trong', N'Nghiep', 0, CAST(N'1981-07-20T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (48, N'Nguyen Thuy', N'Huong', 1, CAST(N'1981-12-14T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (49, N'Bui Van', N'Hung', 0, CAST(N'1981-08-25T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (50, N'Ly Cong', N'Duy', 0, CAST(N'1982-02-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (51, N'Le Thi', N'Ly', 1, CAST(N'1981-05-28T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (52, N'Nguyen Lien', N'Phuong', 1, CAST(N'1982-09-17T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (53, N'Hoang Thi', N'Thuan', 1, CAST(N'1981-10-25T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (54, N'To Phuong', N'Lan', 1, CAST(N'1982-10-10T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (55, N'Tran Thi', N'Phuong', 1, CAST(N'1981-04-10T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (56, N'Nguyen Dong', N'Lan', 1, CAST(N'1982-07-29T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (57, N'Nguyen Van', N'Toan', 0, CAST(N'1982-06-09T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (58, N'Diep Thuy', N'Phuong', 1, CAST(N'1981-12-13T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (59, N'Dao Thi', N'Tue', 1, CAST(N'1982-12-23T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (60, N'Tran Thi', N'Phan', 1, CAST(N'1982-01-24T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (61, N'Tran Thi', N'Thuy', 1, CAST(N'1982-11-08T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (62, N'Nguyen Mong', N'Kieu', 1, CAST(N'1982-08-23T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (63, N'Duong Thi', N'Tuoi', 1, CAST(N'1981-12-24T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (64, N'Nguyen Thi', N'Thuy', 1, CAST(N'1982-01-05T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (65, N'Nguyen Thi', N'Le', 1, CAST(N'1982-06-21T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (66, N'Nguyen Thi', N'Hanh', 1, CAST(N'1981-01-19T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (67, N'Nguyen Van', N'Tam', 0, CAST(N'1982-07-02T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (68, N'Lam Ngoc', N'Phuoc', 0, CAST(N'1981-02-17T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (69, N'Phan Kim', N'Nga', 1, CAST(N'1982-08-24T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (70, N'Huynh Thi', N'Huong', 1, CAST(N'1981-05-19T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (71, N'Nguyen Thu', N'Ha', 1, CAST(N'1982-04-03T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (72, N'Nguyen Van', N'Dung', 0, CAST(N'1981-12-17T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (73, N'Tran Tham', N'Tuoi', 1, CAST(N'1982-02-04T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (74, N'Duong Cong', N'Bang', 0, CAST(N'1981-06-27T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (75, N'Le Trung', N'Kien', 0, CAST(N'1982-02-09T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (76, N'Nguyen Van', N'Nghiep', 0, CAST(N'1982-09-14T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (77, N'Nguyen Van', N'Minh', 0, CAST(N'1981-02-07T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (78, N'Ho Duong', N'Thanh', 0, CAST(N'1981-11-09T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (79, N'Quach Kieu', N'Mai', 1, CAST(N'1982-02-17T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (80, N'Dao Thi', N'Phuong', 1, CAST(N'1982-03-29T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (81, N'Tran Thi Ngoc', N'Han', 1, CAST(N'1982-07-26T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (82, N'Tran Tuyet', N'Anh', 1, CAST(N'1982-06-12T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (83, N'Nguyen Cam', N'Huong', 1, CAST(N'1981-03-02T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (84, N'Nguyen Ngoc', N'Suong', 1, CAST(N'1981-09-11T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (85, N'Nguyen Van', N'Loi', 0, CAST(N'1982-02-02T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (86, N'Nguyen Duc', N'Thang', 0, CAST(N'1981-05-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (87, N'Bui Thi', N'Hue', 1, CAST(N'1981-12-19T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (88, N'Pham Thi', N'Mai', 1, CAST(N'1981-08-22T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (89, N'Nguyen Thi', N'Huong', 1, CAST(N'1981-11-30T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (90, N'Pham Van', N'Trang', 0, CAST(N'1981-05-06T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (91, N'Tran Thuy', N'Tien', 1, CAST(N'1980-11-27T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (92, N'Nguyen Minh', N'Dan', 0, CAST(N'1982-12-11T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (93, N'Do Thi', N'Thao', 1, CAST(N'1980-10-18T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (94, N'Phan Thi', N'Anh', 1, CAST(N'1981-07-13T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (95, N'Dang Kim', N'Anh', 1, CAST(N'1981-10-18T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (96, N'Le Tien', N'Dat', 0, CAST(N'1982-12-01T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (97, N'Pham Hong', N'Tuyet', 1, CAST(N'1981-10-05T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (98, N'Pham Thi', N'Chien', 1, CAST(N'1981-10-29T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (99, N'Nguyen Thi', N'Binh', 1, CAST(N'1982-12-09T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (100, N'Tran Van', N'Viet', 0, CAST(N'1982-07-15T00:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (101, N'Nguyen Bui', N'Hoa', 0, CAST(N'1981-02-18T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (102, N'Ho Cam', N'Ly', 1, CAST(N'1982-08-30T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (103, N'Huynh Van', N'Khoa', 0, CAST(N'1981-04-17T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (104, N'Huynh Minh', N'Hieu', 1, CAST(N'1982-04-18T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (105, N'Huynh Thanh', N'Viet', 0, CAST(N'1981-02-02T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (106, N'Le Hong', N'Nhung', 1, CAST(N'1981-12-01T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (107, N'Nguyen Thi', N'Van', 1, CAST(N'1982-02-22T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (108, N'Tran Van', N'Quang', 0, CAST(N'1981-09-24T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (109, N'Dang Minh', N'Quan', 0, CAST(N'1982-02-17T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (110, N'Le Thanh', N'Khoa', 0, CAST(N'1981-07-28T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (111, N'Nguyen Tan', N'Tai', 0, CAST(N'1981-08-22T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (112, N'Do Thi', N'Thuy', 1, CAST(N'1982-08-17T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (113, N'Vu Van', N'An', 0, CAST(N'1982-01-31T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (114, N'Nguyen Van', N'Thanh', 0, CAST(N'1981-11-13T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (115, N'Bui Van', N'Thanh', 0, CAST(N'1982-08-12T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (116, N'Do Phuong', N'Nam', 0, CAST(N'1982-01-01T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (117, N'Truong Kieu', N'Oanh', 1, CAST(N'1982-09-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (118, N'Tran My', N'Thanh', 1, CAST(N'1981-10-07T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (119, N'Pham Van', N'Hoang', 0, CAST(N'1982-10-27T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (120, N'Nguyen Thi', N'Nhung', 1, CAST(N'1981-10-31T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (121, N'Nguyen Thi', N'Lan', 1, CAST(N'1980-11-12T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (122, N'Nguyen Hong', N'Hoa', 1, CAST(N'1981-12-14T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (123, N'Tran van', N'Phuong', 0, CAST(N'1982-10-16T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (124, N'Tran Van', N'Minh', 0, CAST(N'1982-07-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (125, N'Vo Quoc', N'Vuong', 0, CAST(N'1982-09-29T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (126, N'Nguyen Thanh', N'Trung', 0, CAST(N'1982-12-07T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (127, N'Nguyen Thi', N'Thao', 1, CAST(N'1981-01-30T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (128, N'Vo Kim', N'Yen', 1, CAST(N'1981-12-16T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (129, N'Tran Van', N'Son', 0, CAST(N'1981-07-20T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (130, N'Nguyen Van', N'Hai', 0, CAST(N'1981-05-09T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (131, N'Nguyen Thanh', N'Lam', 0, CAST(N'1982-03-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (132, N'Pham Lan', N'Anh', 1, CAST(N'1981-10-06T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (133, N'Nguyen Van', N'Doan', 0, CAST(N'1981-10-15T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (134, N'Le Hong', N'Hoa', 1, CAST(N'1981-12-16T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (135, N'Nguyen Van', N'Ngan', 0, CAST(N'1981-08-06T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (136, N'Pham Hong', N'Chung', 0, CAST(N'1981-05-19T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (137, N'Nguyen Hong', N'Hoa', 1, CAST(N'1981-09-06T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (138, N'Le Hong', N'Hanh', 1, CAST(N'1981-12-16T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (139, N'Le Anh', N'Thu', 1, CAST(N'1981-01-31T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (140, N'Tran Le', N'Nga', 1, CAST(N'1980-11-27T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (141, N'Nguyen Thi', N'Huong', 1, CAST(N'1981-04-04T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (142, N'Vuong Cong', N'Hon', 0, CAST(N'1981-09-18T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (143, N'Ta Ngoc', N'Dieu', 0, CAST(N'1981-08-14T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (144, N'Nguyen Duc', N'Hien', 0, CAST(N'1982-04-19T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (145, N'Nguyen Thanh', N'Hai', 0, CAST(N'1981-12-07T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (146, N'Dao Thanh', N'Xuan', 0, CAST(N'1980-12-30T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (147, N'Mai Ngoc', N'Bich', 1, CAST(N'1981-10-08T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (148, N'Pham Thu', N'Han', 1, CAST(N'1982-12-04T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (149, N'Phan Huy', N'Hung', 0, CAST(N'1981-02-03T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (150, N'Nguyen Phuoc', N'Lam', 0, CAST(N'1980-11-05T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (151, N'Dao Minh', N'Than', 0, CAST(N'1982-04-21T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (152, N'Le Van', N'Dung', 0, CAST(N'1981-12-03T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (153, N'Tran Viet', N'Hong', 0, CAST(N'1982-04-07T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (154, N'Nguyen Thanh', N'Hao', 0, CAST(N'1982-07-20T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (155, N'Nguyen Kim', N'Loan', 1, CAST(N'1981-02-19T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DanhSach] ([SoBD], [Ho], [Ten], [Phai], [NTNS], [DTDuThi]) VALUES (156, N'Nguyen Cong', N'Truong', 0, CAST(N'1982-08-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (1, 8, 5, 8)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (2, 6.5, 7, 5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (3, 7.5, 6.5, 4)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (4, 5, 8.5, 5.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (5, 6.5, 6, 6)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (6, 10, 9, 9)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (7, 7, 8, 7)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (8, 10, 8, 9)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (9, 10, 8.5, 10)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (10, 4.5, 4, 4)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (11, 8, 10, 7)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (12, 5, 6.5, 5.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (13, 9, 6, 8)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (14, 6, 5.5, 8)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (15, 10, 10, 10)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (16, 4, 6, 5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (17, 5, 6.5, 4)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (18, 4, 6.5, 6)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (19, 4, 6, 6)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (20, 5, 7, 7)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (21, 10, 8, 9)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (22, 5, 8, 5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (23, 8, 6, 7)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (24, 7, 5, 7)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (25, 5, 6, 6)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (26, 10, 8.5, 9)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (27, 8, 6, 9)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (28, 6, 8, 4)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (29, 6, 5, 6)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (30, 6, 6.5, 6)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (31, 7, 5.5, 5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (32, 6, 6, 4.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (33, 6.5, 6.5, 6)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (34, 5, 8, 5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (35, 10, 8, 9)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (36, 6, 6, 6.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (37, 7, 5, 5.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (38, 6.5, 5.5, 5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (39, 8, 6, 8)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (40, 4, 4, 4)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (41, 5, 7, 7)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (42, 5.5, 6.5, 8)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (43, 9, 7, 10)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (44, 6, 6, 9)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (45, 8, 5, 7)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (46, 5.5, 5, 4)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (47, 9.5, 8, 10)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (48, 10, 8, 10)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (49, 6, 7, 5.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (50, 10, 8.5, 9.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (51, 8, 6, 9)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (52, 4.5, 5.5, 5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (53, 9, 8.5, 10)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (54, 6.5, 6.5, 4)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (55, 7.5, 4.5, 6)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (56, 7, 5.5, 8)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (57, 9, 6, 6.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (58, 4, 5.5, 4)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (59, 10, 8.5, 9)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (60, 5.5, 6, 5.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (61, 5, 5, 6)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (62, 6.5, 4, 5.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (63, 6, 7.5, 8)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (64, 6, 5, 6)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (65, 4, 6, 4.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (66, 7, 5, 3)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (67, 10, 9, 10)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (68, 8, 4, 5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (69, 9, 8, 8)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (70, 5.5, 5.5, 7.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (71, 5, 9, 7)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (72, 6.5, 5, 8)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (73, 6, 7.5, 8)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (74, 10, 6, 8)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (75, 8.5, 6.5, 6)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (76, 8, 7, 8.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (77, 8, 7.5, 9)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (78, 4.5, 6.5, 4)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (79, 10, 9, 10)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (80, 3.5, 4, 5.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (81, 6, 6.5, 4.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (82, 8, 6, 4)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (83, 5, 8.5, 5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (84, 10, 7, 9)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (85, 7, 7, 10)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (86, 5.5, 6.5, 6.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (87, 8, 4.5, 8)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (88, 5, 5.5, 6)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (89, 4.5, 6, 5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (90, 4.5, 6.5, 4.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (91, 6, 5, 6.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (92, 6, 5.5, 6.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (93, 4, 5, 4)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (94, 6, 4.5, 3)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (95, 5, 5.5, 6)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (96, 6, 6.5, 5.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (97, 8, 6, 7)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (98, 7, 6, 6)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (99, 8, 7, 7)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (100, 6.5, 5, 3)
GO
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (101, 7, 7, 8.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (102, 7, 6.5, 6)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (103, 6.5, 4, 4)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (104, 6.5, 7, 6.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (105, 4, 6.5, 3.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (106, 5, 6, 6)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (107, 5.4, 5.7, 4.9)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (108, 5, 5, 4.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (109, 7, 7, 8)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (110, 5, 6.8, 5.2)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (111, 8, 7, 8)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (112, 5.5, 5.5, 7.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (113, 6, 3, 5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (114, 10, 10, 10)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (115, 5.5, 7, 5.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (116, 7.5, 7, 10)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (117, 10, 9, 9.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (118, 4, 4, 4.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (119, 4.5, 5.5, 6.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (120, 5, 6, 6)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (121, 10, 8.5, 9)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (122, 6.5, 6.5, 6)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (123, 4, 7.5, 5.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (124, 5.5, 5, 5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (125, 9, 7, 8)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (126, 4.5, 6.5, 4.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (127, 5.5, 4, 5.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (128, 7, 4, 8)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (129, 8, 5, 5.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (130, 5, 5, 5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (131, 4, 4, 5.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (132, 4.5, 4.5, 6.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (133, 9, 8, 7.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (134, 10, 8, 9)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (135, 10, 8.5, 9)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (136, 6, 4, 5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (137, 5, 6, 5.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (138, 6, 5.5, 6.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (139, 6.5, 9, 6.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (140, 6.5, 5.5, 6.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (141, 9, 7, 8)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (142, 6, 7, 5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (143, 3.5, 5.5, 6)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (144, 9, 6, 8)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (145, 3, 5, 4)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (146, 5, 6.5, 6.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (147, 10, 8, 10)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (148, 9.5, 8.5, 9)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (149, 9, 8.5, 10)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (150, 8, 9, 6)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (151, 5, 5, 6)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (152, 10, 7, 7)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (153, 7.5, 6, 8)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (154, 4, 5.5, 7)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (155, 7, 5.5, 3.5)
INSERT [dbo].[DiemThi] ([SoBD], [Toan], [Van], [AnhVan]) VALUES (156, 4, 7.5, 5)
go


/*
1. Tạo view KET QUA chứa kết quả thi của từng học sinh bao gồm các thông tin:
SoBD, HoTen, Phai, Tuoi, Toan, Van, AnhVan, TongDiem, XepLoai, DTDuThi
Biết rằng: TongDiem = Toan + Van + AnhVan + DiemUT
XepLoai học sinh như sau:
* Giỏi nếu TongDiem>=24 và tất cả các môn >=7
* Khá nếu TongDiem>=21 và tất cả các môn >=6
* Trung Bình nếu TongDiem>=15 và tất cả các môn >=4
* Trượt nếu ngược lại 
*/
alter view Cau1 as
select DanhSach.SoBD, DanhSach.Ho, DanhSach.Ten, DanhSach.Phai, 
	   YEAR(GETDATE()) - YEAR(DanhSach.NTNS) AS Tuoi,
		DiemThi.Toan, DiemThi.Van, DiemThi.AnhVan, ChiTietDT.DiemUT, 
		(Toan + Van + AnhVan + ChiTietDT.DiemUT) as TongDiem,
		case 
			when Toan + Van + AnhVan + ChiTietDT.DiemUT >= 24 and 
					least(Toan, Van, AnhVan)>=7 then N'Giỏi'
			when Toan + Van + AnhVan + ChiTietDT.DiemUT >= 21 and 
					least(Toan, Van, AnhVan)>=6 then N'Khá'
			when  Toan + Van + AnhVan + ChiTietDT.DiemUT >= 15 and 
					least(Toan, Van, AnhVan)>=4 then N'Trung Bình'
			else N'Trượt'
		end as XepLoai,
		ChiTietDT.DTDuThi
from DanhSach
INNER JOIN DiemThi ON DanhSach.SoBD = DiemThi.SoBD
INNER JOIN ChiTietDT ON DanhSach.DTDuThi = ChiTietDT.DTDuThi
go
select * from Cau1
go


/*
2. Tạo view GIOI TOAN – VAN – ANH VAN bao gồm các học sinh có ít nhất 1
   môn 10 và có TongDiem>=25 bao gồm các thông tin: SoBD, HoTen, Toan, Van,
   AnhVan, TongDiem, DienGiaiDT
*/
alter view Cau2 as
select DanhSach.SoBD, DanhSach.Ho, DanhSach.Ten, DiemThi.Toan, DiemThi.Van, DiemThi.AnhVan, 
Toan + Van + AnhVan + ChiTietDT.DiemUT as N'TongDiem', ChiTietDT.DienGiaiDT
FROM DanhSach
INNER JOIN DiemThi ON DanhSach.SoBD = DiemThi.SoBD
LEFT JOIN ChiTietDT ON DanhSach.DTDuThi = ChiTietDT.DTDuThi
WHERE (DiemThi.Toan = 10 OR DiemThi.Van = 10 OR DiemThi.AnhVan = 10) AND 
(DiemThi.Toan + DiemThi.Van + DiemThi.AnhVan + ISNULL(ChiTietDT.DiemUT, 0)) >= 25
go
select * from Cau2
go


/*
3. Tạo view DANH SACH DAU (ĐẬU) gồm các học sinh có XepLoai là Giỏi, Khá
hoặc Trung Bình với các field: SoBD, HoTen, Phai, Tuoi, Toan, Van, AnhVan,
TongDiem, XepLoai, DTDuThi
*/
alter view Cau3
as
SELECT
    SoBD,
    Ho,
	Ten,
    Phai,
    Tuoi,
    Toan,
    Van,
    AnhVan,
    TongDiem,
    XepLoai,
    DTDuThi
from Cau1
where XepLoai IN (N'Giỏi', N'Khá', N'Trung Bình')
go
select * from Cau3
go

/*
4. Tạo view HOC SINH DAT THU KHOA KY THI bao gồm các học sinh “ĐẬU”
có TongDiem lớn nhất với các field: SoBD, HoTen, Phai, Tuoi, Toan, Van, AnhVan,
TongDiem, DienGiaiDT
*/
alter view Cau4 as
SELECT
    SoBD,
    Ho,
	Ten,
    Phai,
    Tuoi,
    Toan,
    Van,
    AnhVan,
    TongDiem,
    XepLoai,
    DTDuThi
FROM Cau1
where TongDiem = (select max(TongDiem) from Cau1) 
go
select * from Cau4
go

/*
5. Tạo thủ tục có đầu vào là số báo danh, đầu ra là các điểm thi, điểm ưu tiên và tổng điểm
*/
create or alter procedure Proc_Cau5
	@soBD int,
	@Toan int output,
	@Van int output,
	@AnhVan int output,
	@DiemUT int output,
	@TongDiem float output
as
begin
	select @Toan = Toan, @Van=Van, @AnhVan =AnhVan, @DiemUT =DiemUT,
	@TongDiem = TongDiem
	from Cau1 
	where SoBD = @soBD
end

declare @SoBDTest int = 2;
declare @ToanTest int;
declare @VanTest int;
declare @AnhVanTest int;
declare @DiemUTTest int;
declare @TongDiemTest int;

EXEC Proc_Cau5
    @soBD = @SoBDTest,
    @Toan = @ToanTest output,
    @Van = @VanTest output,
    @AnhVan = @AnhVanTest output,
	@DiemUT = @DiemUTTest output,
    @TongDiem = @TongDiemTest output

print 'Thong tin thi sinh co SBD ' + CAST(@SoBDTest AS NVARCHAR(20)) + ' là:'
print 'Toan: ' + CAST(@ToanTest AS NVARCHAR(20))
print 'Van: ' + CAST(@VanTest AS NVARCHAR(20))
print 'Anh Van: ' + CAST(@AnhVanTest AS NVARCHAR(20))
print 'Diem uu tien: ' + CAST(@DiemUTTest AS NVARCHAR(20))
print 'Tong Diem: ' + CAST(@TongDiemTest AS NVARCHAR(20))
go

/*
6. Tạo trigger kiểm tra xem việc nhập mã đối tượng dự thi trong bảng danh sách có
đúng với bảng đối tượng dự thi không
*/
create or alter trigger Trig_Cau6
on DanhSach
after insert 
as
begin
	declare @SoBDTest int
	set @SoBDTest = (
		select count(*) from inserted 
		left join ChiTietDT on inserted.DTDuThi = ChiTietDT.DTDuThi
		where ChiTietDT.DTDuThi is null
	)
	if @SoBDTest>0
		begin
			throw 50000, 'Mã đối tượng không hợp lệ !',1;
			rollback transaction
		end;
end
go
begin try
    insert into DanhSach (SoBD, Ho, Ten, Phai, NTNS, DTDuThi)
	values (1, 'Do Xuan', 'Trang', 1, '2000-01-01', 2);
end try
begin catch
    select ERROR_MESSAGE() as ErrorMessage;
end catch
select * from DanhSach where SoBD=1
go


-- 7. Thêm trường điểm ưu tiên và tổng điểm vào bảng Điểm thi. Tạo trigger cập nhật
--    tự động trường ưu tiên và tổng điểm mỗi khi nhập hay chỉnh sửa
alter table DiemThi
add DiemUT int null,
	TongDiem float null
go
create or alter trigger Trig_Cau7
on DiemThi
after insert, update 
as
begin
	declare @DiemUT int,
			@TongDiem float
	select @DiemUT = inserted.DiemUT, @TongDiem =inserted.TongDiem
	from inserted
	update DiemThi set DiemThi.DiemUT = @DiemUT, DiemThi.TongDiem=@TongDiem
end
go


-- 8. Tạo trigger xóa tự động bản ghi tương ứng ở bảng điểm khi xóa bản ghi ở danh sách
create or alter trigger Trig_Cau8
on DanhSach
after delete 
as
begin
	delete from DiemThi
	where SoBD in (select SoBD from deleted)
end 
go
delete from DanhSach where DanhSach.SoBD=11

