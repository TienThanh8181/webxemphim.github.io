USE [master]
GO
/****** Object:  Database [WebsiteXemPhim]    Script Date: 11/02/2025 12:00:17 PM ******/
CREATE DATABASE [WebsiteXemPhim]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebsiteXemPhim', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\WebsiteXemPhim.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WebsiteXemPhim_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\WebsiteXemPhim_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [WebsiteXemPhim] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebsiteXemPhim].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebsiteXemPhim] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebsiteXemPhim] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebsiteXemPhim] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebsiteXemPhim] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebsiteXemPhim] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebsiteXemPhim] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [WebsiteXemPhim] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebsiteXemPhim] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebsiteXemPhim] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebsiteXemPhim] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebsiteXemPhim] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebsiteXemPhim] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebsiteXemPhim] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebsiteXemPhim] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebsiteXemPhim] SET  ENABLE_BROKER 
GO
ALTER DATABASE [WebsiteXemPhim] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebsiteXemPhim] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebsiteXemPhim] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebsiteXemPhim] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebsiteXemPhim] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebsiteXemPhim] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [WebsiteXemPhim] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebsiteXemPhim] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WebsiteXemPhim] SET  MULTI_USER 
GO
ALTER DATABASE [WebsiteXemPhim] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebsiteXemPhim] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebsiteXemPhim] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebsiteXemPhim] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WebsiteXemPhim] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WebsiteXemPhim] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [WebsiteXemPhim] SET QUERY_STORE = ON
GO
ALTER DATABASE [WebsiteXemPhim] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [WebsiteXemPhim]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11/02/2025 12:00:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 11/02/2025 12:00:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/02/2025 12:00:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/02/2025 12:00:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/02/2025 12:00:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/02/2025 12:00:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/02/2025 12:00:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[avatar] [nvarchar](200) NULL,
	[sex] [nvarchar](5) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 11/02/2025 12:00:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 11/02/2025 12:00:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[BinhLuanId] [int] IDENTITY(1,1) NOT NULL,
	[PhimBoId] [int] NULL,
	[PhimLeId] [int] NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[NoiDungBinhLuan] [nvarchar](500) NOT NULL,
	[NgayTao] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_BinhLuan] PRIMARY KEY CLUSTERED 
(
	[BinhLuanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietTheLoaiPhimBo]    Script Date: 11/02/2025 12:00:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietTheLoaiPhimBo](
	[ChiTietTheLoaiPhimBoId] [int] IDENTITY(1,1) NOT NULL,
	[PhimBoId] [int] NULL,
	[TheLoaiId] [int] NULL,
 CONSTRAINT [PK_ChiTietTheLoaiPhimBo] PRIMARY KEY CLUSTERED 
(
	[ChiTietTheLoaiPhimBoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietTheLoaiPhimLe]    Script Date: 11/02/2025 12:00:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietTheLoaiPhimLe](
	[ChiTietTheLoaiPhimLeId] [int] IDENTITY(1,1) NOT NULL,
	[PhimLeId] [int] NULL,
	[TheLoaiId] [int] NOT NULL,
 CONSTRAINT [PK_ChiTietTheLoaiPhimLe] PRIMARY KEY CLUSTERED 
(
	[ChiTietTheLoaiPhimLeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhGia]    Script Date: 11/02/2025 12:00:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia](
	[DanhGiaId] [int] IDENTITY(1,1) NOT NULL,
	[PhimBoId] [int] NULL,
	[PhimLeId] [int] NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[Star] [real] NOT NULL,
 CONSTRAINT [PK_DanhGia] PRIMARY KEY CLUSTERED 
(
	[DanhGiaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HopPhim]    Script Date: 11/02/2025 12:00:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HopPhim](
	[HopPhimId] [int] IDENTITY(1,1) NOT NULL,
	[PhimBoId] [int] NULL,
	[PhimLeId] [int] NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_HopPhim] PRIMARY KEY CLUSTERED 
(
	[HopPhimId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichSuXem]    Script Date: 11/02/2025 12:00:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSuXem](
	[LichSuXemId] [int] IDENTITY(1,1) NOT NULL,
	[PhimBoId] [int] NULL,
	[PhimLeId] [int] NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_LichSuXem] PRIMARY KEY CLUSTERED 
(
	[LichSuXemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nam]    Script Date: 11/02/2025 12:00:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nam](
	[NamID] [int] IDENTITY(1,1) NOT NULL,
	[TenNam] [nvarchar](5) NOT NULL,
 CONSTRAINT [PK_Nam] PRIMARY KEY CLUSTERED 
(
	[NamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhimBo]    Script Date: 11/02/2025 12:00:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhimBo](
	[PhimBoId] [int] IDENTITY(1,1) NOT NULL,
	[TenPhim] [nvarchar](150) NOT NULL,
	[NoiDung] [nvarchar](1500) NOT NULL,
	[Anh] [nvarchar](200) NULL,
	[AnhNen] [nvarchar](200) NULL,
	[LuotXem] [int] NOT NULL,
	[Like] [int] NOT NULL,
	[Trailer] [nvarchar](200) NULL,
	[NamID] [int] NULL,
	[QuocGiaId] [int] NULL,
	[TrangThaiId] [int] NULL,
 CONSTRAINT [PK_PhimBo] PRIMARY KEY CLUSTERED 
(
	[PhimBoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhimLe]    Script Date: 11/02/2025 12:00:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhimLe](
	[PhimLeId] [int] IDENTITY(1,1) NOT NULL,
	[TenPhim] [nvarchar](150) NOT NULL,
	[NoiDung] [nvarchar](1500) NOT NULL,
	[Anh] [nvarchar](200) NULL,
	[AnhNen] [nvarchar](200) NULL,
	[ThoiLuong] [nvarchar](10) NULL,
	[LuotXem] [int] NOT NULL,
	[Like] [int] NOT NULL,
	[Link] [nvarchar](200) NOT NULL,
	[Trailer] [nvarchar](200) NULL,
	[NamID] [int] NULL,
	[QuocGiaId] [int] NULL,
	[TrangThaiId] [int] NULL,
 CONSTRAINT [PK_PhimLe] PRIMARY KEY CLUSTERED 
(
	[PhimLeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuocGia]    Script Date: 11/02/2025 12:00:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuocGia](
	[QuocGiaId] [int] IDENTITY(1,1) NOT NULL,
	[TenQuocGia] [nvarchar](57) NOT NULL,
 CONSTRAINT [PK_QuocGia] PRIMARY KEY CLUSTERED 
(
	[QuocGiaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TapPhim]    Script Date: 11/02/2025 12:00:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TapPhim](
	[TapPhimId] [int] IDENTITY(1,1) NOT NULL,
	[Tap] [int] NOT NULL,
	[Link] [nvarchar](200) NOT NULL,
	[ThoiLuong] [nvarchar](10) NULL,
	[PhimBoId] [int] NULL,
 CONSTRAINT [PK_TapPhim] PRIMARY KEY CLUSTERED 
(
	[TapPhimId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 11/02/2025 12:00:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[TheLoaiId] [int] IDENTITY(1,1) NOT NULL,
	[TenTheLoai] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_TheLoai] PRIMARY KEY CLUSTERED 
(
	[TheLoaiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongBaos]    Script Date: 11/02/2025 12:00:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongBaos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[PhimBoId] [int] NULL,
	[Message] [nvarchar](max) NOT NULL,
	[Url] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ThongBaos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrangThai]    Script Date: 11/02/2025 12:00:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrangThai](
	[TrangThaiId] [int] IDENTITY(1,1) NOT NULL,
	[TrangThaiPhim] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_TrangThai] PRIMARY KEY CLUSTERED 
(
	[TrangThaiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241204061213_v1', N'8.0.11')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1', N'User', N'User', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'2', N'Admin', N'Admin', NULL)
GO
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'Google', N'108764797787486693222', N'Google', N'c423df05-f2e2-4fed-9b2a-f0e293d28d8a')
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'Google', N'112818236472586912345', N'Google', N'7ccf9dd1-5ae7-48d5-a6d6-c3a8e2df5e25')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7ccf9dd1-5ae7-48d5-a6d6-c3a8e2df5e25', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c423df05-f2e2-4fed-9b2a-f0e293d28d8a', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2b2fd5db-f6e3-4d27-8e09-1374552558c1', N'2')
GO
INSERT [dbo].[AspNetUsers] ([Id], [avatar], [sex], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'2b2fd5db-f6e3-4d27-8e09-1374552558c1', N'/frontend/img/avatar/1.jpeg', N'Male', N'admin', N'ADMIN', N'Admin@gmail.com', N'ADMIN@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAENzPi/opZFmTj8f9GmQof/Gc6kKNApd/scWm83hUkIfy8EbuYj0f7TAHc1KCzr34Qg==', N'HBMBNVBYYVVETMK2LQAXL2TCF7PDIMT7', N'196e0624-67c3-4120-a3e4-ff24bee0a74a', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [avatar], [sex], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7ccf9dd1-5ae7-48d5-a6d6-c3a8e2df5e25', N'/frontend/img/avatar/Tulen.jpg', N'Male', N'KhanhDuy', N'KHANHDUY', N'duydk4215@gmail.com', N'DUYDK4215@GMAIL.COM', 1, NULL, N'CYAVBGIDCC7E6TNBTWSNOKX44QZOLIPF', N'15bbde70-2418-4e19-97b6-dbf0d17ff1ab', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [avatar], [sex], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c423df05-f2e2-4fed-9b2a-f0e293d28d8a', NULL, NULL, N'vohoangduy9a4@gmail.com', N'VOHOANGDUY9A4@GMAIL.COM', N'vohoangduy9a4@gmail.com', N'VOHOANGDUY9A4@GMAIL.COM', 0, NULL, N'A3Y6AD37BYNFQPKPHXY7XUTHKBA7LXPZ', N'b9a20abc-f730-4302-ab18-30b33399be69', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[BinhLuan] ON 

INSERT [dbo].[BinhLuan] ([BinhLuanId], [PhimBoId], [PhimLeId], [UserId], [NoiDungBinhLuan], [NgayTao]) VALUES (4, NULL, 8, N'2b2fd5db-f6e3-4d27-8e09-1374552558c1', N'hay ', CAST(N'2024-11-27T15:47:13.8997155' AS DateTime2))
INSERT [dbo].[BinhLuan] ([BinhLuanId], [PhimBoId], [PhimLeId], [UserId], [NoiDungBinhLuan], [NgayTao]) VALUES (5, 9, NULL, N'2b2fd5db-f6e3-4d27-8e09-1374552558c1', N'Phim hay quá 10 điểm :>', CAST(N'2024-12-04T14:44:03.9508933' AS DateTime2))
INSERT [dbo].[BinhLuan] ([BinhLuanId], [PhimBoId], [PhimLeId], [UserId], [NoiDungBinhLuan], [NgayTao]) VALUES (6, 9, NULL, N'2b2fd5db-f6e3-4d27-8e09-1374552558c1', N'OK
', CAST(N'2024-12-04T14:59:28.5041770' AS DateTime2))
SET IDENTITY_INSERT [dbo].[BinhLuan] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietTheLoaiPhimBo] ON 

INSERT [dbo].[ChiTietTheLoaiPhimBo] ([ChiTietTheLoaiPhimBoId], [PhimBoId], [TheLoaiId]) VALUES (1, 1, 1)
INSERT [dbo].[ChiTietTheLoaiPhimBo] ([ChiTietTheLoaiPhimBoId], [PhimBoId], [TheLoaiId]) VALUES (2, 1, 3)
INSERT [dbo].[ChiTietTheLoaiPhimBo] ([ChiTietTheLoaiPhimBoId], [PhimBoId], [TheLoaiId]) VALUES (3, 1, 9)
INSERT [dbo].[ChiTietTheLoaiPhimBo] ([ChiTietTheLoaiPhimBoId], [PhimBoId], [TheLoaiId]) VALUES (4, 2, 1)
INSERT [dbo].[ChiTietTheLoaiPhimBo] ([ChiTietTheLoaiPhimBoId], [PhimBoId], [TheLoaiId]) VALUES (5, 2, 3)
INSERT [dbo].[ChiTietTheLoaiPhimBo] ([ChiTietTheLoaiPhimBoId], [PhimBoId], [TheLoaiId]) VALUES (6, 2, 9)
INSERT [dbo].[ChiTietTheLoaiPhimBo] ([ChiTietTheLoaiPhimBoId], [PhimBoId], [TheLoaiId]) VALUES (8, 3, 9)
INSERT [dbo].[ChiTietTheLoaiPhimBo] ([ChiTietTheLoaiPhimBoId], [PhimBoId], [TheLoaiId]) VALUES (9, 3, 12)
INSERT [dbo].[ChiTietTheLoaiPhimBo] ([ChiTietTheLoaiPhimBoId], [PhimBoId], [TheLoaiId]) VALUES (12, 4, 2)
INSERT [dbo].[ChiTietTheLoaiPhimBo] ([ChiTietTheLoaiPhimBoId], [PhimBoId], [TheLoaiId]) VALUES (13, 4, 11)
INSERT [dbo].[ChiTietTheLoaiPhimBo] ([ChiTietTheLoaiPhimBoId], [PhimBoId], [TheLoaiId]) VALUES (14, 5, 2)
INSERT [dbo].[ChiTietTheLoaiPhimBo] ([ChiTietTheLoaiPhimBoId], [PhimBoId], [TheLoaiId]) VALUES (15, 5, 4)
INSERT [dbo].[ChiTietTheLoaiPhimBo] ([ChiTietTheLoaiPhimBoId], [PhimBoId], [TheLoaiId]) VALUES (16, 5, 11)
INSERT [dbo].[ChiTietTheLoaiPhimBo] ([ChiTietTheLoaiPhimBoId], [PhimBoId], [TheLoaiId]) VALUES (21, 6, 1)
INSERT [dbo].[ChiTietTheLoaiPhimBo] ([ChiTietTheLoaiPhimBoId], [PhimBoId], [TheLoaiId]) VALUES (22, 6, 3)
INSERT [dbo].[ChiTietTheLoaiPhimBo] ([ChiTietTheLoaiPhimBoId], [PhimBoId], [TheLoaiId]) VALUES (23, 6, 7)
INSERT [dbo].[ChiTietTheLoaiPhimBo] ([ChiTietTheLoaiPhimBoId], [PhimBoId], [TheLoaiId]) VALUES (24, 6, 9)
INSERT [dbo].[ChiTietTheLoaiPhimBo] ([ChiTietTheLoaiPhimBoId], [PhimBoId], [TheLoaiId]) VALUES (30, 8, 2)
INSERT [dbo].[ChiTietTheLoaiPhimBo] ([ChiTietTheLoaiPhimBoId], [PhimBoId], [TheLoaiId]) VALUES (31, 8, 7)
INSERT [dbo].[ChiTietTheLoaiPhimBo] ([ChiTietTheLoaiPhimBoId], [PhimBoId], [TheLoaiId]) VALUES (32, 8, 9)
INSERT [dbo].[ChiTietTheLoaiPhimBo] ([ChiTietTheLoaiPhimBoId], [PhimBoId], [TheLoaiId]) VALUES (33, 8, 11)
INSERT [dbo].[ChiTietTheLoaiPhimBo] ([ChiTietTheLoaiPhimBoId], [PhimBoId], [TheLoaiId]) VALUES (34, 7, 1)
INSERT [dbo].[ChiTietTheLoaiPhimBo] ([ChiTietTheLoaiPhimBoId], [PhimBoId], [TheLoaiId]) VALUES (35, 7, 3)
INSERT [dbo].[ChiTietTheLoaiPhimBo] ([ChiTietTheLoaiPhimBoId], [PhimBoId], [TheLoaiId]) VALUES (36, 7, 4)
INSERT [dbo].[ChiTietTheLoaiPhimBo] ([ChiTietTheLoaiPhimBoId], [PhimBoId], [TheLoaiId]) VALUES (37, 7, 7)
INSERT [dbo].[ChiTietTheLoaiPhimBo] ([ChiTietTheLoaiPhimBoId], [PhimBoId], [TheLoaiId]) VALUES (38, 7, 9)
INSERT [dbo].[ChiTietTheLoaiPhimBo] ([ChiTietTheLoaiPhimBoId], [PhimBoId], [TheLoaiId]) VALUES (47, 9, 2)
INSERT [dbo].[ChiTietTheLoaiPhimBo] ([ChiTietTheLoaiPhimBoId], [PhimBoId], [TheLoaiId]) VALUES (48, 9, 4)
INSERT [dbo].[ChiTietTheLoaiPhimBo] ([ChiTietTheLoaiPhimBoId], [PhimBoId], [TheLoaiId]) VALUES (49, 9, 11)
INSERT [dbo].[ChiTietTheLoaiPhimBo] ([ChiTietTheLoaiPhimBoId], [PhimBoId], [TheLoaiId]) VALUES (50, 9, 12)
SET IDENTITY_INSERT [dbo].[ChiTietTheLoaiPhimBo] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietTheLoaiPhimLe] ON 

INSERT [dbo].[ChiTietTheLoaiPhimLe] ([ChiTietTheLoaiPhimLeId], [PhimLeId], [TheLoaiId]) VALUES (12, 1, 1)
INSERT [dbo].[ChiTietTheLoaiPhimLe] ([ChiTietTheLoaiPhimLeId], [PhimLeId], [TheLoaiId]) VALUES (13, 1, 3)
INSERT [dbo].[ChiTietTheLoaiPhimLe] ([ChiTietTheLoaiPhimLeId], [PhimLeId], [TheLoaiId]) VALUES (14, 1, 9)
INSERT [dbo].[ChiTietTheLoaiPhimLe] ([ChiTietTheLoaiPhimLeId], [PhimLeId], [TheLoaiId]) VALUES (15, 2, 3)
INSERT [dbo].[ChiTietTheLoaiPhimLe] ([ChiTietTheLoaiPhimLeId], [PhimLeId], [TheLoaiId]) VALUES (16, 2, 9)
INSERT [dbo].[ChiTietTheLoaiPhimLe] ([ChiTietTheLoaiPhimLeId], [PhimLeId], [TheLoaiId]) VALUES (17, 3, 3)
INSERT [dbo].[ChiTietTheLoaiPhimLe] ([ChiTietTheLoaiPhimLeId], [PhimLeId], [TheLoaiId]) VALUES (18, 3, 9)
INSERT [dbo].[ChiTietTheLoaiPhimLe] ([ChiTietTheLoaiPhimLeId], [PhimLeId], [TheLoaiId]) VALUES (22, 4, 2)
INSERT [dbo].[ChiTietTheLoaiPhimLe] ([ChiTietTheLoaiPhimLeId], [PhimLeId], [TheLoaiId]) VALUES (23, 4, 10)
INSERT [dbo].[ChiTietTheLoaiPhimLe] ([ChiTietTheLoaiPhimLeId], [PhimLeId], [TheLoaiId]) VALUES (25, 5, 6)
INSERT [dbo].[ChiTietTheLoaiPhimLe] ([ChiTietTheLoaiPhimLeId], [PhimLeId], [TheLoaiId]) VALUES (26, 5, 11)
INSERT [dbo].[ChiTietTheLoaiPhimLe] ([ChiTietTheLoaiPhimLeId], [PhimLeId], [TheLoaiId]) VALUES (28, 7, 3)
INSERT [dbo].[ChiTietTheLoaiPhimLe] ([ChiTietTheLoaiPhimLeId], [PhimLeId], [TheLoaiId]) VALUES (29, 6, 3)
INSERT [dbo].[ChiTietTheLoaiPhimLe] ([ChiTietTheLoaiPhimLeId], [PhimLeId], [TheLoaiId]) VALUES (30, 8, 2)
INSERT [dbo].[ChiTietTheLoaiPhimLe] ([ChiTietTheLoaiPhimLeId], [PhimLeId], [TheLoaiId]) VALUES (31, 8, 7)
INSERT [dbo].[ChiTietTheLoaiPhimLe] ([ChiTietTheLoaiPhimLeId], [PhimLeId], [TheLoaiId]) VALUES (32, 8, 9)
INSERT [dbo].[ChiTietTheLoaiPhimLe] ([ChiTietTheLoaiPhimLeId], [PhimLeId], [TheLoaiId]) VALUES (33, 8, 11)
INSERT [dbo].[ChiTietTheLoaiPhimLe] ([ChiTietTheLoaiPhimLeId], [PhimLeId], [TheLoaiId]) VALUES (34, 9, 2)
INSERT [dbo].[ChiTietTheLoaiPhimLe] ([ChiTietTheLoaiPhimLeId], [PhimLeId], [TheLoaiId]) VALUES (35, 9, 4)
INSERT [dbo].[ChiTietTheLoaiPhimLe] ([ChiTietTheLoaiPhimLeId], [PhimLeId], [TheLoaiId]) VALUES (36, 9, 11)
INSERT [dbo].[ChiTietTheLoaiPhimLe] ([ChiTietTheLoaiPhimLeId], [PhimLeId], [TheLoaiId]) VALUES (37, 10, 1)
INSERT [dbo].[ChiTietTheLoaiPhimLe] ([ChiTietTheLoaiPhimLeId], [PhimLeId], [TheLoaiId]) VALUES (38, 10, 3)
INSERT [dbo].[ChiTietTheLoaiPhimLe] ([ChiTietTheLoaiPhimLeId], [PhimLeId], [TheLoaiId]) VALUES (39, 10, 7)
INSERT [dbo].[ChiTietTheLoaiPhimLe] ([ChiTietTheLoaiPhimLeId], [PhimLeId], [TheLoaiId]) VALUES (40, 10, 8)
INSERT [dbo].[ChiTietTheLoaiPhimLe] ([ChiTietTheLoaiPhimLeId], [PhimLeId], [TheLoaiId]) VALUES (41, 10, 9)
INSERT [dbo].[ChiTietTheLoaiPhimLe] ([ChiTietTheLoaiPhimLeId], [PhimLeId], [TheLoaiId]) VALUES (45, 12, 1)
INSERT [dbo].[ChiTietTheLoaiPhimLe] ([ChiTietTheLoaiPhimLeId], [PhimLeId], [TheLoaiId]) VALUES (46, 12, 7)
INSERT [dbo].[ChiTietTheLoaiPhimLe] ([ChiTietTheLoaiPhimLeId], [PhimLeId], [TheLoaiId]) VALUES (47, 12, 9)
INSERT [dbo].[ChiTietTheLoaiPhimLe] ([ChiTietTheLoaiPhimLeId], [PhimLeId], [TheLoaiId]) VALUES (48, 13, 1)
INSERT [dbo].[ChiTietTheLoaiPhimLe] ([ChiTietTheLoaiPhimLeId], [PhimLeId], [TheLoaiId]) VALUES (49, 13, 7)
INSERT [dbo].[ChiTietTheLoaiPhimLe] ([ChiTietTheLoaiPhimLeId], [PhimLeId], [TheLoaiId]) VALUES (50, 13, 9)
INSERT [dbo].[ChiTietTheLoaiPhimLe] ([ChiTietTheLoaiPhimLeId], [PhimLeId], [TheLoaiId]) VALUES (54, 11, 1)
INSERT [dbo].[ChiTietTheLoaiPhimLe] ([ChiTietTheLoaiPhimLeId], [PhimLeId], [TheLoaiId]) VALUES (55, 11, 7)
INSERT [dbo].[ChiTietTheLoaiPhimLe] ([ChiTietTheLoaiPhimLeId], [PhimLeId], [TheLoaiId]) VALUES (56, 11, 9)
SET IDENTITY_INSERT [dbo].[ChiTietTheLoaiPhimLe] OFF
GO
SET IDENTITY_INSERT [dbo].[DanhGia] ON 

INSERT [dbo].[DanhGia] ([DanhGiaId], [PhimBoId], [PhimLeId], [UserId], [Star]) VALUES (1, 8, NULL, N'2b2fd5db-f6e3-4d27-8e09-1374552558c1', 2)
INSERT [dbo].[DanhGia] ([DanhGiaId], [PhimBoId], [PhimLeId], [UserId], [Star]) VALUES (2, 7, NULL, N'2b2fd5db-f6e3-4d27-8e09-1374552558c1', 1)
INSERT [dbo].[DanhGia] ([DanhGiaId], [PhimBoId], [PhimLeId], [UserId], [Star]) VALUES (3, NULL, 11, N'2b2fd5db-f6e3-4d27-8e09-1374552558c1', 5)
INSERT [dbo].[DanhGia] ([DanhGiaId], [PhimBoId], [PhimLeId], [UserId], [Star]) VALUES (4, NULL, 13, N'2b2fd5db-f6e3-4d27-8e09-1374552558c1', 4)
INSERT [dbo].[DanhGia] ([DanhGiaId], [PhimBoId], [PhimLeId], [UserId], [Star]) VALUES (5, 9, NULL, N'2b2fd5db-f6e3-4d27-8e09-1374552558c1', 5)
INSERT [dbo].[DanhGia] ([DanhGiaId], [PhimBoId], [PhimLeId], [UserId], [Star]) VALUES (6, 9, NULL, N'7ccf9dd1-5ae7-48d5-a6d6-c3a8e2df5e25', 1)
SET IDENTITY_INSERT [dbo].[DanhGia] OFF
GO
SET IDENTITY_INSERT [dbo].[HopPhim] ON 

INSERT [dbo].[HopPhim] ([HopPhimId], [PhimBoId], [PhimLeId], [UserId]) VALUES (1, 1, NULL, N'2b2fd5db-f6e3-4d27-8e09-1374552558c1')
INSERT [dbo].[HopPhim] ([HopPhimId], [PhimBoId], [PhimLeId], [UserId]) VALUES (3, 7, NULL, N'2b2fd5db-f6e3-4d27-8e09-1374552558c1')
INSERT [dbo].[HopPhim] ([HopPhimId], [PhimBoId], [PhimLeId], [UserId]) VALUES (11, NULL, 1, N'2b2fd5db-f6e3-4d27-8e09-1374552558c1')
INSERT [dbo].[HopPhim] ([HopPhimId], [PhimBoId], [PhimLeId], [UserId]) VALUES (16, NULL, 9, N'2b2fd5db-f6e3-4d27-8e09-1374552558c1')
INSERT [dbo].[HopPhim] ([HopPhimId], [PhimBoId], [PhimLeId], [UserId]) VALUES (17, NULL, 13, N'2b2fd5db-f6e3-4d27-8e09-1374552558c1')
INSERT [dbo].[HopPhim] ([HopPhimId], [PhimBoId], [PhimLeId], [UserId]) VALUES (19, 8, NULL, N'2b2fd5db-f6e3-4d27-8e09-1374552558c1')
INSERT [dbo].[HopPhim] ([HopPhimId], [PhimBoId], [PhimLeId], [UserId]) VALUES (20, 9, NULL, N'2b2fd5db-f6e3-4d27-8e09-1374552558c1')
INSERT [dbo].[HopPhim] ([HopPhimId], [PhimBoId], [PhimLeId], [UserId]) VALUES (21, NULL, 8, N'2b2fd5db-f6e3-4d27-8e09-1374552558c1')
INSERT [dbo].[HopPhim] ([HopPhimId], [PhimBoId], [PhimLeId], [UserId]) VALUES (22, NULL, 10, N'2b2fd5db-f6e3-4d27-8e09-1374552558c1')
INSERT [dbo].[HopPhim] ([HopPhimId], [PhimBoId], [PhimLeId], [UserId]) VALUES (23, NULL, 12, N'2b2fd5db-f6e3-4d27-8e09-1374552558c1')
INSERT [dbo].[HopPhim] ([HopPhimId], [PhimBoId], [PhimLeId], [UserId]) VALUES (24, NULL, 11, N'2b2fd5db-f6e3-4d27-8e09-1374552558c1')
INSERT [dbo].[HopPhim] ([HopPhimId], [PhimBoId], [PhimLeId], [UserId]) VALUES (25, 2, NULL, N'2b2fd5db-f6e3-4d27-8e09-1374552558c1')
INSERT [dbo].[HopPhim] ([HopPhimId], [PhimBoId], [PhimLeId], [UserId]) VALUES (26, 3, NULL, N'2b2fd5db-f6e3-4d27-8e09-1374552558c1')
INSERT [dbo].[HopPhim] ([HopPhimId], [PhimBoId], [PhimLeId], [UserId]) VALUES (28, NULL, 8, N'c423df05-f2e2-4fed-9b2a-f0e293d28d8a')
INSERT [dbo].[HopPhim] ([HopPhimId], [PhimBoId], [PhimLeId], [UserId]) VALUES (29, 7, NULL, N'c423df05-f2e2-4fed-9b2a-f0e293d28d8a')
SET IDENTITY_INSERT [dbo].[HopPhim] OFF
GO
SET IDENTITY_INSERT [dbo].[LichSuXem] ON 

INSERT [dbo].[LichSuXem] ([LichSuXemId], [PhimBoId], [PhimLeId], [UserId]) VALUES (1, 1, NULL, N'2b2fd5db-f6e3-4d27-8e09-1374552558c1')
INSERT [dbo].[LichSuXem] ([LichSuXemId], [PhimBoId], [PhimLeId], [UserId]) VALUES (2, NULL, 1, N'2b2fd5db-f6e3-4d27-8e09-1374552558c1')
INSERT [dbo].[LichSuXem] ([LichSuXemId], [PhimBoId], [PhimLeId], [UserId]) VALUES (3, 2, NULL, N'2b2fd5db-f6e3-4d27-8e09-1374552558c1')
INSERT [dbo].[LichSuXem] ([LichSuXemId], [PhimBoId], [PhimLeId], [UserId]) VALUES (4, NULL, 4, N'2b2fd5db-f6e3-4d27-8e09-1374552558c1')
INSERT [dbo].[LichSuXem] ([LichSuXemId], [PhimBoId], [PhimLeId], [UserId]) VALUES (5, NULL, 5, N'2b2fd5db-f6e3-4d27-8e09-1374552558c1')
INSERT [dbo].[LichSuXem] ([LichSuXemId], [PhimBoId], [PhimLeId], [UserId]) VALUES (6, NULL, 6, N'2b2fd5db-f6e3-4d27-8e09-1374552558c1')
INSERT [dbo].[LichSuXem] ([LichSuXemId], [PhimBoId], [PhimLeId], [UserId]) VALUES (7, NULL, 9, N'2b2fd5db-f6e3-4d27-8e09-1374552558c1')
INSERT [dbo].[LichSuXem] ([LichSuXemId], [PhimBoId], [PhimLeId], [UserId]) VALUES (8, 4, NULL, N'2b2fd5db-f6e3-4d27-8e09-1374552558c1')
INSERT [dbo].[LichSuXem] ([LichSuXemId], [PhimBoId], [PhimLeId], [UserId]) VALUES (9, 7, NULL, N'2b2fd5db-f6e3-4d27-8e09-1374552558c1')
INSERT [dbo].[LichSuXem] ([LichSuXemId], [PhimBoId], [PhimLeId], [UserId]) VALUES (10, 8, NULL, N'2b2fd5db-f6e3-4d27-8e09-1374552558c1')
INSERT [dbo].[LichSuXem] ([LichSuXemId], [PhimBoId], [PhimLeId], [UserId]) VALUES (11, 9, NULL, N'2b2fd5db-f6e3-4d27-8e09-1374552558c1')
INSERT [dbo].[LichSuXem] ([LichSuXemId], [PhimBoId], [PhimLeId], [UserId]) VALUES (12, NULL, 11, N'2b2fd5db-f6e3-4d27-8e09-1374552558c1')
INSERT [dbo].[LichSuXem] ([LichSuXemId], [PhimBoId], [PhimLeId], [UserId]) VALUES (13, NULL, 13, N'2b2fd5db-f6e3-4d27-8e09-1374552558c1')
INSERT [dbo].[LichSuXem] ([LichSuXemId], [PhimBoId], [PhimLeId], [UserId]) VALUES (14, NULL, 12, N'2b2fd5db-f6e3-4d27-8e09-1374552558c1')
INSERT [dbo].[LichSuXem] ([LichSuXemId], [PhimBoId], [PhimLeId], [UserId]) VALUES (15, NULL, 10, N'2b2fd5db-f6e3-4d27-8e09-1374552558c1')
INSERT [dbo].[LichSuXem] ([LichSuXemId], [PhimBoId], [PhimLeId], [UserId]) VALUES (16, NULL, 8, N'2b2fd5db-f6e3-4d27-8e09-1374552558c1')
INSERT [dbo].[LichSuXem] ([LichSuXemId], [PhimBoId], [PhimLeId], [UserId]) VALUES (17, 9, NULL, N'7ccf9dd1-5ae7-48d5-a6d6-c3a8e2df5e25')
SET IDENTITY_INSERT [dbo].[LichSuXem] OFF
GO
SET IDENTITY_INSERT [dbo].[Nam] ON 

INSERT [dbo].[Nam] ([NamID], [TenNam]) VALUES (1, N'2024')
INSERT [dbo].[Nam] ([NamID], [TenNam]) VALUES (2, N'2023')
INSERT [dbo].[Nam] ([NamID], [TenNam]) VALUES (3, N'2022')
INSERT [dbo].[Nam] ([NamID], [TenNam]) VALUES (4, N'2021')
INSERT [dbo].[Nam] ([NamID], [TenNam]) VALUES (5, N'2020')
INSERT [dbo].[Nam] ([NamID], [TenNam]) VALUES (6, N'2019')
INSERT [dbo].[Nam] ([NamID], [TenNam]) VALUES (7, N'2018')
INSERT [dbo].[Nam] ([NamID], [TenNam]) VALUES (8, N'2017')
INSERT [dbo].[Nam] ([NamID], [TenNam]) VALUES (9, N'2016')
INSERT [dbo].[Nam] ([NamID], [TenNam]) VALUES (10, N'2015')
INSERT [dbo].[Nam] ([NamID], [TenNam]) VALUES (11, N'2014')
INSERT [dbo].[Nam] ([NamID], [TenNam]) VALUES (12, N'2013')
INSERT [dbo].[Nam] ([NamID], [TenNam]) VALUES (13, N'2012')
INSERT [dbo].[Nam] ([NamID], [TenNam]) VALUES (14, N'2011')
INSERT [dbo].[Nam] ([NamID], [TenNam]) VALUES (15, N'2010')
SET IDENTITY_INSERT [dbo].[Nam] OFF
GO
SET IDENTITY_INSERT [dbo].[PhimBo] ON 

INSERT [dbo].[PhimBo] ([PhimBoId], [TenPhim], [NoiDung], [Anh], [AnhNen], [LuotXem], [Like], [Trailer], [NamID], [QuocGiaId], [TrangThaiId]) VALUES (1, N'Nguyệt Đạo Dị Giới Mùa 2', N'XEM PHIM Mùa 2 của Tsuki ga Michibiku Isekai Douchuu.', N'/frontend/img/anime/NguyetDaoDiGioi2.jpg', N'/frontend/img/anime/NguyetDaoDiGioi2Nen.jpg', 2, 1, N'', 1, 1, 2)
INSERT [dbo].[PhimBo] ([PhimBoId], [TenPhim], [NoiDung], [Anh], [AnhNen], [LuotXem], [Like], [Trailer], [NamID], [QuocGiaId], [TrangThaiId]) VALUES (2, N'Nguyệt Đạo Dị Giới', N'“Tại sao tôi lại ở đây? Cái chỗ quỷ quái này là sao chứ?”Misumi Makoto vốn chỉ là một học sinh trung học bình thường, giỏi bắn cung và đam mê phim lịch sử. Nhưng rồi một ngày kia khi cậu tỉnh lại, thì bỗng phát hiện ra mình đang ở một nơi kỳ quái không để đâu cho hết! Một thế giới xa lạ, một nơi thậm chí còn không thuộc về Trái Đất?Khi mà Makoto còn chưa kịp định thần thì Nữ thần cai quản ở cái thế giới thập phần quái dị này đã chê bai vẻ bề ngoài của cậu “Trông cái mặt ngươi gớm quá”, rồi đày cậu xuống nơi “Tận cùng của thế giới”!!Nhưng Makoto cũng không vì thế mà bỏ cuộc hay chán nản, cậu bỏ mặc mọi qui định hay những nguyên tắc cứng nhắc nơi đây và tự mình bắt đầu cuộc hành trình đi tìm kiếm sự tồn tại của con người ở xứ sở xa lạ này. Cũng nhờ đó mà Makoto gặp được những người bạn đồng hành không ngờ tới: cô gái tên Orc tốt bụng luôn thơm ngát hương hoa cỏ, con nhện khổng lồ biến thái máu M và cả hóa thân của con rồng cuồng phim lịch sử nữa…Cùng những người bạn không giống ai này, chuyến hành trình nào đang chờ đợi Makoto ở phía trước?', N'/frontend/img/anime/NguyetDaoDiGioi1.jpg', N'/frontend/img/anime/NguyetDaoDiGioi1Nen.jpg', 1, 1, N'', 4, 1, 1)
INSERT [dbo].[PhimBo] ([PhimBoId], [TenPhim], [NoiDung], [Anh], [AnhNen], [LuotXem], [Like], [Trailer], [NamID], [QuocGiaId], [TrangThaiId]) VALUES (3, N'Chào Mừng Đến Với Lớp Học Đề Cao Thực Lực', N'Trường trung học Koudo Ikusei là một trường hàng đầu có uy tín với các cơ sở hiện đại, nơi có gần 100% sinh viên đi học đại học hoặn tìm được việc làm. Các sinh viên có quyền tự do mặc bất cứ gì và để bất kỳ kiểu tóc nào. Koudo Ikusei là một trường thiên đường, nhưng sự thật là chỉ có cấp trên của sinh viên được đối xử tốt', N'/frontend/img/anime/hocThucLuc.jpg', N'/frontend/img/anime/hocThucLucNen.jpg', 0, 1, N'', 8, 1, 1)
INSERT [dbo].[PhimBo] ([PhimBoId], [TenPhim], [NoiDung], [Anh], [AnhNen], [LuotXem], [Like], [Trailer], [NamID], [QuocGiaId], [TrangThaiId]) VALUES (4, N'Soi Sáng Cho Em', N'Soi Sáng Cho Em – A Date With The Future xoay quanh mối tình sâu sắc của Từ Lai và Cận Thời Xuyên. Mười năm trước, Từ Lai bị mắc kẹt trong một trận động đất và được cứu bởi lính cứu hoả Cận Thời Xuyên cùng chú chó tìm kiếm cứu nạn “Truy Phong”. Để xoa dịu Từ Lai đang bị thương, Cận Thời Xuyên đã hứa với cô hẹn ước mười năm.

Mười năm sau, Từ Lai kết thúc chương trình học, quay về nước, trở thành một cô phóng viên kiêm huấn luyện viên chó quốc tế. Sau nhiều lần tiếp xúc trong những tình huống khẩn cấp, cùng nhau trải qua thử thách sinh tử, họ nhận ra tình cảm dành cho nhau.', N'/frontend/img/anime/Soi-Sang-Cho-Em.jpg', N'/frontend/img/anime/Soi-Sang-Cho-Em-Nen.jpg', 24, 0, N'', 2, 6, 1)
INSERT [dbo].[PhimBo] ([PhimBoId], [TenPhim], [NoiDung], [Anh], [AnhNen], [LuotXem], [Like], [Trailer], [NamID], [QuocGiaId], [TrangThaiId]) VALUES (5, N'Vụng Trộm Không Thể Giấu', N'Vụng Trộm Không Thể Giấu – Hidden Love (2023) nói về Tang Trĩ trong những năm học cấp 3 do nhiều lần bị mời phụ huynh, để giải quyết rắc rồi nên Tang Trĩ muốn anh trai mình đi thay, nhưng mà hai anh em hễ cứ gặp nhau là cãi nhau, vậy nên cô ấy chỉ đành nhờ bạn cùng phòng của anh trai mình – Đoàn Gia Hứa đi gặp thầy cô. Dưới sự nhờ vả của Tang Trĩ, anh đi họp phụ huynh cho cô, từ đây mà hai người trở nên thân hơn.

Đoàn Gia Hứa đã chăm sóc, bảo vệ Tang Trĩ như em gái ruột của mình. Sau khi Đoàn Gia Hứa tốt nghiệp đại học và trở về thành phố trước kia ở, cho nên hai người xa nhau, vì một số hiểu lầm mà mối quan hệ của họ trở nên xa cách. Đến khi Tang Trĩ trưởng thành thi đại học ở thành phố mà Đoàn Gia Hứa đang ở như cô mong muốn, hai người mới gặp lại nhau.

Hai người tiếp xúc ngày càng thân thiết hơn, Tang Trĩ phát hiện được áp lực của Đoàn Gia Hứa từ đâu mà có, cô muốn bảo vệ và chăm sóc người anh mà luôn đối tốt với mình, quyết định lấy lại tình yêu thầm kín mà cô chôn chặt trong lòng. Dưới sự đồng hành của Tang Trĩ, Đoàn Gia Hứa từ từ tháo gỡ nút thắt trong lòng, thật lòng yêu một Tang Trĩ đã trưởng thành. Mối tình yêu thầm kín của hai người cuối cùng cũng bắt đầu nảy nở.', N'/frontend/img/anime/VT.jpg', N'/frontend/img/anime/VTNen.jpg', 1, 0, N'', 2, 6, 2)
INSERT [dbo].[PhimBo] ([PhimBoId], [TenPhim], [NoiDung], [Anh], [AnhNen], [LuotXem], [Like], [Trailer], [NamID], [QuocGiaId], [TrangThaiId]) VALUES (6, N'Solo Leveling - Tôi Thăng Cấp Một Mình', N'XEM PHIM
Trong một thế giới mà những thợ săn, những con người sở hữu khả năng phép thuật, phải chiến đấu với những con quái vật chết người để bảo vệ loài người khỏi sự hủy diệt, một thợ săn nổi tiếng yếu ớt tên là Sung Jin-woo thấy mình ở trong một cuộc đấu tranh sinh tồn dường như bất tận. Một ngày nọ, sau khi sống sót trong gang tấc trong một hầm ngục đôi cực kỳ mạnh mẽ, thứ gần như đã xóa sổ toàn bộ nhóm của anh, một chương trình bí ẩn có tên Hệ thống đã chọn anh làm người chơi duy nhất, đổi lại, nó trao cho anh một khả năng cực kỳ hiếm có là tăng cấp sức mạnh, có thể vượt xa bất kỳ giới hạn đã biết nào. Jin-woo sau đó đã bắt đầu một cuộc hành trình mới khi anh phải chiến đấu chống lại tất cả các loại kẻ thù, cả con người lẫn quái vật, để khám phá bí mật của các hầm ngục và nguồn gốc thực sự của sức mạnh của mình.', N'/frontend/img/anime/solo.jpg', N'/frontend/img/anime/soloNen.jpg', 0, 0, N'', 1, 3, 2)
INSERT [dbo].[PhimBo] ([PhimBoId], [TenPhim], [NoiDung], [Anh], [AnhNen], [LuotXem], [Like], [Trailer], [NamID], [QuocGiaId], [TrangThaiId]) VALUES (7, N'Thanh Gươm Diệt Quỷ: Đại Trụ Đặc Huấn', N'Chuyến Đặc Huấn Của Đại Trụ sẽ có chương trình huấn luyện đặc biệt thường dành cho nhóm Tanjiro và những thợ săn quỷ có tài năng đặc biệt, được chỉ định là người kế thừa các Trụ cột. Trong phần này, Tanjiro và các nhân vật khác sẽ trải qua một chế độ luyện tập nghiêm ngặt, do mỗi Trụ cột yêu cầu riêng.', N'/frontend/img/anime/kimetsunoyaiba.jpg', N'/frontend/img/anime/kimetsunoyaibaNen.jpg', 22, 2, N'', 1, 1, 2)
INSERT [dbo].[PhimBo] ([PhimBoId], [TenPhim], [NoiDung], [Anh], [AnhNen], [LuotXem], [Like], [Trailer], [NamID], [QuocGiaId], [TrangThaiId]) VALUES (8, N'Vampire Dormitory', N'Ba mẹ cô ấy mất sớm, sau khi học hết chương trình giáo dục bắt buộc cô ấy đã bị họ hàng đuổi ra khỏi nhà và phải sống cảnh nay đây mai đó. Cô có vẻ ngoài khá ưa nhìn và đó là điều khiến cô luôn gặp rắc rối trong cuộc sống lẫn công việc. Một ngày nọ, cô vô tình gặp phải một anh chàng ma cà rồng, và anh ta đã chê máu cô dở thậm tệ. ', N'/frontend/img/anime/vampire.jpg', N'/frontend/img/anime/vampireNen.jpg', 2, 1, N'', 1, 1, 2)
INSERT [dbo].[PhimBo] ([PhimBoId], [TenPhim], [NoiDung], [Anh], [AnhNen], [LuotXem], [Like], [Trailer], [NamID], [QuocGiaId], [TrangThaiId]) VALUES (9, N'Khi Anh Chạy Về Phía Em', N'Khi Anh Chạy Về Phía Em – When I Fly Towards You (2022) được chuyển thể từ tiểu thuyết “Cô Ấy Bị Bệnh Không Nhẹ”của tác giả Tiểu Trúc Dĩ, nội dung nói về nữ sinh trung học Tô Tại Tại lạc quan cởi mở bị nam sinh Trương Lục Nhượng lạnh lùng lầm lì thu hút. Cô dùng mặt trời nhỏ tích cực của mình sưởi ấm sự tự ti của Trương Lục Nhượng, Tô Tại Tại cũng thu hồi sự phân tâm của mình, hăng hái tiến về phía trước. Họ bên nhau cùng nhau trưởng thành, vì yêu mà trở nên tốt hơn.', N'/frontend/img/anime/chayvephiaem.jpg', N'/frontend/img/anime/chayvephiaemNen.jpg', 7, 2, N'https://www.youtube.com/embed/JqIllOSkYfQ', 2, 6, 2)
SET IDENTITY_INSERT [dbo].[PhimBo] OFF
GO
SET IDENTITY_INSERT [dbo].[PhimLe] ON 

INSERT [dbo].[PhimLe] ([PhimLeId], [TenPhim], [NoiDung], [Anh], [AnhNen], [ThoiLuong], [LuotXem], [Like], [Link], [Trailer], [NamID], [QuocGiaId], [TrangThaiId]) VALUES (1, N'One Piece Film: Red', N'One Piece Film: Red là bộ phim hoạt hình anime của Nhật Bản thuộc thể loại kỳ ảo, hành động-phiêu lưu được sản xuất bởi Toei Animation. Đây là phần phim thứ mười lăm trong loạt phim điện ảnh của One Piece, dựa trên bộ truyện manga nổi tiếng cùng tên của tác giả Eiichiro Oda. Phim được công bố lần đầu tiên vào ngày 21 tháng 11, 2021 để kỷ niệm sự ra mắt của tập phim thứ 1000 của bộ anime One Piece và sau khi tập phim này được phát sóng, đoạn quảng cáo và áp phích chính thức của phim cũng chính thức được công bố. Phim dự kiến sẽ phát hành vào ngày 6 tháng 8 năm 2022. Bộ phim được giới thiệu sẽ là hành trình xoay quanh một nhân vật nữ mới cùng với Shanks "Tóc Đỏ".', N'/frontend/img/anime/OnePieceFilmRed.jpg', N'/frontend/img/anime/OnePieceFilmRedNen.jpg', N'2:00:00', 2, 0, N'https://short.ink/4eoXb001Z', N'https://short.ink/4eoXb001Z', 3, 1, 1)
INSERT [dbo].[PhimLe] ([PhimLeId], [TenPhim], [NoiDung], [Anh], [AnhNen], [ThoiLuong], [LuotXem], [Like], [Link], [Trailer], [NamID], [QuocGiaId], [TrangThaiId]) VALUES (2, N'Thám Tử Lừng Danh Conan 26: Tàu Ngầm Sắt Màu Đen', N'“Chiếc hộp đen (Black Box) tuyệt đối không được chạm đến. Thời khắc nó được mở ra, quá khứ bị phong ấn sẽ nổi lên trên mặt biển” Nhằm kết nối các camera an ninh thuộc sở hữu của cảnh sát trên khắp thế giới, một cơ sở hàng hải đã được xây dựng ở vùng biển gần Hachijojima, Tokyo mang tên Pacific Buoy. Để chuẩn bị đi vào vận hành chính thức, các kỹ sư từ khắp nơi trên thế giới đã tập hợp lại để kết nối với mạng lưới Europol do tổ chức cảnh sát châu Âu quản lý. Tại đây cũng đang tiến hành thử nghiệm một "công nghệ mới" áp dụng hệ thống nhận dạng khuôn mặt. Mặt khác, khi cùng Đội thám tử nhí đã đến Hachijojima để đi xem cá voi theo lời mời của Sonoko, Conan đã nhận được một cuộc điện thoại từ Okiya Subaru (Akai Shuichi), nói rằng một nhân viên Europol đã bị Gin giê''t ở Đức. Vì cảm thấy bất an, Conan đã thâm nhập vào cơ sở "Pacific Buoy" bằng cách lẻn vào con tàu tuần tra chở Kuroda Hyoe và các thành viên của Sở cảnh sát Tokyo đang hướng tới bảo vệ nơi này. Và ngay trong cơ sở đang đều đặn cho công tác chuẩn bị để đưa hệ thống vào hoạt động này đã xảy ra sự cố một nữ kỹ sư bị bắt cóc bởi tổ chức áo đen...! Không chỉ vậy, chiếc USB có lưu giữ thông tin mà cô ấy mang trong người cũng đã rơi vào tay tổ chức... Âm thanh trục xoắn của máy gầm gừ đầy ghê rợn trong lòng biển. Và ở Hachijojima, một bóng đen cũng đang lén lút tiến lại gần Haibara...
', N'/frontend/img/anime/conanMovie26.jpg', N'/frontend/img/anime/connanMovie26Nen.jpg', N'2:30:00', 0, 0, N'https://short.ink/E31SLLzwho3', N'https://short.ink/AqQKaXHnc', 2, 1, 1)
INSERT [dbo].[PhimLe] ([PhimLeId], [TenPhim], [NoiDung], [Anh], [AnhNen], [ThoiLuong], [LuotXem], [Like], [Link], [Trailer], [NamID], [QuocGiaId], [TrangThaiId]) VALUES (3, N'Thám Tử Lừng Danh Conan: Câu Chuyện Về Haibara Ai: Chuyến Tàu Sắt Bí Ẩn Màu Đen', N'Bộ phim sẽ tập trung vào quá khứ của Ai Haibara và sẽ dựng lại phần Chuyến tàu bí ẩn từ anime truyền hình, nơi Haibara và Conan gặp nhau lần đầu tiên. Bộ phim cũng sẽ bao gồm các cảnh trong phim Kurogane no Submarine ( Tàu ngầm sắt đen ).', N'/frontend/img/anime/conanCauChuyenVeHaibaraAi.jpg', N'/frontend/img/anime/conanCauChuyenVeHaibaraAiNen.jpg', N'1:30:00', 0, 0, N'https://short.ink/aSoEpyJwS', N'https://short.ink/aSoEpyJwS', 2, 1, 1)
INSERT [dbo].[PhimLe] ([PhimLeId], [TenPhim], [NoiDung], [Anh], [AnhNen], [ThoiLuong], [LuotXem], [Like], [Link], [Trailer], [NamID], [QuocGiaId], [TrangThaiId]) VALUES (4, N'Bố Già (Phim Việt) - PHIM GIA ĐÌNH', N'BỐ GIÀ là một bộ phim Web drama tình cảm gia đình, một dự án phim hài Tết 2020 của Trấn Thành. Trong phim, Trấn Thành đóng vai chính - một ông bố tính cục súc, bảo thủ nhưng rất thương con, luôn quan tâm gia đình. Phim xoay quanh đề tài thế giới giang hồ, xoáy vào chuyện giữ bản chất lương thiện hay chạy theo tiền bạc. Êkíp quay trong 11 ngày. Đạo diễn là Mr. Tô - người thực hiện các web-drama Thập tam muội, Thập tứ cô nương, Vi Cá tiền truyện... Ngoài Lê Giang, Tuấn Trần, em gái Trấn Thành cũng tham gia một vai.', N'/frontend/img/anime/boGia.jpg', N'/frontend/img/anime/boGiaNen.jpg', N'2:49:17', 2, 0, N'https://vk.com/video_ext.php?oid=777424797&id=456239137&hash=0f223eef924a5a6e&hd=2&ok.ru=1&&embed=1&autoplay=1&embed=1', N'https://vk.com/video_ext.php?oid=777424797&id=456239137&hash=0f223eef924a5a6e&hd=2&ok.ru=1&&embed=1&autoplay=1&embed=1', 4, 2, 1)
INSERT [dbo].[PhimLe] ([PhimLeId], [TenPhim], [NoiDung], [Anh], [AnhNen], [ThoiLuong], [LuotXem], [Like], [Link], [Trailer], [NamID], [QuocGiaId], [TrangThaiId]) VALUES (5, N'Cầu Hồn', N'Cầu Hồn bắt đầu trong bối cảnh kỳ lạ của những câu chuyện siêu nhiên được lưu hành trong trường. Các địa điểm chính của trường bao gồm thư viện, phòng tập nhảy và thang máy đều toát lên sự kinh dị về những điềm báo đen tối sẽ diễn ra. Điểm đặc biệt của phim là cách lồng ghép khéo léo 3 nghi thức tâm linh vào 1 trò chơi thực tế ảo: Trò chơi 4 góc; Trò chơi trốn tìm 1 người; và Trò chơi thang máy. Bộ phim là sự trỗi dậy của TRUYỀN THUYẾT KINH HOÀNG CÂY CẦU MA NỮ TẠI ĐÀI LOAN.', N'/frontend/img/anime/CauHon.jpg', N'/frontend/img/anime/CauHonNen.jpg', N'1:42:33', 1, 0, N'https://vip.opstream17.com/share/84d2004bf28a2095230e8e14993d398d', N'https://vip.opstream17.com/share/84d2004bf28a2095230e8e14993d398d', 1, 5, 1)
INSERT [dbo].[PhimLe] ([PhimLeId], [TenPhim], [NoiDung], [Anh], [AnhNen], [ThoiLuong], [LuotXem], [Like], [Link], [Trailer], [NamID], [QuocGiaId], [TrangThaiId]) VALUES (6, N' Trận Chiến Tàn Khốc', N'Khi một nhiệm vụ đặc biệt của Lực lượng Delta gặp trục trặc nghiêm trọng, phi công lái máy bay không người lái Reaper của Lực lượng Không quân có 48 giờ để khắc phục những gì đã biến thành một chiến dịch giải cứu hoang dã. Không có vũ khí và không có phương tiện liên lạc nào ngoài chiếc máy bay không người lái phía trên, nhiệm vụ trên mặt đất', N'/frontend/img/anime/tranChienTanKhoc.jpg', N'/frontend/img/anime/tranChienTanKhocNen.jpg', N'1:54:28', 1, 0, N'https://vip.opstream17.com/share/7810ccd41bf26faaa2c4e1f20db70a71', N'https://vip.opstream17.com/share/7810ccd41bf26faaa2c4e1f20db70a71', 1, 4, 1)
INSERT [dbo].[PhimLe] ([PhimLeId], [TenPhim], [NoiDung], [Anh], [AnhNen], [ThoiLuong], [LuotXem], [Like], [Link], [Trailer], [NamID], [QuocGiaId], [TrangThaiId]) VALUES (7, N'Thợ Săn Hoang Mạc', N'Sau trận động đất đầy chết chóc biến Seoul thành vùng đất hoang vô pháp, người thợ săn dũng cảm nọ gấp rút hành động để giải cứu cô thiếu nữ bị tay bác sĩ điên bắt cóc.', N'/frontend/img/anime/thoSanHoangMac.jpg', N'/frontend/img/anime/thoSanHoangMacNen.jpg', N'1:49:55', 0, 0, N'https://vip.opstream11.com/share/27802e14b7689cc7d57176ffea7f37b5', N'https://vip.opstream11.com/share/27802e14b7689cc7d57176ffea7f37b5', 1, 3, 1)
INSERT [dbo].[PhimLe] ([PhimLeId], [TenPhim], [NoiDung], [Anh], [AnhNen], [ThoiLuong], [LuotXem], [Like], [Link], [Trailer], [NamID], [QuocGiaId], [TrangThaiId]) VALUES (8, N'Tên cậu là gì?', N'Mitsuha là một cô bé học sinh cấp 3 sống tại một vùng nông thôn nằm rúc sâu trong núi. Cha cô là thị trưởng và rất ít khi ở nhà, bản thân cô sống với đứa em gái đang học tiểu học và bà nội. Mitsuha là một cô bé trung thực, nhưng cô không hề thích truyền thống thờ đạo Shinto của gia đình mình, cũng như việc bố cô đang tham gia một chiến dịch tranh cử. Cô than rằng mình sống ở một thị trấn nông thôn chật hẹp, ao ước phong cách sống diệu kỳ của Tokyo. Taki là một cậu học sinh cấp 3 sống tại trung tâm Tokyo. Cậu dành thời gian với bạn bè, làm bán thời gian tại một nhà hàng Ý, và có hứng thú với kiến trúc với mỹ thuật. Vào một ngày, Mitsuha nằm mơ thấy một cậu trai trẻ. Taki cũng nằm mơ thấy một người con gái sống tại một thị trấn hẻo lánh giữa những dãy núi mà cậu chưa đặt chân tới. Bí mật về những trải nhiệm cá nhân trong giấc mơ của họ là gì?', N'/frontend/img/anime/YourName.jpg', N'/frontend/img/anime/YourNameNen.jpg', N'1:46:00', 1, 2, N'https://short.ink/yO6bTK3N9', N'https://short.ink/yO6bTK3N9', 9, 1, 1)
INSERT [dbo].[PhimLe] ([PhimLeId], [TenPhim], [NoiDung], [Anh], [AnhNen], [ThoiLuong], [LuotXem], [Like], [Link], [Trailer], [NamID], [QuocGiaId], [TrangThaiId]) VALUES (9, N' Yêu Lại Vợ Ngầu', N'Yêu Lại Vợ Ngầu – Love Reset (2023) kể về cặp vợ chồng trẻ No Jung Yeol (Kang Ha-neul) và Hong Na Ra (Jung So-min) từ cuộc sống hôn nhân màu hồng dần “hiện nguyên hình” trở thành cái gai trong mắt đối phương với vô vàn thói hư, tật xấu. Không thể đi đến tiếng nói chung, Jung Yeol và Na Ra quyết định ra toà ly dị.

Tuy nhiên, họ phải chờ 30 ngày cho đến khi mọi thủ tục chính thức được hoàn tất. Trong khoảng thời gian này, một vụ tai nạn xảy ra khiến cả hai mất đi ký ức và không nhớ người kia là ai. Từ thời gian 30 ngày chờ đợi để được “đường ai nấy đi”, tình huống trớ trêu khiến cả hai bắt đầu nảy sinh tình cảm trở lại. Liệu khi nhớ ra mọi thứ, họ vẫn sẽ ký tên vào tờ giấy ly hôn?', N'/frontend/img/anime/YLVN.jpg', N'/frontend/img/anime/YLVNNen.jpg', N'2:00:33', 3, 1, N'https://short.ink/0tJdDTtXz', N'https://short.ink/0tJdDTtXz', 2, 3, 1)
INSERT [dbo].[PhimLe] ([PhimLeId], [TenPhim], [NoiDung], [Anh], [AnhNen], [ThoiLuong], [LuotXem], [Like], [Link], [Trailer], [NamID], [QuocGiaId], [TrangThaiId]) VALUES (10, N'Đấu La Đại Lục Movie: Song Thần Chi Chiến', N'Đấu La Đại Lục Movie: Song Thần Chi Chiến - The Land of Warriors
XEM PHIM
Đấu La Đại Lục Movie: Song Thần Chi Chiến là một trong những tác phẩm đặc sắc của Đường Gia Tam Thiếu. Tác phẩm thuộc thể loại Huyễn Hiệp, mang đến cho độc giả một cái nhìn, một cảm nhận mới về thế giới hiệp khách huyền ảo. Câu chuyện với nhân vật chính, con một thợ rèn, một thợ rèn trở thành tửu quỷ, vì thê tử đã mất, sẵn sàng lôi cuốn người đọc ngay từ những chương đầu tiên. Đấu La Thế Giới, một đại lục rộng lớn, cư dân đông đúc. Chức nghiệp cao quý nhất tại đây được gọi là Hồn Sư. Mỗi người sinh ra, đều có một vũ hồn bẩm sinh. Vũ hồn có thể là cái cày, cái cuốc, liêm đao... thuộc khối công cụ; một đóa hoa cúc, một cành mai... thuộc thực vật hệ; đến các vũ hồn cường đại như Tuyết Ảnh Ma Hùng, Tật Phong Ma Lang.... Để có thể trở thành hồn sư, ngoài vũ hồn cường đại, còn cần đến hồn lực để sử dụng vũ hồn đó, vũ hồn càng lớn, hồn lực càng cao, đại biểu cho thực lực mạnh mẽ tại Đấu la đại lục. Cứ 10 cấp hồn lực, vũ hồn có thể phụ gia thêm một cái hồn hoàn, có được từ việc liệp sát hồn thú, những quái thú mạnh mẽ, có tu vị hằng nghìn năm. Hành trình tu luyện, tìm hiểu bí ẩn cái chết của mẫu thân, bí mật tông sư của phụ thân, câu chuyện sẽ cho người xem những trải nghiệm thú vị.', N'/frontend/img/anime/DLDL.jpg', N'/frontend/img/anime/DLDLNen.jpg', N'1:35:00', 1, 1, N'https://short.ink/hN_ulMVW4', N'https://short.ink/hN_ulMVW4', 2, 6, 1)
INSERT [dbo].[PhimLe] ([PhimLeId], [TenPhim], [NoiDung], [Anh], [AnhNen], [ThoiLuong], [LuotXem], [Like], [Link], [Trailer], [NamID], [QuocGiaId], [TrangThaiId]) VALUES (11, N'Doraemon: Nobita và bản giao hưởng Địa Cầu', N'Chuẩn bị cho buổi hòa nhạc ở trường, Nobita đang tập thổi sáo recorder - nhạc cụ mà cậu dở tệ nhất. Thích thú trước nốt "No" lạc quẻ của Nobita , Micca - cô bé bí ẩn đã mời Doraemon , Nobita cùng nhóm bạn đến "Farre" - Cung điện âm nhạc tọa lạc trên một hành tinh nơi âm nhạc sẽ hóa thành năng lượng. Nhằm cứu cung điện này, Micca và Chapeck đang tìm kiếm 5 "Virtouso" - bậc thầy âm nhạc huyền thoại sẽ cùng mình biểu diễn! Với bảo bối thần kì "Chứng chỉ chuyên viên âm nhạc", Doraemon và các bạn đã chọn nhạc bằng sợi dây thần định mệnh, cùng Micca hòa tấu, từng bước khôi phục cung điện "Farre". Tuy nhiên, một vật thể sống đáng sợ rất ghét âm nhạc sẽ xóa sổ âm nhạc khỏi thế giới đang đến gần, Trái Đất đang rơi vào nguy hiểm...! Liệu nhóm người bạn có thể cứu được "tương lai âm nhạc" và địa cầu này?', N'/frontend/img/anime/DoraemonMV43.jpg', N'/frontend/img/anime/DoraemonMV43Nen.jpg', N'01:55:00', 13, 1, N'https://short.ink/97JDtuAf15', N'https://short.ink/97JDtuAf15', 1, 1, 1)
INSERT [dbo].[PhimLe] ([PhimLeId], [TenPhim], [NoiDung], [Anh], [AnhNen], [ThoiLuong], [LuotXem], [Like], [Link], [Trailer], [NamID], [QuocGiaId], [TrangThaiId]) VALUES (12, N'Doraemon Movie 42: Nobita to Sora no Utopia', N'Nobita Và Vùng Đất Lý Tưởng Trên Bầu Trời kể câu chuyện khi Nobita tìm thấy một hòn đảo hình lưỡi liềm trên trời mây. Ở nơi đó, tất cả đều hoàn hảo… đến mức cậu nhóc Nobita mê ngủ ngày cũng có thể trở thành một thần đồng toán học, một siêu sao thể thao. Cả hội Doraemon cùng sử dụng một món bảo bối độc đáo chưa từng xuất hiện trước đây để đến với vương quốc tuyệt vời này. Cùng với những người bạn ở đây, đặc biệt là chàng robot mèo Sonya, cả hội đã có chuyến hành trình tới vương quốc trên mây tuyệt vời… cho đến khi những bí mật đằng sau vùng đất lý tưởng này được hé lộ.', N'/frontend/img/anime/DoraemonMV42.jpg', N'/frontend/img/anime/DoraemonMV42Nen.jpg', N'01:47:00', 3, 1, N'https://short.ink/_g9B9jvll', N'https://short.ink/_g9B9jvll', 2, 1, 1)
INSERT [dbo].[PhimLe] ([PhimLeId], [TenPhim], [NoiDung], [Anh], [AnhNen], [ThoiLuong], [LuotXem], [Like], [Link], [Trailer], [NamID], [QuocGiaId], [TrangThaiId]) VALUES (13, N'Doraemon Movie 41: Nobita Và Cuộc Chiến Vũ Trụ Tí Hon', N'Nobita tình cờ gặp được người ngoài hành tinh tí hon Papi, vốn là Tổng thống của hành tinh Pirika, chạy trốn tới Trái Đất để thoát khỏi những kẻ nổi loạn nơi quê nhà. Doraemon, Nobita và hội bạn thân dùng bảo bối đèn pin thu nhỏ biến đổi theo kích cỡ giống Papi để chơi cùng cậu bé. Thế nhưng, một tàu chiến không gian tấn công cả nhóm. Cảm thấy có trách nhiệm vì liên lụy mọi người, Papi quyết định một mình đương đầu với quân phiến loạn tàn ác. Doraemon và các bạn lên đường đến hành tinh Pirika, sát cánh bên người bạn của mình.', N'/frontend/img/anime/DoraemonMV41.jpg', N'/frontend/img/anime/DoraemonMV41Nen.jpg', N'01:48:00', 40, 1, N'https://short.ink/DcFoqNBg_', N'https://short.ink/DcFoqNBg_', 3, 1, 1)
SET IDENTITY_INSERT [dbo].[PhimLe] OFF
GO
SET IDENTITY_INSERT [dbo].[QuocGia] ON 

INSERT [dbo].[QuocGia] ([QuocGiaId], [TenQuocGia]) VALUES (1, N'Nhật Bản')
INSERT [dbo].[QuocGia] ([QuocGiaId], [TenQuocGia]) VALUES (2, N'Việt Nam')
INSERT [dbo].[QuocGia] ([QuocGiaId], [TenQuocGia]) VALUES (3, N'Hàn Quốc')
INSERT [dbo].[QuocGia] ([QuocGiaId], [TenQuocGia]) VALUES (4, N'Mỹ')
INSERT [dbo].[QuocGia] ([QuocGiaId], [TenQuocGia]) VALUES (5, N'Đài Loan')
INSERT [dbo].[QuocGia] ([QuocGiaId], [TenQuocGia]) VALUES (6, N'Trung Quốc')
SET IDENTITY_INSERT [dbo].[QuocGia] OFF
GO
SET IDENTITY_INSERT [dbo].[TapPhim] ON 

INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (2, 2, N'https://short.ink/dotphkhi_', N'23:40', 2)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (3, 3, N'https://short.ink/jSzS7hbeA', N'23:40', 2)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (4, 4, N'https://short.ink/dfuj5IFcK', N'23:40', 2)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (5, 5, N'https://short.ink/2MuStxxr3U', N'23:40', 2)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (6, 6, N'https://short.ink/z3hl9XdSV', N'23:40', 2)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (7, 7, N'https://short.ink/oa3zamE5H', N'23:40', 2)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (8, 8, N'https://short.ink/HfWfaTvpI', N'23:40', 2)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (9, 9, N'https://short.ink/JDuPaFCWAg', N'23:40', 2)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (10, 10, N'https://short.ink/uKEpnxe2h', N'23:40', 2)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (11, 11, N'https://short.ink/N6xoOKwsm', N'23:40', 2)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (12, 12, N'https://short.ink/NuMxFcnCH', N'23:40', 2)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (13, 1, N'https://short.ink/uUn-YIOu0', N'20:00', 3)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (14, 2, N'https://short.ink/5-42CCn8v', N'20:00', 3)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (15, 3, N'https://short.ink/TFmxB_50C', N'20:00', 3)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (16, 4, N'https://short.ink/mxyKhrexk', N'20:00', 3)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (17, 5, N'https://short.ink/UT1S3MM1t', N'20:00', 3)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (19, 6, N'https://short.ink/yohklqjE9', N'20:00', 3)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (20, 7, N'https://short.ink/GqnEqssje9', N'20:00', 3)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (22, 8, N'https://short.ink/tRpQPdFjk', N'20:00', 3)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (23, 9, N'https://short.ink/cDok0-TQV', N'20:00', 3)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (24, 10, N'https://short.ink/ksNN1nHrD', N'20:00', 3)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (25, 11, N'https://short.ink/iGkdgv4Xk2', N'20:00', 3)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (27, 12, N'https://short.ink/LkzFysubB', N'20:00', 3)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (28, 1, N'https://short.ink/GHZiGH_MO', N'40:00', 4)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (29, 2, N'https://short.ink/wAvyaZ2r2', N'40:00', 4)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (30, 3, N'https://short.ink/xx4sy4SIbb', N'40:00', 4)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (31, 4, N'https://short.ink/3KjBB0', N'40:00', 4)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (32, 5, N'https://short.ink/bxy3E1uGV', N'40:00', 4)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (33, 6, N'https://short.ink/0T2hbOvfy', N'40:00', 4)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (34, 7, N'https://short.ink/gGirnuAHB', N'40:00', 4)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (35, 8, N'https://short.ink/Ish6mGUocL', N'40:00', 4)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (36, 9, N'https://short.ink/BscYkrPFN', N'40:00', 4)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (37, 10, N'https://short.ink/jx9v0hDes', N'40:00', 4)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (38, 11, N'https://short.ink/3fGibS_9c', N'40:00', 4)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (39, 12, N'https://short.ink/8LGy02q47', N'40:00', 4)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (40, 13, N'https://short.ink/q-Oq6R1As', N'40:00', 4)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (41, 14, N'https://short.ink/qrGd9BhzD', N'40:00', 4)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (42, 15, N'https://short.ink/Unh0fy1fO', N'40:00', 4)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (43, 16, N'https://short.ink/jA9Cuu2UY', N'40:00', 4)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (44, 17, N'https://short.ink/thcEk-3Jn', N'40:00', 4)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (45, 18, N'https://short.ink/JPAHVLKYrq', N'40:00', 4)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (46, 19, N'https://short.ink/LQMh2RHeB', N'40:00', 4)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (47, 20, N'https://short.ink/JncfLLO5l', N'40:00', 4)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (48, 21, N'https://short.ink/aD4pzd5Zj', N'40:00', 4)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (49, 22, N'https://short.ink/wFBh5KsPi', N'40:00', 4)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (50, 23, N'https://short.ink/h9Nxy_yyt', N'40:00', 4)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (52, 24, N'https://short.ink/nL27uu_XU', N'40:00', 4)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (53, 25, N'https://short.ink/oy9FLeQaE', N'40:00', 4)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (54, 26, N'https://short.ink/ZAiw71wXy', N'40:00', 4)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (55, 27, N'https://short.ink/c-KN29yvE', N'40:00', 4)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (56, 28, N'https://short.ink/7GOCvCHXs', N'40:00', 4)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (57, 29, N'https://short.ink/?v=FHSRQQTDwD', N'40:00', 4)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (58, 30, N'https://short.ink/?v=0h9dlQoZz', N'40:00', 4)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (59, 31, N'https://short.ink/?v=6jstmo8H7', N'40:00', 4)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (60, 32, N'https://short.ink/?v=9uHZhQ-c5', N'40:00', 4)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (62, 33, N'https://short.ink/?v=ESI4l86cL', N'40:00', 4)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (63, 34, N'https://short.ink/?v=NGGgTaV0G', N'40:00', 4)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (64, 35, N'https://short.ink/?v=Zp36CacIqk', N'40:00', 4)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (65, 36, N'https://short.ink/?v=Fa6ggIgj2gT', N'40:00', 4)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (66, 1, N'https://short.ink/7k5YswhoOh', N'40:00', 7)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (67, 2, N'https://short.ink/ybtktF5vQ', N'20:00', 7)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (68, 1, N'https://short.ink/UqrteaHWs9U', N'23:40', 6)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (69, 2, N'https://short.ink/UVgnVVZ3LT', N'23:37', 6)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (70, 3, N'https://short.ink/d288A_qJu', N'23:40', 6)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (71, 4, N'https://short.ink/i1qly8HOpOb', N'23:40', 6)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (72, 5, N'https://short.ink/V-_uO9ywxh', N'23:40', 6)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (73, 6, N'https://short.ink/ZmnO_G5uxea', N'23:40', 6)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (74, 7, N'https://short.ink/r9LTyQ72A8X', N'23:40', 6)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (75, 1, N'https://short.ink/2MuStxxr3U', N'23:40', 9)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (76, 2, N'https://short.ink/i9r5aO1x8', N'20:00', 9)
INSERT [dbo].[TapPhim] ([TapPhimId], [Tap], [Link], [ThoiLuong], [PhimBoId]) VALUES (77, 13, N'https://short.ink/i9r5aO1x8', N'20:00', 3)
SET IDENTITY_INSERT [dbo].[TapPhim] OFF
GO
SET IDENTITY_INSERT [dbo].[TheLoai] ON 

INSERT [dbo].[TheLoai] ([TheLoaiId], [TenTheLoai]) VALUES (1, N'Phiêu lưu')
INSERT [dbo].[TheLoai] ([TheLoaiId], [TenTheLoai]) VALUES (2, N'Tình cảm')
INSERT [dbo].[TheLoai] ([TheLoaiId], [TenTheLoai]) VALUES (3, N'Hành động')
INSERT [dbo].[TheLoai] ([TheLoaiId], [TenTheLoai]) VALUES (4, N'Hài')
INSERT [dbo].[TheLoai] ([TheLoaiId], [TenTheLoai]) VALUES (5, N'Khoa học')
INSERT [dbo].[TheLoai] ([TheLoaiId], [TenTheLoai]) VALUES (6, N'Kinh dị')
INSERT [dbo].[TheLoai] ([TheLoaiId], [TenTheLoai]) VALUES (7, N'Viễn tưởng')
INSERT [dbo].[TheLoai] ([TheLoaiId], [TenTheLoai]) VALUES (8, N'Cổ trang')
INSERT [dbo].[TheLoai] ([TheLoaiId], [TenTheLoai]) VALUES (9, N'Hoạt hình')
INSERT [dbo].[TheLoai] ([TheLoaiId], [TenTheLoai]) VALUES (10, N'Gia đình')
INSERT [dbo].[TheLoai] ([TheLoaiId], [TenTheLoai]) VALUES (11, N'Tâm Lý')
INSERT [dbo].[TheLoai] ([TheLoaiId], [TenTheLoai]) VALUES (12, N'Học đường')
SET IDENTITY_INSERT [dbo].[TheLoai] OFF
GO
SET IDENTITY_INSERT [dbo].[ThongBaos] ON 

INSERT [dbo].[ThongBaos] ([Id], [UserId], [PhimBoId], [Message], [Url], [CreatedAt]) VALUES (1, N'2b2fd5db-f6e3-4d27-8e09-1374552558c1', 9, N'Khi Anh Chạy Về Phía Em vừa cập nhật tập 2.', N'http://localhost:5226/XemPhim/XemPhimBo/9?tap=2', CAST(N'2024-12-04T14:38:53.3755647' AS DateTime2))
INSERT [dbo].[ThongBaos] ([Id], [UserId], [PhimBoId], [Message], [Url], [CreatedAt]) VALUES (2, N'2b2fd5db-f6e3-4d27-8e09-1374552558c1', 3, N'Chào Mừng Đến Với Lớp Học Đề Cao Thực Lực vừa cập nhật tập 13.', N'http://localhost:5226/XemPhim/XemPhimBo/3?tap=13', CAST(N'2024-12-04T14:41:19.6275807' AS DateTime2))
SET IDENTITY_INSERT [dbo].[ThongBaos] OFF
GO
SET IDENTITY_INSERT [dbo].[TrangThai] ON 

INSERT [dbo].[TrangThai] ([TrangThaiId], [TrangThaiPhim]) VALUES (1, N'Hoàn Thành')
INSERT [dbo].[TrangThai] ([TrangThaiId], [TrangThaiPhim]) VALUES (2, N'Cập nhật sớm')
INSERT [dbo].[TrangThai] ([TrangThaiId], [TrangThaiPhim]) VALUES (3, N'Sắp ra mắt')
SET IDENTITY_INSERT [dbo].[TrangThai] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 11/02/2025 12:00:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 11/02/2025 12:00:18 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 11/02/2025 12:00:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 11/02/2025 12:00:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 11/02/2025 12:00:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 11/02/2025 12:00:18 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 11/02/2025 12:00:18 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_BinhLuan_PhimBoId]    Script Date: 11/02/2025 12:00:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_BinhLuan_PhimBoId] ON [dbo].[BinhLuan]
(
	[PhimBoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_BinhLuan_PhimLeId]    Script Date: 11/02/2025 12:00:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_BinhLuan_PhimLeId] ON [dbo].[BinhLuan]
(
	[PhimLeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_BinhLuan_UserId]    Script Date: 11/02/2025 12:00:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_BinhLuan_UserId] ON [dbo].[BinhLuan]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ChiTietTheLoaiPhimBo_PhimBoId]    Script Date: 11/02/2025 12:00:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_ChiTietTheLoaiPhimBo_PhimBoId] ON [dbo].[ChiTietTheLoaiPhimBo]
(
	[PhimBoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ChiTietTheLoaiPhimBo_TheLoaiId]    Script Date: 11/02/2025 12:00:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_ChiTietTheLoaiPhimBo_TheLoaiId] ON [dbo].[ChiTietTheLoaiPhimBo]
(
	[TheLoaiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ChiTietTheLoaiPhimLe_PhimLeId]    Script Date: 11/02/2025 12:00:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_ChiTietTheLoaiPhimLe_PhimLeId] ON [dbo].[ChiTietTheLoaiPhimLe]
(
	[PhimLeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ChiTietTheLoaiPhimLe_TheLoaiId]    Script Date: 11/02/2025 12:00:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_ChiTietTheLoaiPhimLe_TheLoaiId] ON [dbo].[ChiTietTheLoaiPhimLe]
(
	[TheLoaiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_DanhGia_PhimBoId]    Script Date: 11/02/2025 12:00:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_DanhGia_PhimBoId] ON [dbo].[DanhGia]
(
	[PhimBoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_DanhGia_PhimLeId]    Script Date: 11/02/2025 12:00:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_DanhGia_PhimLeId] ON [dbo].[DanhGia]
(
	[PhimLeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_DanhGia_UserId]    Script Date: 11/02/2025 12:00:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_DanhGia_UserId] ON [dbo].[DanhGia]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_HopPhim_PhimBoId]    Script Date: 11/02/2025 12:00:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_HopPhim_PhimBoId] ON [dbo].[HopPhim]
(
	[PhimBoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_HopPhim_PhimLeId]    Script Date: 11/02/2025 12:00:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_HopPhim_PhimLeId] ON [dbo].[HopPhim]
(
	[PhimLeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_HopPhim_UserId]    Script Date: 11/02/2025 12:00:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_HopPhim_UserId] ON [dbo].[HopPhim]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LichSuXem_PhimBoId]    Script Date: 11/02/2025 12:00:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_LichSuXem_PhimBoId] ON [dbo].[LichSuXem]
(
	[PhimBoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LichSuXem_PhimLeId]    Script Date: 11/02/2025 12:00:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_LichSuXem_PhimLeId] ON [dbo].[LichSuXem]
(
	[PhimLeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_LichSuXem_UserId]    Script Date: 11/02/2025 12:00:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_LichSuXem_UserId] ON [dbo].[LichSuXem]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PhimBo_NamID]    Script Date: 11/02/2025 12:00:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_PhimBo_NamID] ON [dbo].[PhimBo]
(
	[NamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PhimBo_QuocGiaId]    Script Date: 11/02/2025 12:00:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_PhimBo_QuocGiaId] ON [dbo].[PhimBo]
(
	[QuocGiaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PhimBo_TrangThaiId]    Script Date: 11/02/2025 12:00:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_PhimBo_TrangThaiId] ON [dbo].[PhimBo]
(
	[TrangThaiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PhimLe_NamID]    Script Date: 11/02/2025 12:00:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_PhimLe_NamID] ON [dbo].[PhimLe]
(
	[NamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PhimLe_QuocGiaId]    Script Date: 11/02/2025 12:00:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_PhimLe_QuocGiaId] ON [dbo].[PhimLe]
(
	[QuocGiaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PhimLe_TrangThaiId]    Script Date: 11/02/2025 12:00:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_PhimLe_TrangThaiId] ON [dbo].[PhimLe]
(
	[TrangThaiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TapPhim_PhimBoId]    Script Date: 11/02/2025 12:00:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_TapPhim_PhimBoId] ON [dbo].[TapPhim]
(
	[PhimBoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ThongBaos_PhimBoId]    Script Date: 11/02/2025 12:00:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_ThongBaos_PhimBoId] ON [dbo].[ThongBaos]
(
	[PhimBoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ThongBaos_UserId]    Script Date: 11/02/2025 12:00:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_ThongBaos_UserId] ON [dbo].[ThongBaos]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_PhimBo_PhimBoId] FOREIGN KEY([PhimBoId])
REFERENCES [dbo].[PhimBo] ([PhimBoId])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_PhimBo_PhimBoId]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_PhimLe_PhimLeId] FOREIGN KEY([PhimLeId])
REFERENCES [dbo].[PhimLe] ([PhimLeId])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_PhimLe_PhimLeId]
GO
ALTER TABLE [dbo].[ChiTietTheLoaiPhimBo]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietTheLoaiPhimBo_PhimBo_PhimBoId] FOREIGN KEY([PhimBoId])
REFERENCES [dbo].[PhimBo] ([PhimBoId])
GO
ALTER TABLE [dbo].[ChiTietTheLoaiPhimBo] CHECK CONSTRAINT [FK_ChiTietTheLoaiPhimBo_PhimBo_PhimBoId]
GO
ALTER TABLE [dbo].[ChiTietTheLoaiPhimBo]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietTheLoaiPhimBo_TheLoai_TheLoaiId] FOREIGN KEY([TheLoaiId])
REFERENCES [dbo].[TheLoai] ([TheLoaiId])
GO
ALTER TABLE [dbo].[ChiTietTheLoaiPhimBo] CHECK CONSTRAINT [FK_ChiTietTheLoaiPhimBo_TheLoai_TheLoaiId]
GO
ALTER TABLE [dbo].[ChiTietTheLoaiPhimLe]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietTheLoaiPhimLe_PhimLe_PhimLeId] FOREIGN KEY([PhimLeId])
REFERENCES [dbo].[PhimLe] ([PhimLeId])
GO
ALTER TABLE [dbo].[ChiTietTheLoaiPhimLe] CHECK CONSTRAINT [FK_ChiTietTheLoaiPhimLe_PhimLe_PhimLeId]
GO
ALTER TABLE [dbo].[ChiTietTheLoaiPhimLe]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietTheLoaiPhimLe_TheLoai_TheLoaiId] FOREIGN KEY([TheLoaiId])
REFERENCES [dbo].[TheLoai] ([TheLoaiId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietTheLoaiPhimLe] CHECK CONSTRAINT [FK_ChiTietTheLoaiPhimLe_TheLoai_TheLoaiId]
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [FK_DanhGia_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_PhimBo_PhimBoId] FOREIGN KEY([PhimBoId])
REFERENCES [dbo].[PhimBo] ([PhimBoId])
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [FK_DanhGia_PhimBo_PhimBoId]
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_PhimLe_PhimLeId] FOREIGN KEY([PhimLeId])
REFERENCES [dbo].[PhimLe] ([PhimLeId])
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [FK_DanhGia_PhimLe_PhimLeId]
GO
ALTER TABLE [dbo].[HopPhim]  WITH CHECK ADD  CONSTRAINT [FK_HopPhim_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HopPhim] CHECK CONSTRAINT [FK_HopPhim_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[HopPhim]  WITH CHECK ADD  CONSTRAINT [FK_HopPhim_PhimBo_PhimBoId] FOREIGN KEY([PhimBoId])
REFERENCES [dbo].[PhimBo] ([PhimBoId])
GO
ALTER TABLE [dbo].[HopPhim] CHECK CONSTRAINT [FK_HopPhim_PhimBo_PhimBoId]
GO
ALTER TABLE [dbo].[HopPhim]  WITH CHECK ADD  CONSTRAINT [FK_HopPhim_PhimLe_PhimLeId] FOREIGN KEY([PhimLeId])
REFERENCES [dbo].[PhimLe] ([PhimLeId])
GO
ALTER TABLE [dbo].[HopPhim] CHECK CONSTRAINT [FK_HopPhim_PhimLe_PhimLeId]
GO
ALTER TABLE [dbo].[LichSuXem]  WITH CHECK ADD  CONSTRAINT [FK_LichSuXem_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LichSuXem] CHECK CONSTRAINT [FK_LichSuXem_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[LichSuXem]  WITH CHECK ADD  CONSTRAINT [FK_LichSuXem_PhimBo_PhimBoId] FOREIGN KEY([PhimBoId])
REFERENCES [dbo].[PhimBo] ([PhimBoId])
GO
ALTER TABLE [dbo].[LichSuXem] CHECK CONSTRAINT [FK_LichSuXem_PhimBo_PhimBoId]
GO
ALTER TABLE [dbo].[LichSuXem]  WITH CHECK ADD  CONSTRAINT [FK_LichSuXem_PhimLe_PhimLeId] FOREIGN KEY([PhimLeId])
REFERENCES [dbo].[PhimLe] ([PhimLeId])
GO
ALTER TABLE [dbo].[LichSuXem] CHECK CONSTRAINT [FK_LichSuXem_PhimLe_PhimLeId]
GO
ALTER TABLE [dbo].[PhimBo]  WITH CHECK ADD  CONSTRAINT [FK_PhimBo_Nam_NamID] FOREIGN KEY([NamID])
REFERENCES [dbo].[Nam] ([NamID])
GO
ALTER TABLE [dbo].[PhimBo] CHECK CONSTRAINT [FK_PhimBo_Nam_NamID]
GO
ALTER TABLE [dbo].[PhimBo]  WITH CHECK ADD  CONSTRAINT [FK_PhimBo_QuocGia_QuocGiaId] FOREIGN KEY([QuocGiaId])
REFERENCES [dbo].[QuocGia] ([QuocGiaId])
GO
ALTER TABLE [dbo].[PhimBo] CHECK CONSTRAINT [FK_PhimBo_QuocGia_QuocGiaId]
GO
ALTER TABLE [dbo].[PhimBo]  WITH CHECK ADD  CONSTRAINT [FK_PhimBo_TrangThai_TrangThaiId] FOREIGN KEY([TrangThaiId])
REFERENCES [dbo].[TrangThai] ([TrangThaiId])
GO
ALTER TABLE [dbo].[PhimBo] CHECK CONSTRAINT [FK_PhimBo_TrangThai_TrangThaiId]
GO
ALTER TABLE [dbo].[PhimLe]  WITH CHECK ADD  CONSTRAINT [FK_PhimLe_Nam_NamID] FOREIGN KEY([NamID])
REFERENCES [dbo].[Nam] ([NamID])
GO
ALTER TABLE [dbo].[PhimLe] CHECK CONSTRAINT [FK_PhimLe_Nam_NamID]
GO
ALTER TABLE [dbo].[PhimLe]  WITH CHECK ADD  CONSTRAINT [FK_PhimLe_QuocGia_QuocGiaId] FOREIGN KEY([QuocGiaId])
REFERENCES [dbo].[QuocGia] ([QuocGiaId])
GO
ALTER TABLE [dbo].[PhimLe] CHECK CONSTRAINT [FK_PhimLe_QuocGia_QuocGiaId]
GO
ALTER TABLE [dbo].[PhimLe]  WITH CHECK ADD  CONSTRAINT [FK_PhimLe_TrangThai_TrangThaiId] FOREIGN KEY([TrangThaiId])
REFERENCES [dbo].[TrangThai] ([TrangThaiId])
GO
ALTER TABLE [dbo].[PhimLe] CHECK CONSTRAINT [FK_PhimLe_TrangThai_TrangThaiId]
GO
ALTER TABLE [dbo].[TapPhim]  WITH CHECK ADD  CONSTRAINT [FK_TapPhim_PhimBo_PhimBoId] FOREIGN KEY([PhimBoId])
REFERENCES [dbo].[PhimBo] ([PhimBoId])
GO
ALTER TABLE [dbo].[TapPhim] CHECK CONSTRAINT [FK_TapPhim_PhimBo_PhimBoId]
GO
ALTER TABLE [dbo].[ThongBaos]  WITH CHECK ADD  CONSTRAINT [FK_ThongBaos_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ThongBaos] CHECK CONSTRAINT [FK_ThongBaos_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ThongBaos]  WITH CHECK ADD  CONSTRAINT [FK_ThongBaos_PhimBo_PhimBoId] FOREIGN KEY([PhimBoId])
REFERENCES [dbo].[PhimBo] ([PhimBoId])
GO
ALTER TABLE [dbo].[ThongBaos] CHECK CONSTRAINT [FK_ThongBaos_PhimBo_PhimBoId]
GO
USE [master]
GO
ALTER DATABASE [WebsiteXemPhim] SET  READ_WRITE 
GO
