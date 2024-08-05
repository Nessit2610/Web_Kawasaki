USE [Kawasaki]
GO
/****** Object:  Table [dbo].[ChitietHoaDon]    Script Date: 12/26/2023 9:09:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChitietHoaDon](
	[MaChiTietHD] [bigint] IDENTITY(1,1) NOT NULL,
	[maxe] [nvarchar](50) NOT NULL,
	[tenxe] [nvarchar](50) NULL,
	[SoLuongMua] [int] NOT NULL,
	[MaHoaDon] [bigint] NOT NULL,
	[damua] [bit] NULL,
 CONSTRAINT [PK_ChitietHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaChiTietHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DangNhap]    Script Date: 12/26/2023 9:09:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangNhap](
	[TenDangNhap] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[Quyen] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 12/26/2023 9:09:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHoaDon] [bigint] IDENTITY(1,1) NOT NULL,
	[makh] [bigint] NULL,
	[NgayMua] [datetime] NOT NULL,
	[damua] [bit] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/26/2023 9:09:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[makh] [bigint] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[diachi] [nvarchar](50) NULL,
	[sodt] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[tendn] [nvarchar](50) NULL,
	[pass] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[makh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loaixe]    Script Date: 12/26/2023 9:09:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaixe](
	[maloai] [nvarchar](50) NOT NULL,
	[tenloai] [nvarchar](50) NULL,
 CONSTRAINT [PK_loaixe] PRIMARY KEY CLUSTERED 
(
	[maloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongSoChiTiet]    Script Date: 12/26/2023 9:09:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongSoChiTiet](
	[Maxe] [nvarchar](50) NOT NULL,
	[TenXe] [nvarchar](50) NOT NULL,
	[Dungtich] [nvarchar](50) NULL,
	[Hopso] [nvarchar](50) NULL,
	[Loaidongco] [nvarchar](50) NULL,
	[Congnghe] [nvarchar](50) NULL,
	[Chieucao] [nvarchar](50) NULL,
	[Trongluong] [nvarchar](50) NULL,
	[Baohang] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xe]    Script Date: 12/26/2023 9:09:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xe](
	[maxe] [nvarchar](50) NOT NULL,
	[tenxe] [nvarchar](50) NULL,
	[soluong] [bigint] NULL,
	[gia] [bigint] NULL,
	[maloaixe] [nvarchar](50) NULL,
	[anh] [nvarchar](50) NULL,
 CONSTRAINT [PK_xe] PRIMARY KEY CLUSTERED 
(
	[maxe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChitietHoaDon] ON 

INSERT [dbo].[ChitietHoaDon] ([MaChiTietHD], [maxe], [tenxe], [SoLuongMua], [MaHoaDon], [damua]) VALUES (1, N'h2r', N'Ninja H2R', 1, 2, 1)
INSERT [dbo].[ChitietHoaDon] ([MaChiTietHD], [maxe], [tenxe], [SoLuongMua], [MaHoaDon], [damua]) VALUES (2, N'zx10r', N'Ninja ZX-10R ', 2, 3, 1)
INSERT [dbo].[ChitietHoaDon] ([MaChiTietHD], [maxe], [tenxe], [SoLuongMua], [MaHoaDon], [damua]) VALUES (3, N'n4', N'Ninja 400', 1, 3, 1)
INSERT [dbo].[ChitietHoaDon] ([MaChiTietHD], [maxe], [tenxe], [SoLuongMua], [MaHoaDon], [damua]) VALUES (4, N'h2r', N'Ninja H2R', 1, 4, 1)
INSERT [dbo].[ChitietHoaDon] ([MaChiTietHD], [maxe], [tenxe], [SoLuongMua], [MaHoaDon], [damua]) VALUES (5, N'kxl230s', N'KXL 230S', 1, 4, 1)
INSERT [dbo].[ChitietHoaDon] ([MaChiTietHD], [maxe], [tenxe], [SoLuongMua], [MaHoaDon], [damua]) VALUES (6, N'kxl230r', N'KXL 230R', 1, 5, 1)
INSERT [dbo].[ChitietHoaDon] ([MaChiTietHD], [maxe], [tenxe], [SoLuongMua], [MaHoaDon], [damua]) VALUES (7, N'h2r', N'Ninja H2R', 1, 5, 1)
INSERT [dbo].[ChitietHoaDon] ([MaChiTietHD], [maxe], [tenxe], [SoLuongMua], [MaHoaDon], [damua]) VALUES (8, N'n650', N'Ninja 650 ABS', 1, 6, 1)
INSERT [dbo].[ChitietHoaDon] ([MaChiTietHD], [maxe], [tenxe], [SoLuongMua], [MaHoaDon], [damua]) VALUES (9, N'zx10r', N'Ninja ZX-10R ', 2, 6, 1)
INSERT [dbo].[ChitietHoaDon] ([MaChiTietHD], [maxe], [tenxe], [SoLuongMua], [MaHoaDon], [damua]) VALUES (10, N'n4', N'Ninja 400', 1, 6, 1)
INSERT [dbo].[ChitietHoaDon] ([MaChiTietHD], [maxe], [tenxe], [SoLuongMua], [MaHoaDon], [damua]) VALUES (11, N'z650rs', N'Z650 RS ABS', 1, 7, 1)
INSERT [dbo].[ChitietHoaDon] ([MaChiTietHD], [maxe], [tenxe], [SoLuongMua], [MaHoaDon], [damua]) VALUES (12, N'zh2', N'Z H2 ', 1, 7, 1)
INSERT [dbo].[ChitietHoaDon] ([MaChiTietHD], [maxe], [tenxe], [SoLuongMua], [MaHoaDon], [damua]) VALUES (13, N'z900abs', N'Z900 ABS 2023', 1, 7, 1)
INSERT [dbo].[ChitietHoaDon] ([MaChiTietHD], [maxe], [tenxe], [SoLuongMua], [MaHoaDon], [damua]) VALUES (14, N'h2', N'Ninja H2', 1, 8, 1)
INSERT [dbo].[ChitietHoaDon] ([MaChiTietHD], [maxe], [tenxe], [SoLuongMua], [MaHoaDon], [damua]) VALUES (15, N'h2r', N'Ninja H2R', 1, 8, 1)
INSERT [dbo].[ChitietHoaDon] ([MaChiTietHD], [maxe], [tenxe], [SoLuongMua], [MaHoaDon], [damua]) VALUES (16, N'kxl230sm', N'KXL 230SM', 1, 9, 1)
INSERT [dbo].[ChitietHoaDon] ([MaChiTietHD], [maxe], [tenxe], [SoLuongMua], [MaHoaDon], [damua]) VALUES (17, N'h2', N'Ninja H2', 1, 10, 0)
INSERT [dbo].[ChitietHoaDon] ([MaChiTietHD], [maxe], [tenxe], [SoLuongMua], [MaHoaDon], [damua]) VALUES (18, N'h2r', N'Ninja H2R', 1, 10, 0)
INSERT [dbo].[ChitietHoaDon] ([MaChiTietHD], [maxe], [tenxe], [SoLuongMua], [MaHoaDon], [damua]) VALUES (19, N'kxl230r', N'KXL 230R', 1, 10, 0)
INSERT [dbo].[ChitietHoaDon] ([MaChiTietHD], [maxe], [tenxe], [SoLuongMua], [MaHoaDon], [damua]) VALUES (20, N'kxl230s', N'KXL 230S', 1, 10, 0)
INSERT [dbo].[ChitietHoaDon] ([MaChiTietHD], [maxe], [tenxe], [SoLuongMua], [MaHoaDon], [damua]) VALUES (21, N'kxl230sm', N'KXL 230SM', 1, 10, 0)
INSERT [dbo].[ChitietHoaDon] ([MaChiTietHD], [maxe], [tenxe], [SoLuongMua], [MaHoaDon], [damua]) VALUES (22, N'n4', N'Ninja 400', 1, 10, 0)
INSERT [dbo].[ChitietHoaDon] ([MaChiTietHD], [maxe], [tenxe], [SoLuongMua], [MaHoaDon], [damua]) VALUES (23, N'z650rs', N'Z650 RS ABS', 1, 10, 0)
INSERT [dbo].[ChitietHoaDon] ([MaChiTietHD], [maxe], [tenxe], [SoLuongMua], [MaHoaDon], [damua]) VALUES (24, N'h2r', N'Ninja H2R', 1, 11, 0)
INSERT [dbo].[ChitietHoaDon] ([MaChiTietHD], [maxe], [tenxe], [SoLuongMua], [MaHoaDon], [damua]) VALUES (25, N'zx10r', N'Ninja ZX-10R ', 2, 12, 0)
INSERT [dbo].[ChitietHoaDon] ([MaChiTietHD], [maxe], [tenxe], [SoLuongMua], [MaHoaDon], [damua]) VALUES (26, N'h2', N'Ninja H2', 2, 12, 0)
INSERT [dbo].[ChitietHoaDon] ([MaChiTietHD], [maxe], [tenxe], [SoLuongMua], [MaHoaDon], [damua]) VALUES (27, N'n650', N'Ninja 650 ABS', 1, 12, 0)
INSERT [dbo].[ChitietHoaDon] ([MaChiTietHD], [maxe], [tenxe], [SoLuongMua], [MaHoaDon], [damua]) VALUES (28, N'z650rs', N'Z650 RS ABS', 1, 12, 0)
INSERT [dbo].[ChitietHoaDon] ([MaChiTietHD], [maxe], [tenxe], [SoLuongMua], [MaHoaDon], [damua]) VALUES (29, N'z900rs', N'Z900RS', 1, 12, 0)
INSERT [dbo].[ChitietHoaDon] ([MaChiTietHD], [maxe], [tenxe], [SoLuongMua], [MaHoaDon], [damua]) VALUES (30, N'zx25r', N'Ninja ZX-25R', 1, 12, 0)
INSERT [dbo].[ChitietHoaDon] ([MaChiTietHD], [maxe], [tenxe], [SoLuongMua], [MaHoaDon], [damua]) VALUES (31, N'z650', N'Z650 ABS', 1, 12, 0)
INSERT [dbo].[ChitietHoaDon] ([MaChiTietHD], [maxe], [tenxe], [SoLuongMua], [MaHoaDon], [damua]) VALUES (32, N'z1000', N'Z1000 ABS 2023', 1, 12, 0)
INSERT [dbo].[ChitietHoaDon] ([MaChiTietHD], [maxe], [tenxe], [SoLuongMua], [MaHoaDon], [damua]) VALUES (33, N'vulcan', N'Vulcan S ABS', 1, 12, 0)
INSERT [dbo].[ChitietHoaDon] ([MaChiTietHD], [maxe], [tenxe], [SoLuongMua], [MaHoaDon], [damua]) VALUES (34, N'n4abs', N'Ninja 400 ABS', 1, 12, 0)
INSERT [dbo].[ChitietHoaDon] ([MaChiTietHD], [maxe], [tenxe], [SoLuongMua], [MaHoaDon], [damua]) VALUES (35, N'kxl230s', N'KXL 230S', 1, 12, 0)
INSERT [dbo].[ChitietHoaDon] ([MaChiTietHD], [maxe], [tenxe], [SoLuongMua], [MaHoaDon], [damua]) VALUES (36, N'kxl230r', N'KXL 230R', 5, 12, 0)
INSERT [dbo].[ChitietHoaDon] ([MaChiTietHD], [maxe], [tenxe], [SoLuongMua], [MaHoaDon], [damua]) VALUES (37, N'h2r', N'Ninja H2R', 1, 13, 0)
INSERT [dbo].[ChitietHoaDon] ([MaChiTietHD], [maxe], [tenxe], [SoLuongMua], [MaHoaDon], [damua]) VALUES (38, N'kxl230r', N'KXL 230R', 1, 13, 0)
SET IDENTITY_INSERT [dbo].[ChitietHoaDon] OFF
GO
INSERT [dbo].[DangNhap] ([TenDangNhap], [MatKhau], [Quyen]) VALUES (N'Letien123123', N'123', 0)
INSERT [dbo].[DangNhap] ([TenDangNhap], [MatKhau], [Quyen]) VALUES (N'ngotan', N'123', 0)
INSERT [dbo].[DangNhap] ([TenDangNhap], [MatKhau], [Quyen]) VALUES (N'admin', N'123', 1)
INSERT [dbo].[DangNhap] ([TenDangNhap], [MatKhau], [Quyen]) VALUES (N'123123', N'123123', 0)
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([MaHoaDon], [makh], [NgayMua], [damua]) VALUES (2, 1, CAST(N'2023-12-21T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[HoaDon] ([MaHoaDon], [makh], [NgayMua], [damua]) VALUES (3, 1, CAST(N'2023-12-21T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[HoaDon] ([MaHoaDon], [makh], [NgayMua], [damua]) VALUES (4, 1, CAST(N'2023-12-23T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[HoaDon] ([MaHoaDon], [makh], [NgayMua], [damua]) VALUES (5, 1, CAST(N'2023-12-23T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[HoaDon] ([MaHoaDon], [makh], [NgayMua], [damua]) VALUES (6, 3, CAST(N'2023-12-23T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[HoaDon] ([MaHoaDon], [makh], [NgayMua], [damua]) VALUES (7, 1, CAST(N'2023-12-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[HoaDon] ([MaHoaDon], [makh], [NgayMua], [damua]) VALUES (8, 1, CAST(N'2023-12-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[HoaDon] ([MaHoaDon], [makh], [NgayMua], [damua]) VALUES (9, 1, CAST(N'2023-12-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[HoaDon] ([MaHoaDon], [makh], [NgayMua], [damua]) VALUES (10, 1, CAST(N'2023-12-24T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[HoaDon] ([MaHoaDon], [makh], [NgayMua], [damua]) VALUES (11, 1, CAST(N'2023-12-24T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[HoaDon] ([MaHoaDon], [makh], [NgayMua], [damua]) VALUES (12, 1, CAST(N'2023-12-24T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[HoaDon] ([MaHoaDon], [makh], [NgayMua], [damua]) VALUES (13, 1, CAST(N'2023-12-25T00:00:00.000' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([makh], [hoten], [diachi], [sodt], [email], [tendn], [pass]) VALUES (1, N'Lê Văn Tiến', N'Cạnh nhà hàng xóm', N'0964802324', N'letien26102003@gmail.com', N'Letien123123', N'123')
INSERT [dbo].[KhachHang] ([makh], [hoten], [diachi], [sodt], [email], [tendn], [pass]) VALUES (3, N'Ngô Tấn', N'361 Tăng Bạt Hổ', N'0905416748', N'ngotan2k3@gmail.com', N'ngotan', N'123')
INSERT [dbo].[KhachHang] ([makh], [hoten], [diachi], [sodt], [email], [tendn], [pass]) VALUES (4, N'Admin', N'admin', N'0123456789', N'admingmail.com', N'admin', N'123')
INSERT [dbo].[KhachHang] ([makh], [hoten], [diachi], [sodt], [email], [tendn], [pass]) VALUES (5, N'Tiến 2', N'123abc', N'1234567', N'alo123@a', N'123123', N'123123')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
INSERT [dbo].[loaixe] ([maloai], [tenloai]) VALUES (N'Kxl', N'Kxl')
INSERT [dbo].[loaixe] ([maloai], [tenloai]) VALUES (N'Ninja', N'Ninja')
INSERT [dbo].[loaixe] ([maloai], [tenloai]) VALUES (N'Versys', N'Versys')
INSERT [dbo].[loaixe] ([maloai], [tenloai]) VALUES (N'Vulcan', N'Vulcan')
INSERT [dbo].[loaixe] ([maloai], [tenloai]) VALUES (N'W', N'W')
INSERT [dbo].[loaixe] ([maloai], [tenloai]) VALUES (N'Z', N'Z')
GO
INSERT [dbo].[ThongSoChiTiet] ([Maxe], [TenXe], [Dungtich], [Hopso], [Loaidongco], [Congnghe], [Chieucao], [Trongluong], [Baohang]) VALUES (N'h2', N'Ninja H2', N'998 cm³', N'Hộp số 6 cấp', N'Động cơ siêu nạp DOHC', N'ABS', N'825 mm', N'238 kg', N'24 Tháng')
INSERT [dbo].[ThongSoChiTiet] ([Maxe], [TenXe], [Dungtich], [Hopso], [Loaidongco], [Congnghe], [Chieucao], [Trongluong], [Baohang]) VALUES (N'h2r', N'Ninja H2R', N'998 cm³', N'Hộp số 6 cấp', N'Động cơ siêu nạp DOHC', N'ABS', N'825 mm', N'238 kg', N'24 Tháng')
INSERT [dbo].[ThongSoChiTiet] ([Maxe], [TenXe], [Dungtich], [Hopso], [Loaidongco], [Congnghe], [Chieucao], [Trongluong], [Baohang]) VALUES (N'kxl230r', N'KXL 230R', N'233 cm³', N'Hộp số 6 cấp', N'Động cơ xi-lanh đơn', N'PHUN XĂNG ĐIỆN TỬ', N'830 mm', N'135 kg', N'24 Tháng')
INSERT [dbo].[ThongSoChiTiet] ([Maxe], [TenXe], [Dungtich], [Hopso], [Loaidongco], [Congnghe], [Chieucao], [Trongluong], [Baohang]) VALUES (N'kxl230s', N'KXL 230S', N'233 cm³', N'Hộp số 6 cấp', N'Động cơ xi-lanh đơn', N'PHUN XĂNG ĐIỆN TỬ', N'830 mm', N'135 kg', N'24 Tháng')
INSERT [dbo].[ThongSoChiTiet] ([Maxe], [TenXe], [Dungtich], [Hopso], [Loaidongco], [Congnghe], [Chieucao], [Trongluong], [Baohang]) VALUES (N'kxl230sm', N'KXL 230SM', N'233 cm³', N'Hộp số 6 cấp', N'Động cơ xi-lanh đơn', N'PHUN XĂNG ĐIỆN TỬ', N'845 mm', N'135 kg', N'24 Tháng')
INSERT [dbo].[ThongSoChiTiet] ([Maxe], [TenXe], [Dungtich], [Hopso], [Loaidongco], [Congnghe], [Chieucao], [Trongluong], [Baohang]) VALUES (N'n4', N'Ninja 400', N' 399 cm³', N'Hộp số 6 cấp', N'Động cơ xi-lanh đôi DOHC', N'ABS', N'785 mm', N'168 kg', N'24 Tháng')
INSERT [dbo].[ThongSoChiTiet] ([Maxe], [TenXe], [Dungtich], [Hopso], [Loaidongco], [Congnghe], [Chieucao], [Trongluong], [Baohang]) VALUES (N'n4abs', N'Ninja 400 ABS', N' 399 cm³', N'Hộp số 6 cấp', N'Động cơ xi-lanh đôi DOHC', N'ABS', N'785 mm', N'168 kg', N'24 Tháng')
INSERT [dbo].[ThongSoChiTiet] ([Maxe], [TenXe], [Dungtich], [Hopso], [Loaidongco], [Congnghe], [Chieucao], [Trongluong], [Baohang]) VALUES (N'n650', N'Ninja 650 ABS', N'649 cm³', N'Hộp số 6 cấp', N'Động cơ xi-lanh đôi DOHC', N'ABS', N'790 mm', N'193 kg', N'24 Tháng')
INSERT [dbo].[ThongSoChiTiet] ([Maxe], [TenXe], [Dungtich], [Hopso], [Loaidongco], [Congnghe], [Chieucao], [Trongluong], [Baohang]) VALUES (N'versys', N'Versys 650', N'649 cm³', N'Hộp số 6 cấp', N'Động cơ xi-lanh đôi DOHC', N'ABS', N'845 mm', N'219 kg', N'24 Tháng')
INSERT [dbo].[ThongSoChiTiet] ([Maxe], [TenXe], [Dungtich], [Hopso], [Loaidongco], [Congnghe], [Chieucao], [Trongluong], [Baohang]) VALUES (N'vulcan', N'Vulcan S ABS', N'649 cm³', N'Hộp số 6 cấp', N'Động cơ xi-lanh đôi DOHC', N'ABS', N'705 mm', N'229 kg', N'24 Tháng')
INSERT [dbo].[ThongSoChiTiet] ([Maxe], [TenXe], [Dungtich], [Hopso], [Loaidongco], [Congnghe], [Chieucao], [Trongluong], [Baohang]) VALUES (N'w175se', N'W175 SE', N'177 cm³', N'Hộp số 5 cấp', N'Động cơ xi-lanh đơn', N'Thuần cổ điển', N'780 mm', N'126 kg', N'24 Tháng')
INSERT [dbo].[ThongSoChiTiet] ([Maxe], [TenXe], [Dungtich], [Hopso], [Loaidongco], [Congnghe], [Chieucao], [Trongluong], [Baohang]) VALUES (N'w800', N'W800', N'773 cm³', N'Hộp số 5 cấp', N'SOHC', N'ABS', N'790 mm', N'226 kg', N'24 Tháng')
INSERT [dbo].[ThongSoChiTiet] ([Maxe], [TenXe], [Dungtich], [Hopso], [Loaidongco], [Congnghe], [Chieucao], [Trongluong], [Baohang]) VALUES (N'z1000', N'Z1000 ABS 2023', N'1.043 cm³', N'Hộp số 6 cấp', N'4 thì, 4 xy-lanh, DOHC, W/C', N'ABS', N'815 mm', N'221 kg', N'24 Tháng')
INSERT [dbo].[ThongSoChiTiet] ([Maxe], [TenXe], [Dungtich], [Hopso], [Loaidongco], [Congnghe], [Chieucao], [Trongluong], [Baohang]) VALUES (N'z1000re', N'Z1000 RE ABS', N'1.043 cm³', N'Hộp số 6 cấp', N'4 thì, 4 xy-lanh, DOHC, W/C', N'ABS', N'815 mm', N'221 kg', N'24 Tháng')
INSERT [dbo].[ThongSoChiTiet] ([Maxe], [TenXe], [Dungtich], [Hopso], [Loaidongco], [Congnghe], [Chieucao], [Trongluong], [Baohang]) VALUES (N'z400', N'Z400', N'399 cm³', N'Hộp số 6 cấp', N'4 thì, xy-lanh đôi, DOHC, 4 van, W /C', N'ABS', N'785mm', N'167 kg', N'24 Tháng')
INSERT [dbo].[ThongSoChiTiet] ([Maxe], [TenXe], [Dungtich], [Hopso], [Loaidongco], [Congnghe], [Chieucao], [Trongluong], [Baohang]) VALUES (N'z650', N'Z650 ABS', N'649 cm3', N'Hộp số 6 cấp', N' 4 thì, 2 xy-lanh DOHC, 8 van Parallel Twin', N'ABS', N'790 mm
', N'	188 kg', N'24 Tháng')
INSERT [dbo].[ThongSoChiTiet] ([Maxe], [TenXe], [Dungtich], [Hopso], [Loaidongco], [Congnghe], [Chieucao], [Trongluong], [Baohang]) VALUES (N'z650rs', N'Z650 RS ABS', N'	649 cm3', N'Hộp số 6 cấp', N'4 thì, 2 xy-lanh', N'ABS', N'820 mm
', N'187 kg
', N'24 Tháng')
INSERT [dbo].[ThongSoChiTiet] ([Maxe], [TenXe], [Dungtich], [Hopso], [Loaidongco], [Congnghe], [Chieucao], [Trongluong], [Baohang]) VALUES (N'z900', N'Z900', N'948 cm³', N'Hộp số 6 cấp', N'Động cơ 4 xi-lanh thẳng hàng', N'ABS', N'800 mm
', N'212 kg
', N'24 Tháng')
INSERT [dbo].[ThongSoChiTiet] ([Maxe], [TenXe], [Dungtich], [Hopso], [Loaidongco], [Congnghe], [Chieucao], [Trongluong], [Baohang]) VALUES (N'z900abs', N'Z900 ABS 2023', N'948 cm³', N'Hộp số 6 cấp', N'Động cơ 4 xi-lanh thẳng hàng', N'ABS', N'800 mm
', N'212 kg
', N'24 Tháng')
INSERT [dbo].[ThongSoChiTiet] ([Maxe], [TenXe], [Dungtich], [Hopso], [Loaidongco], [Congnghe], [Chieucao], [Trongluong], [Baohang]) VALUES (N'z900rs', N'Z900RS', N'948 cm³', N'Hộp số 6 cấp', N'4 temps, 4 cylindres en ligne
', N'ABS', N'820 mm
', N'215 kg
', N'24 Tháng')
INSERT [dbo].[ThongSoChiTiet] ([Maxe], [TenXe], [Dungtich], [Hopso], [Loaidongco], [Congnghe], [Chieucao], [Trongluong], [Baohang]) VALUES (N'zh2', N'Z H2 ', N'	998 cm³', N'Hộp số 6 cấp', N'4 xi-lanh thẳng hàng', N'ABS', N'830 mm
', N'240 kg
', N'24 Tháng')
INSERT [dbo].[ThongSoChiTiet] ([Maxe], [TenXe], [Dungtich], [Hopso], [Loaidongco], [Congnghe], [Chieucao], [Trongluong], [Baohang]) VALUES (N'zh2se', N'Z H2 SE', N'	998 cm³', N'Hộp số 6 cấp', N'4 xi-lanh thẳng hàng', N'ABS', N'830 mm
', N'240 kg
', N'24 Tháng')
INSERT [dbo].[ThongSoChiTiet] ([Maxe], [TenXe], [Dungtich], [Hopso], [Loaidongco], [Congnghe], [Chieucao], [Trongluong], [Baohang]) VALUES (N'zx10r', N'Ninja ZX-10R ', N'998 cm³', N'Hộp số 6 cấp', N'DOHC, 4 xi-lanh thẳng hàng', N'ABS', N'835 mm
', N'207 kg
', N'24 Tháng')
INSERT [dbo].[ThongSoChiTiet] ([Maxe], [TenXe], [Dungtich], [Hopso], [Loaidongco], [Congnghe], [Chieucao], [Trongluong], [Baohang]) VALUES (N'zx10r2', N'Ninja ZX-10R 2023', N'998 cm³', N'Hộp số 6 cấp', N'DOHC, 4 xi-lanh thẳng hàng', N'ABS', N'835 mm
', N'207 kg
', N'24 Tháng')
INSERT [dbo].[ThongSoChiTiet] ([Maxe], [TenXe], [Dungtich], [Hopso], [Loaidongco], [Congnghe], [Chieucao], [Trongluong], [Baohang]) VALUES (N'zx25r', N'Ninja ZX-25R', N'250 cm³', N'Hộp số 6 cấp', N'4 kỳ, 4 xi-lanh thẳng hàng', N'ABS', N'785 mm', N'	184 kg', N'24 Tháng')
GO
INSERT [dbo].[xe] ([maxe], [tenxe], [soluong], [gia], [maloaixe], [anh]) VALUES (N'h2', N'Ninja H2', 1000, 1372500000, N'Ninja', N'Picture/nh2c.png')
INSERT [dbo].[xe] ([maxe], [tenxe], [soluong], [gia], [maloaixe], [anh]) VALUES (N'h2r', N'Ninja H2R', 1000, 2000000000, N'Ninja', N'Picture/h2r.png')
INSERT [dbo].[xe] ([maxe], [tenxe], [soluong], [gia], [maloaixe], [anh]) VALUES (N'kxl230r', N'KXL 230R', 1000, 150000000, N'Kxl', N'Picture/klx230r.png')
INSERT [dbo].[xe] ([maxe], [tenxe], [soluong], [gia], [maloaixe], [anh]) VALUES (N'kxl230s', N'KXL 230S', 1000, 160000000, N'Kxl', N'Picture/klx230s.png')
INSERT [dbo].[xe] ([maxe], [tenxe], [soluong], [gia], [maloaixe], [anh]) VALUES (N'kxl230sm', N'KXL 230SM', 1000, 160000000, N'Kxl', N'Picture/klx230sm.png')
INSERT [dbo].[xe] ([maxe], [tenxe], [soluong], [gia], [maloaixe], [anh]) VALUES (N'n4', N'Ninja 400', 1000, 171600000, N'Ninja', N'Picture/n400abs.png')
INSERT [dbo].[xe] ([maxe], [tenxe], [soluong], [gia], [maloaixe], [anh]) VALUES (N'n4abs', N'Ninja 400 ABS', 1000, 180000000, N'Ninja', N'Picture/n4abs2023.png')
INSERT [dbo].[xe] ([maxe], [tenxe], [soluong], [gia], [maloaixe], [anh]) VALUES (N'n650', N'Ninja 650 ABS', 1000, 210000000, N'Ninja', N'Picture/n650abs.png')
INSERT [dbo].[xe] ([maxe], [tenxe], [soluong], [gia], [maloaixe], [anh]) VALUES (N'versys', N'Versys 650', 1000, 250000000, N'Versys', N'Picture/versys650.png')
INSERT [dbo].[xe] ([maxe], [tenxe], [soluong], [gia], [maloaixe], [anh]) VALUES (N'vulcan', N'Vulcan S ABS', 1000, 241000000, N'Vulcan', N'Picture/vulcanS.png')
INSERT [dbo].[xe] ([maxe], [tenxe], [soluong], [gia], [maloaixe], [anh]) VALUES (N'w175se', N'W175 SE', 1000, 78800000, N'W', N'Picture/w175se.png')
INSERT [dbo].[xe] ([maxe], [tenxe], [soluong], [gia], [maloaixe], [anh]) VALUES (N'w800', N'W800', 1000, 379000000, N'W', N'Picture/w800.png')
INSERT [dbo].[xe] ([maxe], [tenxe], [soluong], [gia], [maloaixe], [anh]) VALUES (N'z1000', N'Z1000 ABS 2023', 1000, 450000000, N'Z', N'Picture/z1000abs.png')
INSERT [dbo].[xe] ([maxe], [tenxe], [soluong], [gia], [maloaixe], [anh]) VALUES (N'z1000re', N'Z1000 RE ABS', 1000, 400000000, N'Z', N'Picture/z1000reabs.png')
INSERT [dbo].[xe] ([maxe], [tenxe], [soluong], [gia], [maloaixe], [anh]) VALUES (N'z400', N'Z400', 1000, 164000000, N'Z', N'Picture/z400Abs.png')
INSERT [dbo].[xe] ([maxe], [tenxe], [soluong], [gia], [maloaixe], [anh]) VALUES (N'z650', N'Z650 ABS', 1000, 194000000, N'Z', N'Picture/z650abs.png')
INSERT [dbo].[xe] ([maxe], [tenxe], [soluong], [gia], [maloaixe], [anh]) VALUES (N'z650rs', N'Z650 RS ABS', 1000, 233000000, N'Z', N'Picture/z650rsAbs.png')
INSERT [dbo].[xe] ([maxe], [tenxe], [soluong], [gia], [maloaixe], [anh]) VALUES (N'z900', N'Z900', 1000, 321000000, N'Z', N'Picture/z9abs2022.png')
INSERT [dbo].[xe] ([maxe], [tenxe], [soluong], [gia], [maloaixe], [anh]) VALUES (N'z900abs', N'Z900 ABS 2023', 1000, 330000000, N'Z', N'Picture/z900abs.png')
INSERT [dbo].[xe] ([maxe], [tenxe], [soluong], [gia], [maloaixe], [anh]) VALUES (N'z900rs', N'Z900RS', 1000, 417000000, N'Z', N'Picture/z900rs.png')
INSERT [dbo].[xe] ([maxe], [tenxe], [soluong], [gia], [maloaixe], [anh]) VALUES (N'zh2', N'Z H2 ', 1000, 789000000, N'Z', N'Picture/zh2se.png')
INSERT [dbo].[xe] ([maxe], [tenxe], [soluong], [gia], [maloaixe], [anh]) VALUES (N'zh2se', N'Z H2 SE', 1000, 800000000, N'Z', N'Picture/zh2se.png')
INSERT [dbo].[xe] ([maxe], [tenxe], [soluong], [gia], [maloaixe], [anh]) VALUES (N'zx10r', N'Ninja ZX-10R ', 1000, 729000000, N'Ninja', N'Picture/zx10rabs.png')
INSERT [dbo].[xe] ([maxe], [tenxe], [soluong], [gia], [maloaixe], [anh]) VALUES (N'zx10r2', N'Ninja ZX-10R 2023', 1000, 800000000, N'Ninja', N'Picture/zx10rabs2.png')
INSERT [dbo].[xe] ([maxe], [tenxe], [soluong], [gia], [maloaixe], [anh]) VALUES (N'zx25r', N'Ninja ZX-25R', 1000, 197300000, N'Ninja', N'Picture/zx25r.png')
GO
ALTER TABLE [dbo].[ChitietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChitietHoaDon_HoaDon] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HoaDon] ([MaHoaDon])
GO
ALTER TABLE [dbo].[ChitietHoaDon] CHECK CONSTRAINT [FK_ChitietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[ChitietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChitietHoaDon_xe] FOREIGN KEY([maxe])
REFERENCES [dbo].[xe] ([maxe])
GO
ALTER TABLE [dbo].[ChitietHoaDon] CHECK CONSTRAINT [FK_ChitietHoaDon_xe]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([makh])
REFERENCES [dbo].[KhachHang] ([makh])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[ThongSoChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_ThongSoChiTiet_xe] FOREIGN KEY([Maxe])
REFERENCES [dbo].[xe] ([maxe])
GO
ALTER TABLE [dbo].[ThongSoChiTiet] CHECK CONSTRAINT [FK_ThongSoChiTiet_xe]
GO
ALTER TABLE [dbo].[xe]  WITH CHECK ADD  CONSTRAINT [FK_xe_loaixe] FOREIGN KEY([maloaixe])
REFERENCES [dbo].[loaixe] ([maloai])
GO
ALTER TABLE [dbo].[xe] CHECK CONSTRAINT [FK_xe_loaixe]
GO