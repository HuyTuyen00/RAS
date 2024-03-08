USE [master]
GO
/****** Object:  Database [RAS_final]    Script Date: 8/7/2023 12:07:25 AM ******/
CREATE DATABASE [RAS_final]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RAS_final', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER2019\MSSQL\DATA\RAS_final.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RAS_final_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER2019\MSSQL\DATA\RAS_final_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [RAS_final] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RAS_final].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RAS_final] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RAS_final] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RAS_final] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RAS_final] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RAS_final] SET ARITHABORT OFF 
GO
ALTER DATABASE [RAS_final] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [RAS_final] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RAS_final] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RAS_final] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RAS_final] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RAS_final] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RAS_final] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RAS_final] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RAS_final] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RAS_final] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RAS_final] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RAS_final] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RAS_final] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RAS_final] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RAS_final] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RAS_final] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RAS_final] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RAS_final] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [RAS_final] SET  MULTI_USER 
GO
ALTER DATABASE [RAS_final] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RAS_final] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RAS_final] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RAS_final] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [RAS_final] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RAS_final] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [RAS_final] SET QUERY_STORE = OFF
GO
USE [RAS_final]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 8/7/2023 12:07:25 AM ******/
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
/****** Object:  Table [dbo].[ABOUT_US]    Script Date: 8/7/2023 12:07:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABOUT_US](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Content] [ntext] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AGENT]    Script Date: 8/7/2023 12:07:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AGENT](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AgentName] [nvarchar](100) NULL,
	[PhoneNumber] [varchar](12) NULL,
	[Email] [varchar](200) NULL,
	[Facebook] [nvarchar](100) NULL,
	[Zalo] [nvarchar](100) NULL,
	[LoginName] [varchar](50) NULL,
	[Password] [varchar](300) NULL,
	[ActiveKey] [varchar](300) NULL,
	[ResetPasswordKey] [varchar](300) NULL,
	[LastLogin] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
	[LevelId] [int] NOT NULL,
	[ConfirmPhoneNumber] [bit] NOT NULL,
	[Avatar] [varchar](100) NULL,
	[Coin] [int] NULL,
	[Package] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CITY]    Script Date: 8/7/2023 12:07:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CITY](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__CITY__3214EC07CF4E1367] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 8/7/2023 12:07:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[Id] [nchar](10) NOT NULL,
	[ForumId] [int] NOT NULL,
	[AgentId] [int] NOT NULL,
	[Content] [nvarchar](500) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DISTRICT]    Script Date: 8/7/2023 12:07:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DISTRICT](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DistrictName] [nvarchar](100) NOT NULL,
	[CityId] [int] NOT NULL,
 CONSTRAINT [PK__DISTRICT__3214EC07213E799D] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FAQ]    Script Date: 8/7/2023 12:07:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAQ](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Question] [ntext] NULL,
	[Answer] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Forum]    Script Date: 8/7/2023 12:07:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Forum](
	[Id] [int] NOT NULL,
	[AgentId] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Content] [text] NOT NULL,
	[CreatedDate] [date] NOT NULL,
 CONSTRAINT [PK_Forum] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistoryPayment]    Script Date: 8/7/2023 12:07:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistoryPayment](
	[PaymentID] [int] IDENTITY(1,1) NOT NULL,
	[AgentID] [int] NULL,
	[Coin] [int] NULL,
	[PaymentDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LEVEL]    Script Date: 8/7/2023 12:07:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LEVEL](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LevelName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Like]    Script Date: 8/7/2023 12:07:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Like](
	[Id] [int] NOT NULL,
	[ForumId] [int] NOT NULL,
	[AgentId] [int] NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
 CONSTRAINT [PK_Like] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAP]    Script Date: 8/7/2023 12:07:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAP](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](300) NOT NULL,
	[Latitude] [decimal](9, 6) NULL,
	[Longtitude] [decimal](9, 6) NULL,
	[WardId] [int] NULL,
	[DistrictId] [int] NULL,
	[CityId] [int] NULL,
	[RealEstateId] [int] NULL,
 CONSTRAINT [PK__MAP__3214EC07160D1B38] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 8/7/2023 12:07:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[NewsBody] [nvarchar](max) NULL,
	[AgentId] [int] NOT NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NEWSPICTURE]    Script Date: 8/7/2023 12:07:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NEWSPICTURE](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PictureName] [nvarchar](50) NULL,
	[NewsID] [int] NOT NULL,
	[URL] [varchar](300) NULL,
	[IsActive] [bit] NULL,
	[NativeHeight] [int] NOT NULL,
	[NativeWidth] [int] NOT NULL,
 CONSTRAINT [PK_NEWSPICTURE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PICTURE]    Script Date: 8/7/2023 12:07:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PICTURE](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PictureName] [varchar](100) NULL,
	[RealEstateId] [int] NULL,
	[URL] [varchar](300) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[NativeHeight] [int] NOT NULL,
	[NativeWidth] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[POLICY]    Script Date: 8/7/2023 12:07:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POLICY](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PolicyContent] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RATING]    Script Date: 8/7/2023 12:07:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RATING](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Rate] [int] NOT NULL,
	[RealEstateId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ratings]    Script Date: 8/7/2023 12:07:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ratings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AgentId] [int] NULL,
	[RealEstateId] [int] NULL,
	[StarPoint] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[REAL_ESTATE]    Script Date: 8/7/2023 12:07:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REAL_ESTATE](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PostTime] [datetime] NOT NULL,
	[LastUpdate] [datetime] NULL,
	[ExprireTime] [datetime] NULL,
	[RealEstateTypeId] [int] NULL,
	[AgentId] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[ContactNumber] [nvarchar](max) NULL,
	[IsConfirm] [bit] NOT NULL,
	[BeginTime] [datetime2](7) NOT NULL,
	[ConfirmStatus] [int] NOT NULL,
	[IsAvaiable] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[REAL_ESTATE_DETAIL]    Script Date: 8/7/2023 12:07:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REAL_ESTATE_DETAIL](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RealEstateId] [int] NULL,
	[Title] [nvarchar](300) NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[Acreage] [int] NOT NULL,
	[RoomNumber] [int] NOT NULL,
	[Description] [ntext] NULL,
	[HasPrivateWC] [bit] NOT NULL,
	[HasMezzanine] [bit] NOT NULL,
	[AllowCook] [bit] NOT NULL,
	[FreeTime] [bit] NOT NULL,
	[WaterPrice] [int] NULL,
	[ElectronicPrice] [int] NULL,
	[WifiPrice] [decimal](18, 0) NULL,
	[SecurityCamera] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[REAL_ESTATE_TYPE]    Script Date: 8/7/2023 12:07:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REAL_ESTATE_TYPE](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RealEstateTypeName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SOCIAL_LOGIN]    Script Date: 8/7/2023 12:07:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SOCIAL_LOGIN](
	[ProviderKey] [nvarchar](300) NOT NULL,
	[UserId] [int] NOT NULL,
	[Provider] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WARD]    Script Date: 8/7/2023 12:07:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WARD](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WardName] [nvarchar](100) NOT NULL,
	[DistrictId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Wishlist]    Script Date: 8/7/2023 12:07:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wishlist](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AgentId] [int] NULL,
	[RealEstateId] [int] NULL,
	[CreatedAt] [date] NULL,
 CONSTRAINT [PK_Wishlist] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AGENT] ON 

INSERT [dbo].[AGENT] ([Id], [AgentName], [PhoneNumber], [Email], [Facebook], [Zalo], [LoginName], [Password], [ActiveKey], [ResetPasswordKey], [LastLogin], [IsActive], [LevelId], [ConfirmPhoneNumber], [Avatar], [Coin], [Package]) VALUES (5, N'Đạt', N'0856325732', N'ntdat321@gmail.com', N'https://www.facebook.com/profile.php?id=100007126088819', N'https://www.youtube.com/', N'Tedadeza', N'change8645', NULL, NULL, NULL, 1, 1, 1, N'ngocmy2.jpg', 0, 0)
INSERT [dbo].[AGENT] ([Id], [AgentName], [PhoneNumber], [Email], [Facebook], [Zalo], [LoginName], [Password], [ActiveKey], [ResetPasswordKey], [LastLogin], [IsActive], [LevelId], [ConfirmPhoneNumber], [Avatar], [Coin], [Package]) VALUES (6, N'Son Vu', N'0952157196', NULL, N'https://www.facebook.com/profile.php?id=100007126088819', N'https://zalo.me/0989201625', N'sondzugudboiz', N'Vudeptraivodich1.', NULL, NULL, NULL, 1, 3, 1, N'a1.jpg', 20010, 3)
INSERT [dbo].[AGENT] ([Id], [AgentName], [PhoneNumber], [Email], [Facebook], [Zalo], [LoginName], [Password], [ActiveKey], [ResetPasswordKey], [LastLogin], [IsActive], [LevelId], [ConfirmPhoneNumber], [Avatar], [Coin], [Package]) VALUES (7, N'Tuyen', N'0192830912', N'tuyen@gmail.com', N'https://www.facebook.com/profile.php?id=100007126088819', N'https://zalo.me/0989201625', N'tuyen', N'12345678', N'1', NULL, NULL, 1, 2, 1, N'a1.jpg', 0, 0)
INSERT [dbo].[AGENT] ([Id], [AgentName], [PhoneNumber], [Email], [Facebook], [Zalo], [LoginName], [Password], [ActiveKey], [ResetPasswordKey], [LastLogin], [IsActive], [LevelId], [ConfirmPhoneNumber], [Avatar], [Coin], [Package]) VALUES (8, N'Test', N'0912064674', N'tedadeza@gmail.com', N'https://www.facebook.com/profile.php?id=100007126088819', N'https://zalo.me/0989201625', N'test', N'12345678', N'1', NULL, NULL, 0, 3, 1, N'a1.jpg', 0, 0)
INSERT [dbo].[AGENT] ([Id], [AgentName], [PhoneNumber], [Email], [Facebook], [Zalo], [LoginName], [Password], [ActiveKey], [ResetPasswordKey], [LastLogin], [IsActive], [LevelId], [ConfirmPhoneNumber], [Avatar], [Coin], [Package]) VALUES (9, N'Linh Le', N'0915975898', N'linhkidno1@gmail.com', NULL, NULL, N'Linh', N'12345678', NULL, NULL, NULL, 1, 3, 1, N'a1.jpg', 0, 3)
INSERT [dbo].[AGENT] ([Id], [AgentName], [PhoneNumber], [Email], [Facebook], [Zalo], [LoginName], [Password], [ActiveKey], [ResetPasswordKey], [LastLogin], [IsActive], [LevelId], [ConfirmPhoneNumber], [Avatar], [Coin], [Package]) VALUES (10, N'Son Vu', N'0962157196', N'vudeptraivodich@gmail.com', NULL, NULL, N'test1', N'00011223', NULL, NULL, NULL, 1, 3, 1, N'a1.jpg', NULL, NULL)
INSERT [dbo].[AGENT] ([Id], [AgentName], [PhoneNumber], [Email], [Facebook], [Zalo], [LoginName], [Password], [ActiveKey], [ResetPasswordKey], [LastLogin], [IsActive], [LevelId], [ConfirmPhoneNumber], [Avatar], [Coin], [Package]) VALUES (11, N'Linh Le', N'0962157193', N'vudeptraivodich@gmail.com', NULL, NULL, N'blabla', N'12345678', NULL, NULL, NULL, 1, 3, 1, N'a1.jpg', NULL, NULL)
INSERT [dbo].[AGENT] ([Id], [AgentName], [PhoneNumber], [Email], [Facebook], [Zalo], [LoginName], [Password], [ActiveKey], [ResetPasswordKey], [LastLogin], [IsActive], [LevelId], [ConfirmPhoneNumber], [Avatar], [Coin], [Package]) VALUES (12, N'Son Vu', N'0962157190', N'linhkidno1@gmail.com', NULL, NULL, N'Test3', N'12345678', NULL, NULL, NULL, 1, 3, 1, N'a1.jpg', 0, 3)
INSERT [dbo].[AGENT] ([Id], [AgentName], [PhoneNumber], [Email], [Facebook], [Zalo], [LoginName], [Password], [ActiveKey], [ResetPasswordKey], [LastLogin], [IsActive], [LevelId], [ConfirmPhoneNumber], [Avatar], [Coin], [Package]) VALUES (13, N'Linh Le', N'0962157196', N'sonvukd@gmail.com', NULL, NULL, N'sondzugudboiz', N'00011223', NULL, NULL, NULL, 1, 3, 1, N'a1.jpg', 20, 0)
INSERT [dbo].[AGENT] ([Id], [AgentName], [PhoneNumber], [Email], [Facebook], [Zalo], [LoginName], [Password], [ActiveKey], [ResetPasswordKey], [LastLogin], [IsActive], [LevelId], [ConfirmPhoneNumber], [Avatar], [Coin], [Package]) VALUES (14, N'Son Vu', N'0962157196', N'linhkidno1@gmail.com', NULL, NULL, N'sondzu', N'12345678@', NULL, NULL, NULL, 1, 3, 1, N'a1.jpg', 0, 0)
INSERT [dbo].[AGENT] ([Id], [AgentName], [PhoneNumber], [Email], [Facebook], [Zalo], [LoginName], [Password], [ActiveKey], [ResetPasswordKey], [LastLogin], [IsActive], [LevelId], [ConfirmPhoneNumber], [Avatar], [Coin], [Package]) VALUES (15, N'test', N'0962965924', N'test@gmail.com', NULL, NULL, N'test', N'Taz@12345', NULL, NULL, NULL, 1, 3, 1, N'a1.jpg', 0, 0)
INSERT [dbo].[AGENT] ([Id], [AgentName], [PhoneNumber], [Email], [Facebook], [Zalo], [LoginName], [Password], [ActiveKey], [ResetPasswordKey], [LastLogin], [IsActive], [LevelId], [ConfirmPhoneNumber], [Avatar], [Coin], [Package]) VALUES (16, N'test', N'0962965924', N'test@gmail.com', NULL, NULL, N'test12345', N'Taz@12345', NULL, NULL, NULL, 1, 3, 1, N'a1.jpg', 0, 0)
INSERT [dbo].[AGENT] ([Id], [AgentName], [PhoneNumber], [Email], [Facebook], [Zalo], [LoginName], [Password], [ActiveKey], [ResetPasswordKey], [LastLogin], [IsActive], [LevelId], [ConfirmPhoneNumber], [Avatar], [Coin], [Package]) VALUES (17, N'test', N'0962965924', N'test@gmail.com', NULL, NULL, N'test12345', N'Taz@12345', NULL, NULL, NULL, 1, 3, 1, N'a1.jpg', 0, 0)
INSERT [dbo].[AGENT] ([Id], [AgentName], [PhoneNumber], [Email], [Facebook], [Zalo], [LoginName], [Password], [ActiveKey], [ResetPasswordKey], [LastLogin], [IsActive], [LevelId], [ConfirmPhoneNumber], [Avatar], [Coin], [Package]) VALUES (18, N'test', N'0962965924', N'test@gmail.com', NULL, NULL, N'test6839', N'Taz@12345', NULL, NULL, NULL, 1, 3, 1, N'a1.jpg', 0, 0)
INSERT [dbo].[AGENT] ([Id], [AgentName], [PhoneNumber], [Email], [Facebook], [Zalo], [LoginName], [Password], [ActiveKey], [ResetPasswordKey], [LastLogin], [IsActive], [LevelId], [ConfirmPhoneNumber], [Avatar], [Coin], [Package]) VALUES (19, N'test', N'0962965924', N'test@gmail.com', NULL, NULL, N'test510251', N'Taz@12345', NULL, NULL, NULL, 1, 3, 1, N'a1.jpg', 0, 0)
INSERT [dbo].[AGENT] ([Id], [AgentName], [PhoneNumber], [Email], [Facebook], [Zalo], [LoginName], [Password], [ActiveKey], [ResetPasswordKey], [LastLogin], [IsActive], [LevelId], [ConfirmPhoneNumber], [Avatar], [Coin], [Package]) VALUES (20, N'test', N'0962965924', N'test@gmail.com', NULL, NULL, N'test495985', N'Taz@12345', NULL, NULL, NULL, 1, 3, 1, N'a1.jpg', 0, 0)
INSERT [dbo].[AGENT] ([Id], [AgentName], [PhoneNumber], [Email], [Facebook], [Zalo], [LoginName], [Password], [ActiveKey], [ResetPasswordKey], [LastLogin], [IsActive], [LevelId], [ConfirmPhoneNumber], [Avatar], [Coin], [Package]) VALUES (21, N'Taz@12345', N'72119033', N'newInfo_698281', N'newInfo_698281', N'newInfo_698281', N'test403234', N'abc@98765', NULL, NULL, NULL, 1, 3, 1, N'a1.jpg', 0, 0)
INSERT [dbo].[AGENT] ([Id], [AgentName], [PhoneNumber], [Email], [Facebook], [Zalo], [LoginName], [Password], [ActiveKey], [ResetPasswordKey], [LastLogin], [IsActive], [LevelId], [ConfirmPhoneNumber], [Avatar], [Coin], [Package]) VALUES (22, N'test759777', N'0962965924', N'test@gmail.com', NULL, NULL, N'test759777', N'Taz@12345', NULL, NULL, NULL, 1, 3, 1, N'a1.jpg', 0, 0)
INSERT [dbo].[AGENT] ([Id], [AgentName], [PhoneNumber], [Email], [Facebook], [Zalo], [LoginName], [Password], [ActiveKey], [ResetPasswordKey], [LastLogin], [IsActive], [LevelId], [ConfirmPhoneNumber], [Avatar], [Coin], [Package]) VALUES (23, N'test522560', N'0962965924', N'test@gmail.com', NULL, NULL, N'test522560', N'Taz@12345', NULL, NULL, NULL, 1, 3, 1, N'a1.jpg', 0, 0)
INSERT [dbo].[AGENT] ([Id], [AgentName], [PhoneNumber], [Email], [Facebook], [Zalo], [LoginName], [Password], [ActiveKey], [ResetPasswordKey], [LastLogin], [IsActive], [LevelId], [ConfirmPhoneNumber], [Avatar], [Coin], [Package]) VALUES (24, N'test350973', N'0962965924', N'test@gmail.com', NULL, NULL, N'test350973', N'Taz@12345', NULL, NULL, NULL, 1, 3, 1, N'a1.jpg', 0, 0)
INSERT [dbo].[AGENT] ([Id], [AgentName], [PhoneNumber], [Email], [Facebook], [Zalo], [LoginName], [Password], [ActiveKey], [ResetPasswordKey], [LastLogin], [IsActive], [LevelId], [ConfirmPhoneNumber], [Avatar], [Coin], [Package]) VALUES (25, N'test448039', N'0962965924', N'test@gmail.com', NULL, NULL, N'test448039', N'Taz@12345', NULL, NULL, NULL, 1, 3, 1, N'a1.jpg', 0, 0)
INSERT [dbo].[AGENT] ([Id], [AgentName], [PhoneNumber], [Email], [Facebook], [Zalo], [LoginName], [Password], [ActiveKey], [ResetPasswordKey], [LastLogin], [IsActive], [LevelId], [ConfirmPhoneNumber], [Avatar], [Coin], [Package]) VALUES (26, N'test480953', N'0962965924', N'test@gmail.com', NULL, NULL, N'test480953', N'Taz@12345', NULL, NULL, NULL, 1, 3, 1, N'a1.jpg', 0, 0)
INSERT [dbo].[AGENT] ([Id], [AgentName], [PhoneNumber], [Email], [Facebook], [Zalo], [LoginName], [Password], [ActiveKey], [ResetPasswordKey], [LastLogin], [IsActive], [LevelId], [ConfirmPhoneNumber], [Avatar], [Coin], [Package]) VALUES (27, N'12345', N'0962965924', N'a@gmail.com', NULL, NULL, N'12345', N'123456789', NULL, NULL, NULL, 1, 3, 1, N'a1.jpg', 0, 0)
SET IDENTITY_INSERT [dbo].[AGENT] OFF
GO
SET IDENTITY_INSERT [dbo].[CITY] ON 

INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (1, N'Hồ Chí Minh')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (2, N'Hà Nội')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (3, N'Đà Nẵng')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (4, N'Bình Dương')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (5, N'Đồng Nai')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (6, N'Khánh Hòa')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (7, N'Hải Phòng')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (8, N'Long An')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (9, N'Quảng Nam')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (10, N'Bà Rịa Vũng Tàu')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (11, N'Đắk Lắk')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (12, N'Cần Thơ')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (13, N'Bình Thuận')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (14, N'Lâm Đồng')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (15, N'Thừa Thiên Huế')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (16, N'Kiên Giang')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (17, N'Bắc Ninh')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (18, N'Quảng Ninh')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (19, N'Thanh Hóa')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (20, N'Nghệ An')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (21, N'Hải Dương')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (22, N'Gia Lai')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (23, N'Bình Phước')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (24, N'Hưng Yên')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (25, N'Bình Định')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (26, N'Tiền Giang')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (27, N'Thái Bình')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (28, N'Bắc Giang')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (29, N'Hòa Bình')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (30, N'An Giang')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (31, N'Vĩnh Phúc')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (32, N'Tây Ninh')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (33, N'Thái Nguyên')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (34, N'Lào Cai')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (35, N'Nam Định')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (36, N'Quảng Ngãi')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (37, N'Bến Tre')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (38, N'Đắk Nông')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (39, N'Cà Mau')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (40, N'Vĩnh Long')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (41, N'Ninh Bình')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (42, N'Phú Thọ')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (43, N'Ninh Thuận')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (44, N'Phú Yên')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (45, N'Hà Nam')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (46, N'Hà Tĩnh')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (47, N'Đồng Tháp')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (48, N'Sóc Trăng')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (49, N'Kon Tum')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (50, N'Quảng Bình')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (51, N'Quảng Trị')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (52, N'Trà Vinh')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (53, N'Hậu Giang')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (54, N'Sơn La')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (55, N'Bạc Liêu')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (56, N'Yên Bái')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (57, N'Tuyên Quang')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (58, N'Điện Biên')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (59, N'Lai Châu')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (60, N'Lạng Sơn')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (61, N'Hà Giang')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (62, N'Bắc Kạn')
INSERT [dbo].[CITY] ([Id], [CityName]) VALUES (63, N'Cao Bằng')
SET IDENTITY_INSERT [dbo].[CITY] OFF
GO
SET IDENTITY_INSERT [dbo].[DISTRICT] ON 

INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (1, N'Bình Chánh', 1)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (2, N'Bình Tân', 1)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (3, N'Bình Thạnh', 1)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (4, N'Cần Giờ', 1)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (5, N'Củ Chi', 1)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (6, N'Gò Vấp', 1)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (7, N'Hóc Môn', 1)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (8, N'Nhà Bè', 1)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (9, N'Phú Nhuận', 1)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (10, N'Quận 1', 1)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (11, N'Quận 10', 1)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (12, N'Quận 11', 1)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (13, N'Quận 12', 1)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (14, N'Quận 2', 1)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (15, N'Quận 3', 1)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (16, N'Quận 4', 1)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (17, N'Quận 5', 1)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (18, N'Quận 6', 1)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (19, N'Quận 7', 1)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (20, N'Quận 8', 1)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (21, N'Quận 9', 1)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (22, N'Tân Bình', 1)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (23, N'Tân Phú', 1)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (24, N'Thủ Đức', 1)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (25, N'Ba Đình', 2)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (26, N'Ba Vì', 2)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (27, N'Bắc Từ Liêm', 2)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (28, N'Cầu Giấy', 2)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (29, N'Chương Mỹ', 2)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (30, N'Đan Phượng', 2)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (31, N'Đông Anh', 2)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (32, N'Đống Đa', 2)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (33, N'Gia Lâm', 2)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (34, N'Hà Đông', 2)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (35, N'Hai Bà Trưng', 2)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (36, N'Hoài Đức', 2)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (37, N'Hoàn Kiếm', 2)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (38, N'Hoàng Mai', 2)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (39, N'Long Biên', 2)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (40, N'Mê Linh', 2)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (41, N'Mỹ Đức', 2)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (42, N'Nam Từ Liêm', 2)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (43, N'Phú Xuyên', 2)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (44, N'Phúc Thọ', 2)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (45, N'Quốc Oai', 2)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (46, N'Sóc Sơn', 2)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (47, N'Sơn Tây', 2)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (48, N'Tây Hồ', 2)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (49, N'Thạch Thất', 2)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (50, N'Thanh Oai', 2)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (51, N'Thanh Trì', 2)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (52, N'Thanh Xuân', 2)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (53, N'Thường Tín', 2)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (54, N'Ứng Hòa', 2)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (55, N'Cẩm Lệ', 3)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (56, N'Hải Châu', 3)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (57, N'Hòa Vang', 3)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (58, N'Hoàng Sa', 3)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (59, N'Liên Chiểu', 3)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (60, N'Ngũ Hành Sơn', 3)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (61, N'Sơn Trà', 3)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (62, N'Thanh Khê', 3)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (63, N'Bàu Bàng', 4)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (64, N'Bến Cát', 4)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (65, N'Dầu Tiếng', 4)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (66, N'Dĩ An', 4)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (67, N'Phú Giáo', 4)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (68, N'Tân Uyên', 4)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (69, N'Thủ Dầu Một', 4)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (70, N'Thuận An', 4)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (71, N'Biên Hòa', 5)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (72, N'Cẩm Mỹ', 5)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (73, N'Định Quán', 5)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (74, N'Long Khánh', 5)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (75, N'Long Thành', 5)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (76, N'Nhơn Trạch', 5)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (77, N'Tân Phú', 5)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (78, N'Thống Nhất', 5)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (79, N'Trảng Bom', 5)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (80, N'Vĩnh Cửu', 5)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (81, N'Xuân Lộc', 5)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (82, N'Cam Lâm', 6)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (83, N'Cam Ranh', 6)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (84, N'Diên Khánh', 6)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (85, N'Khánh Sơn', 6)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (86, N'Khánh Vĩnh', 6)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (87, N'Nha Trang', 6)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (88, N'Ninh Hòa', 6)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (89, N'Trường Sa', 6)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (90, N'Vạn Ninh', 6)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (91, N'An Dương', 7)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (92, N'An Lão', 7)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (93, N'Bạch Long Vĩ', 7)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (94, N'Cát Hải', 7)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (95, N'Đồ Sơn', 7)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (96, N'Dương Kinh', 7)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (97, N'Hải An', 7)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (98, N'Hồng Bàng', 7)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (99, N'Kiến An', 7)
GO
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (100, N'Kiến Thụy', 7)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (101, N'Lê Chân', 7)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (102, N'Ngô Quyền', 7)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (103, N'Thủy Nguyên', 7)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (104, N'Tiên Lãng', 7)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (105, N'Vĩnh Bảo', 7)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (106, N'Bến Lức', 8)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (107, N'Cần Đước', 8)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (108, N'Cần Giuộc', 8)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (109, N'Châu Thành', 8)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (110, N'Đức Hòa', 8)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (111, N'Đức Huệ', 8)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (112, N'Kiến Tường', 8)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (113, N'Mộc Hóa', 8)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (114, N'Tân An', 8)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (115, N'Tân Hưng', 8)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (116, N'Tân Thạnh', 8)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (117, N'Tân Trụ', 8)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (118, N'Thạnh Hóa', 8)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (119, N'Thủ Thừa', 8)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (120, N'Vĩnh Hưng', 8)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (121, N'Bắc Trà My', 9)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (122, N'Đại Lộc', 9)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (123, N'Điện Bàn', 9)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (124, N'Đông Giang', 9)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (125, N'Duy Xuyên', 9)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (126, N'Hiệp Đức', 9)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (127, N'Hội An', 9)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (128, N'Nam Giang', 9)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (129, N'Nam Trà My', 9)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (130, N'Nông Sơn', 9)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (131, N'Núi Thành', 9)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (132, N'Phú Ninh', 9)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (133, N'Phước Sơn', 9)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (134, N'Quế Sơn', 9)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (135, N'Tam Kỳ', 9)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (136, N'Tây Giang', 9)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (137, N'Thăng Bình', 9)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (138, N'Tiên Phước', 9)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (139, N'Bà Rịa', 10)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (140, N'Châu Đức', 10)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (141, N'Côn Đảo', 10)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (142, N'Đất Đỏ', 10)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (143, N'Long Điền', 10)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (144, N'Tân Thành', 10)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (145, N'Vũng Tàu', 10)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (146, N'Xuyên Mộc', 10)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (147, N'Buôn Đôn', 11)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (148, N'Buôn Hồ', 11)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (149, N'Buôn Ma Thuột', 11)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (150, N'Cư Kuin', 11)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (151, N'Cư M gar', 11)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (152, N'Ea H Leo', 11)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (153, N'Ea Kar', 11)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (154, N'Ea Súp', 11)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (155, N'Krông Ana', 11)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (156, N'Krông Bông', 11)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (157, N'Krông Buk', 11)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (158, N'Krông Năng', 11)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (159, N'Krông Pắc', 11)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (160, N'Lăk', 11)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (161, N'M Đrăk', 11)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (162, N'Thới Lai', 12)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (163, N'Bình Thủy', 12)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (164, N'Cái Răng', 12)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (165, N'Cờ Đỏ', 12)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (166, N'Ninh Kiều', 12)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (167, N'Ô Môn', 12)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (168, N'Phong Điền', 12)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (169, N'Thốt Nốt', 12)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (170, N'Vĩnh Thạnh', 12)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (171, N'Bắc Bình', 13)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (172, N'Đảo Phú Quý', 13)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (173, N'Đức Linh', 13)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (174, N'Hàm Tân', 13)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (175, N'Hàm Thuận Bắc', 13)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (176, N'Hàm Thuận Nam', 13)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (177, N'La Gi', 13)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (178, N'Phan Thiết', 13)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (179, N'Tánh Linh', 13)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (180, N'Tuy Phong', 13)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (181, N'Bảo Lâm', 14)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (182, N'Bảo Lộc', 14)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (183, N'Cát Tiên', 14)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (184, N'Đạ Huoai', 14)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (185, N'Đà Lạt', 14)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (186, N'Đạ Tẻh', 14)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (187, N'Đam Rông', 14)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (188, N'Di Linh', 14)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (189, N'Đơn Dương', 14)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (190, N'Đức Trọng', 14)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (191, N'Lạc Dương', 14)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (192, N'Lâm Hà', 14)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (193, N'A Lưới', 15)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (194, N'Huế', 15)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (195, N'Hương Thủy', 15)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (196, N'Hương Trà', 15)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (197, N'Nam Đông', 15)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (198, N'Phong Điền', 15)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (199, N'Phú Lộc', 15)
GO
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (200, N'Phú Vang', 15)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (201, N'Quảng Điền', 15)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (202, N'An Biên', 16)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (203, N'An Minh', 16)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (204, N'Châu Thành', 16)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (205, N'Giang Thành', 16)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (206, N'Giồng Riềng', 16)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (207, N'Gò Quao', 16)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (208, N'Hà Tiên', 16)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (209, N'Hòn Đất', 16)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (210, N'Kiên Hải', 16)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (211, N'Kiên Lương', 16)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (212, N'Phú Quốc', 16)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (213, N'Rạch Giá', 16)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (214, N'Tân Hiệp', 16)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (215, N'U minh Thượng', 16)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (216, N'Vĩnh Thuận', 16)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (217, N'Bắc Ninh', 17)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (218, N'Gia Bình', 17)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (219, N'Lương Tài', 17)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (220, N'Quế Võ', 17)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (221, N'Thuận Thành', 17)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (222, N'Tiên Du', 17)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (223, N'Từ Sơn', 17)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (224, N'Yên Phong', 17)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (225, N'Ba Chẽ', 18)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (226, N'Bình Liêu', 18)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (227, N'Cẩm Phả', 18)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (228, N'Cô Tô', 18)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (229, N'Đầm Hà', 18)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (230, N'Đông Triều', 18)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (231, N'Hạ Long', 18)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (232, N'Hải Hà', 18)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (233, N'Hoành Bồ', 18)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (234, N'Móng Cái', 18)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (235, N'Quảng Yên', 18)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (236, N'Tiên Yên', 18)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (237, N'Uông Bí', 18)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (238, N'Vân Đồn', 18)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (239, N'Bá Thước', 19)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (240, N'Bỉm Sơn', 19)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (241, N'Cẩm Thủy', 19)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (242, N'Đông Sơn', 19)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (243, N'Hà Trung', 19)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (244, N'Hậu Lộc', 19)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (245, N'Hoằng Hóa', 19)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (246, N'Lang Chánh', 19)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (247, N'Mường Lát', 19)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (248, N'Nga Sơn', 19)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (249, N'Ngọc Lặc', 19)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (250, N'Như Thanh', 19)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (251, N'Như Xuân', 19)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (252, N'Nông Cống', 19)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (253, N'Quan Hóa', 19)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (254, N'Quan Sơn', 19)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (255, N'Quảng Xương', 19)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (256, N'Sầm Sơn', 19)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (257, N'Thạch Thành', 19)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (258, N'Thanh Hóa', 19)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (259, N'Thiệu Hóa', 19)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (260, N'Thọ Xuân', 19)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (261, N'Thường Xuân', 19)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (262, N'Tĩnh Gia', 19)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (263, N'Triệu Sơn', 19)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (264, N'Vĩnh Lộc', 19)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (265, N'Yên Định', 19)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (266, N'Anh Sơn', 20)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (267, N'Con Cuông', 20)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (268, N'Cửa Lò', 20)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (269, N'Diễn Châu', 20)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (270, N'Đô Lương', 20)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (271, N'Hoàng Mai', 20)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (272, N'Hưng Nguyên', 20)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (273, N'Kỳ Sơn', 20)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (274, N'Nam Đàn', 20)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (275, N'Nghi Lộc', 20)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (276, N'Nghĩa Đàn', 20)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (277, N'Quế Phong', 20)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (278, N'Quỳ Châu', 20)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (279, N'Quỳ Hợp', 20)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (280, N'Quỳnh Lưu', 20)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (281, N'Tân Kỳ', 20)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (282, N'Thái Hòa', 20)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (283, N'Thanh Chương', 20)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (284, N'Tương Dương', 20)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (285, N'Vinh', 20)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (286, N'Yên Thành', 20)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (287, N'Bình Giang', 21)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (288, N'Cẩm Giàng', 21)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (289, N'Chí Linh', 21)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (290, N'Gia Lộc', 21)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (291, N'Hải Dương', 21)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (292, N'Kim Thành', 21)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (293, N'Kinh Môn', 21)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (294, N'Nam Sách', 21)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (295, N'Ninh Giang', 21)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (296, N'Thanh Hà', 21)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (297, N'Thanh Miện', 21)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (298, N'Tứ Kỳ', 21)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (299, N'An Khê', 22)
GO
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (300, N'AYun Pa', 22)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (301, N'Chư Păh', 22)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (302, N'Chư Pưh', 22)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (303, N'Chư Sê', 22)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (304, N'ChưPRông', 22)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (305, N'Đăk Đoa', 22)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (306, N'Đăk Pơ', 22)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (307, N'Đức Cơ', 22)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (308, N'Ia Grai', 22)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (309, N'Ia Pa', 22)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (310, N'KBang', 22)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (311, N'Kông Chro', 22)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (312, N'Krông Pa', 22)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (313, N'Mang Yang', 22)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (314, N'Phú Thiện', 22)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (315, N'Plei Ku', 22)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (316, N'Bình Long', 23)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (317, N'Bù Đăng', 23)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (318, N'Bù Đốp', 23)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (319, N'Bù Gia Mập', 23)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (320, N'Chơn Thành', 23)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (321, N'Đồng Phú', 23)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (322, N'Đồng Xoài', 23)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (323, N'Hớn Quản', 23)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (324, N'Lộc Ninh', 23)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (325, N'Phú Riềng', 23)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (326, N'Phước Long', 23)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (327, N'Ân Thi', 24)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (328, N'Hưng Yên', 24)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (329, N'Khoái Châu', 24)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (330, N'Kim Động', 24)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (331, N'Mỹ Hào', 24)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (332, N'Phù Cừ', 24)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (333, N'Tiên Lữ', 24)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (334, N'Văn Giang', 24)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (335, N'Văn Lâm', 24)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (336, N'Yên Mỹ', 24)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (337, N'An Lão', 25)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (338, N'An Nhơn', 25)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (339, N'Hoài Ân', 25)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (340, N'Hoài Nhơn', 25)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (341, N'Phù Cát', 25)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (342, N'Phù Mỹ', 25)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (343, N'Quy Nhơn', 25)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (344, N'Tây Sơn', 25)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (345, N'Tuy Phước', 25)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (346, N'Vân Canh', 25)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (347, N'Vĩnh Thạnh', 25)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (348, N'Cái Bè', 26)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (349, N'Cai Lậy', 26)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (350, N'Châu Thành', 26)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (351, N'Chợ Gạo', 26)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (352, N'Gò Công', 26)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (353, N'Gò Công Đông', 26)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (354, N'Gò Công Tây', 26)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (355, N'Huyện Cai Lậy', 26)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (356, N'Mỹ Tho', 26)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (357, N'Tân Phú Đông', 26)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (358, N'Tân Phước', 26)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (359, N'Đông Hưng', 27)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (360, N'Hưng Hà', 27)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (361, N'Kiến Xương', 27)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (362, N'Quỳnh Phụ', 27)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (363, N'Thái Bình', 27)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (364, N'Thái Thuỵ', 27)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (365, N'Tiền Hải', 27)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (366, N'Vũ Thư', 27)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (367, N'Bắc Giang', 28)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (368, N'Hiệp Hòa', 28)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (369, N'Lạng Giang', 28)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (370, N'Lục Nam', 28)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (371, N'Lục Ngạn', 28)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (372, N'Sơn Động', 28)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (373, N'Tân Yên', 28)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (374, N'Việt Yên', 28)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (375, N'Yên Dũng', 28)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (376, N'Yên Thế', 28)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (377, N'Cao Phong', 29)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (378, N'Đà Bắc', 29)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (379, N'Hòa Bình', 29)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (380, N'Kim Bôi', 29)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (381, N'Kỳ Sơn', 29)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (382, N'Lạc Sơn', 29)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (383, N'Lạc Thủy', 29)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (384, N'Lương Sơn', 29)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (385, N'Mai Châu', 29)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (386, N'Tân Lạc', 29)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (387, N'Yên Thủy', 29)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (388, N'An Phú', 30)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (389, N'Châu Đốc', 30)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (390, N'Châu Phú', 30)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (391, N'Châu Thành', 30)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (392, N'Chợ Mới', 30)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (393, N'Long Xuyên', 30)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (394, N'Phú Tân', 30)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (395, N'Tân Châu', 30)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (396, N'Thoại Sơn', 30)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (397, N'Tịnh Biên', 30)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (398, N'Tri Tôn', 30)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (399, N'Bình Xuyên', 31)
GO
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (400, N'Lập Thạch', 31)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (401, N'Phúc Yên', 31)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (402, N'Sông Lô', 31)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (403, N'Tam Đảo', 31)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (404, N'Tam Dương', 31)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (405, N'Vĩnh Tường', 31)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (406, N'Vĩnh Yên', 31)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (407, N'Yên Lạc', 31)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (408, N'Bến Cầu', 32)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (409, N'Châu Thành', 32)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (410, N'Dương Minh Châu', 32)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (411, N'Gò Dầu', 32)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (412, N'Hòa Thành', 32)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (413, N'Tân Biên', 32)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (414, N'Tân Châu', 32)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (415, N'Tây Ninh', 32)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (416, N'Trảng Bàng', 32)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (417, N'Đại Từ', 33)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (418, N'Định Hóa', 33)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (419, N'Đồng Hỷ', 33)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (420, N'Phổ Yên', 33)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (421, N'Phú Bình', 33)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (422, N'Phú Lương', 33)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (423, N'Sông Công', 33)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (424, N'Thái Nguyên', 33)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (425, N'Võ Nhai', 33)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (426, N'Bắc Hà', 34)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (427, N'Bảo Thắng', 34)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (428, N'Bảo Yên', 34)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (429, N'Bát Xát', 34)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (430, N'Lào Cai', 34)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (431, N'Mường Khương', 34)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (432, N'Sa Pa', 34)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (433, N'Văn Bàn', 34)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (434, N'Xi Ma Cai', 34)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (435, N'Giao Thủy', 35)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (436, N'Hải Hậu', 35)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (437, N'Mỹ Lộc', 35)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (438, N'Nam Định', 35)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (439, N'Nam Trực', 35)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (440, N'Nghĩa Hưng', 35)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (441, N'Trực Ninh', 35)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (442, N'Vụ Bản', 35)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (443, N'Xuân Trường', 35)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (444, N'Ý Yên', 35)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (445, N'Ba Tơ', 36)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (446, N'Bình Sơn', 36)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (447, N'Đức Phổ', 36)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (448, N'Lý Sơn', 36)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (449, N'Minh Long', 36)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (450, N'Mộ Đức', 36)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (451, N'Nghĩa Hành', 36)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (452, N'Quảng Ngãi', 36)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (453, N'Sơn Hà', 36)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (454, N'Sơn Tây', 36)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (455, N'Sơn Tịnh', 36)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (456, N'Tây Trà', 36)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (457, N'Trà Bồng', 36)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (458, N'Tư Nghĩa', 36)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (459, N'Ba Tri', 37)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (460, N'Bến Tre', 37)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (461, N'Bình Đại', 37)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (462, N'Châu Thành', 37)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (463, N'Chợ Lách', 37)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (464, N'Giồng Trôm', 37)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (465, N'Mỏ Cày Bắc', 37)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (466, N'Mỏ Cày Nam', 37)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (467, N'Thạnh Phú', 37)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (468, N'Cư Jút', 38)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (469, N'Dăk GLong', 38)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (470, N'Dăk Mil', 38)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (471, N'Dăk R Lấp', 38)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (472, N'Dăk Song', 38)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (473, N'Gia Nghĩa', 38)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (474, N'Krông Nô', 38)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (475, N'Tuy Đức', 38)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (476, N'Cà Mau', 39)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (477, N'Cái Nước', 39)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (478, N'Đầm Dơi', 39)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (479, N'Năm Căn', 39)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (480, N'Ngọc Hiển', 39)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (481, N'Phú Tân', 39)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (482, N'Thới Bình', 39)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (483, N'Trần Văn Thời', 39)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (484, N'U Minh', 39)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (485, N'Bình Minh', 40)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (486, N'Bình Tân', 40)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (487, N'Long Hồ', 40)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (488, N'Mang Thít', 40)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (489, N'Tam Bình', 40)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (490, N'Trà Ôn', 40)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (491, N'Vĩnh Long', 40)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (492, N'Vũng Liêm', 40)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (493, N'Gia Viễn', 41)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (494, N'Hoa Lư', 41)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (495, N'Kim Sơn', 41)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (496, N'Nho Quan', 41)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (497, N'Ninh Bình', 41)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (498, N'Tam Điệp', 41)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (499, N'Yên Khánh', 41)
GO
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (500, N'Yên Mô', 41)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (501, N'Cẩm Khê', 42)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (502, N'Đoan Hùng', 42)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (503, N'Hạ Hòa', 42)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (504, N'Lâm Thao', 42)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (505, N'Phù Ninh', 42)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (506, N'Phú Thọ', 42)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (507, N'Tam Nông', 42)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (508, N'Tân Sơn', 42)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (509, N'Thanh Ba', 42)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (510, N'Thanh Sơn', 42)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (511, N'Thanh Thủy', 42)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (512, N'Việt Trì', 42)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (513, N'Yên Lập', 42)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (514, N'Bác Ái', 43)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (515, N'Ninh Hải', 43)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (516, N'Ninh Phước', 43)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (517, N'Ninh Sơn', 43)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (518, N'Phan Rang - Tháp Chàm', 43)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (519, N'Thuận Bắc', 43)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (520, N'Thuận Nam', 43)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (521, N'Đông Hòa', 44)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (522, N'Đồng Xuân', 44)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (523, N'Phú Hòa', 44)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (524, N'Sơn Hòa', 44)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (525, N'Sông Cầu', 44)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (526, N'Sông Hinh', 44)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (527, N'Tây Hòa', 44)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (528, N'Tuy An', 44)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (529, N'Tuy Hòa', 44)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (530, N'Bình Lục', 45)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (531, N'Duy Tiên', 45)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (532, N'Kim Bảng', 45)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (533, N'Lý Nhân', 45)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (534, N'Phủ Lý', 45)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (535, N'Thanh Liêm', 45)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (536, N'Cẩm Xuyên', 46)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (537, N'Can Lộc', 46)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (538, N'Đức Thọ', 46)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (539, N'Hà Tĩnh', 46)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (540, N'Hồng Lĩnh', 46)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (541, N'Hương Khê', 46)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (542, N'Hương Sơn', 46)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (543, N'Kỳ Anh', 46)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (544, N'Lộc Hà', 46)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (545, N'Nghi Xuân', 46)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (546, N'Thạch Hà', 46)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (547, N'Vũ Quang', 46)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (548, N'Cao Lãnh', 47)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (549, N'Châu Thành', 47)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (550, N'Hồng Ngự', 47)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (551, N'Huyện Cao Lãnh', 47)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (552, N'Huyện Hồng Ngự', 47)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (553, N'Lai Vung', 47)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (554, N'Lấp Vò', 47)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (555, N'Sa Đéc', 47)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (556, N'Tam Nông', 47)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (557, N'TâNNn Hồng', 47)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (558, N'Thanh Bình', 47)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (559, N'Tháp Mười', 47)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (560, N'Châu Thành', 48)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (561, N'Cù Lao Dung', 48)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (562, N'Kế Sách', 48)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (563, N'Long Phú', 48)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (564, N'Mỹ Tú', 48)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (565, N'Mỹ Xuyên', 48)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (566, N'Ngã Năm', 48)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (567, N'Sóc Trăng', 48)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (568, N'Thạnh Trị', 48)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (569, N'Trần Đề', 48)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (570, N'Vĩnh Châu', 48)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (571, N'Đăk Glei', 49)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (572, N'Đăk Hà', 49)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (573, N'Đăk Tô', 49)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (574, N'Ia H Drai', 49)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (575, N'Kon Plông', 49)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (576, N'Kon Rẫy', 49)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (577, N'KonTum', 49)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (578, N'Ngọc Hồi', 49)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (579, N'Sa Thầy', 49)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (580, N'Tu Mơ Rông', 49)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (581, N'Ba Đồn', 50)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (582, N'Bố Trạch', 50)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (583, N'Đồng Hới', 50)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (584, N'Lệ Thủy', 50)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (585, N'Minh Hóa', 50)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (586, N'Quảng Ninh', 50)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (587, N'Quảng Trạch', 50)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (588, N'Tuyên Hóa', 50)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (589, N'Cam Lộ', 51)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (590, N'Đa Krông', 51)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (591, N'Đảo Cồn cỏ', 51)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (592, N'Đông Hà', 51)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (593, N'Gio Linh', 51)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (594, N'Hải Lăng', 51)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (595, N'Hướng Hóa', 51)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (596, N'Quảng Trị', 51)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (597, N'Triệu Phong', 51)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (598, N'Vĩnh Linh', 51)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (599, N'Càng Long', 52)
GO
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (600, N'Cầu Kè', 52)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (601, N'Cầu Ngang', 52)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (602, N'Châu Thành', 52)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (603, N'Duyên Hải', 52)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (604, N'Tiểu Cần', 52)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (605, N'Trà Cú', 52)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (606, N'Trà Vinh', 52)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (607, N'Châu Thành', 53)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (608, N'Châu Thành A', 53)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (609, N'Long Mỹ', 53)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (610, N'Ngã Bảy', 53)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (611, N'Phụng Hiệp', 53)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (612, N'Vị Thanh', 53)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (613, N'Vị Thủy', 53)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (614, N'Bắc Yên', 54)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (615, N'Mai Sơn', 54)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (616, N'Mộc Châu', 54)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (617, N'Mường La', 54)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (618, N'Phù Yên', 54)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (619, N'Quỳnh Nhai', 54)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (620, N'Sơn La', 54)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (621, N'Sông Mã', 54)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (622, N'Sốp Cộp', 54)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (623, N'Thuận Châu', 54)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (624, N'Vân Hồ', 54)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (625, N'Yên Châu', 54)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (626, N'Bạc Liêu', 55)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (627, N'Đông Hải', 55)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (628, N'Giá Rai', 55)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (629, N'Hòa Bình', 55)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (630, N'Hồng Dân', 55)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (631, N'Phước Long', 55)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (632, N'Vĩnh Lợi', 55)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (633, N'Lục Yên', 56)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (634, N'Mù Cang Chải', 56)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (635, N'Nghĩa Lộ', 56)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (636, N'Trạm Tấu', 56)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (637, N'Trấn Yên', 56)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (638, N'Văn Chấn', 56)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (639, N'Văn Yên', 56)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (640, N'Yên Bái', 56)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (641, N'Yên Bình', 56)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (642, N'Chiêm Hóa', 57)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (643, N'Hàm Yên', 57)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (644, N'Lâm Bình', 57)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (645, N'Na Hang', 57)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (646, N'Sơn Dương', 57)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (647, N'Tuyên Quang', 57)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (648, N'Yên Sơn', 57)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (649, N'Điện Biên', 58)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (650, N'Điện Biên Đông', 58)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (651, N'Điện Biên Phủ', 58)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (652, N'Mường Ảng', 58)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (653, N'Mường Chà', 58)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (654, N'Mường Lay', 58)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (655, N'Mường Nhé', 58)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (656, N'Nậm Pồ', 58)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (657, N'Tủa Chùa', 58)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (658, N'Tuần Giáo', 58)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (659, N'Lai Châu', 59)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (660, N'Mường Tè', 59)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (661, N'Nậm Nhùn', 59)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (662, N'Phong Thổ', 59)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (663, N'Sìn Hồ', 59)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (664, N'Tam Đường', 59)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (665, N'Tân Uyên', 59)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (666, N'Than Uyên', 59)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (667, N'Bắc Sơn', 60)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (668, N'Bình Gia', 60)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (669, N'Cao Lộc', 60)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (670, N'Chi Lăng', 60)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (671, N'Đình Lập', 60)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (672, N'Hữu Lũng', 60)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (673, N'Lạng Sơn', 60)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (674, N'Lộc Bình', 60)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (675, N'Tràng Định', 60)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (676, N'Văn Lãng', 60)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (677, N'Văn Quan', 60)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (678, N'Bắc Mê', 61)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (679, N'Bắc Quang', 61)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (680, N'Đồng Văn', 61)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (681, N'Hà Giang', 61)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (682, N'Hoàng Su Phì', 61)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (683, N'Mèo Vạc', 61)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (684, N'Quản Bạ', 61)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (685, N'Quang Bình', 61)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (686, N'Vị Xuyên', 61)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (687, N'Xín Mần', 61)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (688, N'Yên Minh', 61)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (689, N'Ba Bể', 62)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (690, N'Bắc Kạn', 62)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (691, N'Bạch Thông', 62)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (692, N'Chợ Đồn', 62)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (693, N'Chợ Mới', 62)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (694, N'Na Rì', 62)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (695, N'Ngân Sơn', 62)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (696, N'Pác Nặm', 62)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (697, N'Bảo Lạc', 63)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (698, N'Bảo Lâm', 63)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (699, N'Cao Bằng', 63)
GO
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (700, N'Hạ Lang', 63)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (701, N'Hà Quảng', 63)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (702, N'Hòa An', 63)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (703, N'Nguyên Bình', 63)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (704, N'Phục Hòa', 63)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (705, N'Quảng Uyên', 63)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (706, N'Thạch An', 63)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (707, N'Thông Nông', 63)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (708, N'Trà Lĩnh', 63)
INSERT [dbo].[DISTRICT] ([Id], [DistrictName], [CityId]) VALUES (709, N'Trùng Khánh', 63)
SET IDENTITY_INSERT [dbo].[DISTRICT] OFF
GO
SET IDENTITY_INSERT [dbo].[HistoryPayment] ON 

INSERT [dbo].[HistoryPayment] ([PaymentID], [AgentID], [Coin], [PaymentDate]) VALUES (1, 6, 10000, CAST(N'2023-07-06T22:25:21.253' AS DateTime))
INSERT [dbo].[HistoryPayment] ([PaymentID], [AgentID], [Coin], [PaymentDate]) VALUES (2, 6, 1000000, CAST(N'2023-07-06T22:28:08.520' AS DateTime))
INSERT [dbo].[HistoryPayment] ([PaymentID], [AgentID], [Coin], [PaymentDate]) VALUES (3, 6, 30000000, CAST(N'2023-07-06T22:28:45.193' AS DateTime))
INSERT [dbo].[HistoryPayment] ([PaymentID], [AgentID], [Coin], [PaymentDate]) VALUES (4, 6, 1000000, CAST(N'2023-07-07T00:11:25.610' AS DateTime))
INSERT [dbo].[HistoryPayment] ([PaymentID], [AgentID], [Coin], [PaymentDate]) VALUES (5, 12, 1000000, CAST(N'2023-07-10T15:09:43.780' AS DateTime))
INSERT [dbo].[HistoryPayment] ([PaymentID], [AgentID], [Coin], [PaymentDate]) VALUES (6, 9, 1000000, CAST(N'2023-07-11T13:29:46.743' AS DateTime))
INSERT [dbo].[HistoryPayment] ([PaymentID], [AgentID], [Coin], [PaymentDate]) VALUES (7, 13, 20000, CAST(N'2023-07-17T22:09:42.593' AS DateTime))
SET IDENTITY_INSERT [dbo].[HistoryPayment] OFF
GO
SET IDENTITY_INSERT [dbo].[LEVEL] ON 

INSERT [dbo].[LEVEL] ([Id], [LevelName]) VALUES (1, N'1')
INSERT [dbo].[LEVEL] ([Id], [LevelName]) VALUES (2, N'2')
INSERT [dbo].[LEVEL] ([Id], [LevelName]) VALUES (3, N'0')
SET IDENTITY_INSERT [dbo].[LEVEL] OFF
GO
SET IDENTITY_INSERT [dbo].[MAP] ON 

INSERT [dbo].[MAP] ([Id], [Address], [Latitude], [Longtitude], [WardId], [DistrictId], [CityId], [RealEstateId]) VALUES (27, N'Đường Thích Quảng Đức, Phường 5, Phú Nhuận, Hồ Chí Minh', CAST(10.805276 AS Decimal(9, 6)), CAST(106.682525 AS Decimal(9, 6)), NULL, NULL, NULL, 29)
INSERT [dbo].[MAP] ([Id], [Address], [Latitude], [Longtitude], [WardId], [DistrictId], [CityId], [RealEstateId]) VALUES (28, N'Sunrise City, Đường Nguyễn Hữu Thọ, Khu đô thị Sunrise City, Tân Hưng, Quận 7, Thành phố Hồ Chí Minh, Việt Nam', CAST(10.741308 AS Decimal(9, 6)), CAST(106.700594 AS Decimal(9, 6)), NULL, 19, 1, 30)
INSERT [dbo].[MAP] ([Id], [Address], [Latitude], [Longtitude], [WardId], [DistrictId], [CityId], [RealEstateId]) VALUES (29, N'Vinhomes Central Park, Phường 22, Bình Thạnh, Thành phố Hồ Chí Minh, Việt Nam', CAST(10.794751 AS Decimal(9, 6)), CAST(106.721990 AS Decimal(9, 6)), NULL, 3, 1, 31)
INSERT [dbo].[MAP] ([Id], [Address], [Latitude], [Longtitude], [WardId], [DistrictId], [CityId], [RealEstateId]) VALUES (30, N'Vinhomes Ocean Park, tt. Trâu Quỳ, Gia Lâm, Hà Nội, Việt Nam', CAST(21.001246 AS Decimal(9, 6)), CAST(105.944819 AS Decimal(9, 6)), NULL, NULL, 1, 32)
INSERT [dbo].[MAP] ([Id], [Address], [Latitude], [Longtitude], [WardId], [DistrictId], [CityId], [RealEstateId]) VALUES (31, N'ECO GREEN SAIGON, Đường Nguyễn Văn Linh, Tân Thuận Tây, Quận 7, Thành phố Hồ Chí Minh, Việt Nam', CAST(10.749050 AS Decimal(9, 6)), CAST(106.724136 AS Decimal(9, 6)), NULL, 19, 1, 33)
INSERT [dbo].[MAP] ([Id], [Address], [Latitude], [Longtitude], [WardId], [DistrictId], [CityId], [RealEstateId]) VALUES (32, N'Nguyễn Phước Lan, Hòa Xuân, Cẩm Lệ, Đà Nẵng, Việt Nam', CAST(16.011195 AS Decimal(9, 6)), CAST(108.240330 AS Decimal(9, 6)), NULL, 55, 3, 34)
INSERT [dbo].[MAP] ([Id], [Address], [Latitude], [Longtitude], [WardId], [DistrictId], [CityId], [RealEstateId]) VALUES (33, N'Bcons Plaza, Đường Thống Nhất, Đông Hòa, Dĩ An, Bình Dương, Việt Nam', CAST(10.893120 AS Decimal(9, 6)), CAST(106.791904 AS Decimal(9, 6)), NULL, 66, 4, 35)
INSERT [dbo].[MAP] ([Id], [Address], [Latitude], [Longtitude], [WardId], [DistrictId], [CityId], [RealEstateId]) VALUES (36, N'dâdadasdsad', NULL, NULL, NULL, NULL, 1, 38)
INSERT [dbo].[MAP] ([Id], [Address], [Latitude], [Longtitude], [WardId], [DistrictId], [CityId], [RealEstateId]) VALUES (47, N'Cầu Rồng Đà Nẵng, An Hải, An Hải Tây, Sơn Trà, Đà Nẵng, Việt Nam', NULL, NULL, NULL, 61, 3, 49)
INSERT [dbo].[MAP] ([Id], [Address], [Latitude], [Longtitude], [WardId], [DistrictId], [CityId], [RealEstateId]) VALUES (48, N'Tọa độ 42530845, An Hải, An Hải Tây, Sơn Trà, Đà Nẵng, Việt Nam', NULL, NULL, NULL, 61, 3, 50)
INSERT [dbo].[MAP] ([Id], [Address], [Latitude], [Longtitude], [WardId], [DistrictId], [CityId], [RealEstateId]) VALUES (49, N'Tọa độ 10888597, An Hải, An Hải Tây, Sơn Trà, Đà Nẵng, Việt Nam', NULL, NULL, NULL, 61, 3, 51)
INSERT [dbo].[MAP] ([Id], [Address], [Latitude], [Longtitude], [WardId], [DistrictId], [CityId], [RealEstateId]) VALUES (50, N'Tọa độ 23871685, An Hải, An Hải Tây, Sơn Trà, Đà Nẵng, Việt Nam', NULL, NULL, NULL, 61, 3, 52)
INSERT [dbo].[MAP] ([Id], [Address], [Latitude], [Longtitude], [WardId], [DistrictId], [CityId], [RealEstateId]) VALUES (51, N'Tọa độ 57844755, An Hải, An Hải Tây, Sơn Trà, Đà Nẵng, Việt Nam', NULL, NULL, NULL, 61, 3, 53)
INSERT [dbo].[MAP] ([Id], [Address], [Latitude], [Longtitude], [WardId], [DistrictId], [CityId], [RealEstateId]) VALUES (52, N'Tọa độ 95871237, An Hải, An Hải Tây, Sơn Trà, Đà Nẵng, Việt Nam', NULL, NULL, NULL, 61, 3, 54)
INSERT [dbo].[MAP] ([Id], [Address], [Latitude], [Longtitude], [WardId], [DistrictId], [CityId], [RealEstateId]) VALUES (53, N'Tọa độ 12156006, An Hải, An Hải Tây, Sơn Trà, Đà Nẵng, Việt Nam', NULL, NULL, NULL, 61, 3, 55)
INSERT [dbo].[MAP] ([Id], [Address], [Latitude], [Longtitude], [WardId], [DistrictId], [CityId], [RealEstateId]) VALUES (54, N'Tọa độ 73053894, An Hải, An Hải Tây, Sơn Trà, Đà Nẵng, Việt Nam', NULL, NULL, NULL, 61, 3, 56)
INSERT [dbo].[MAP] ([Id], [Address], [Latitude], [Longtitude], [WardId], [DistrictId], [CityId], [RealEstateId]) VALUES (57, N'Tọa độ 54116949, An Hải, An Hải Tây, Sơn Trà, Đà Nẵng, Việt Nam', NULL, NULL, NULL, 61, 3, 59)
SET IDENTITY_INSERT [dbo].[MAP] OFF
GO
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([id], [Title], [NewsBody], [AgentId]) VALUES (11, N'Bất động sản nghỉ dưỡng khó “lội ngược dòng” trong thời gian ngắn', N'Mặc dù Chính phủ đã ban hành hàng loạt chính sách gỡ vướng, ngành du lịch phục hồi nhưng thị trường bất động sản nghỉ dưỡng vẫn chưa hồi phục như kỳ vọng. Bất động sản nghỉ dưỡng vẫn "đóng băng"

Trao đổi với PV Báo Lao Động, ông Nguyễn Thế Điệp - Phó Chủ tịch Câu lạc bộ Bất động sản Hà Nội - cho biết, đầu năm 2023, Chính phủ đã ban hành một loạt các chính sách gỡ vướng cho thị trường bất động sản. Đặc biệt việc cấp sổ hồng cho condotel giúp minh bạch pháp lý, là tín hiệu tích cực, song chưa đủ vực dậy thị trường bất động sản nghỉ dưỡng đang đóng băng, theo chuyên gia.

"Nền kinh tế của thế giới gặp khó khăn, niềm tin vào thị trường bất động sản sụt giảm. Phân khúc bất động sản nghỉ dưỡng cũng khó thu hút nhà đầu tư. Ngoài ra, phân khúc này cũng đang gặp trở ngại về vấn đề pháp lý khiến tâm lý nhà đầu tư không thực sự hào hứng, chủ đầu tư chậm ra hàng. Hiện nay hạ tầng, dịch vụ chưa thực sự tốt để thu hút, giữ chân khách du lịch. Đây là những nguyên nhân chủ yếu khiến phân khúc bất động sản nghỉ dưỡng vẫn chưa "tan băng" - ông Nguyễn Thế Điệp nhận định.

Khung pháp lý chưa đầy đủ

Theo ông Nguyễn Võ Hùng bất động sản nghỉ dưỡng kiểu mới chưa có đầy đủ khung pháp lý. Vị chuyên gia này cho biết, hiện nay nhiều nhà đầu tư bất động sản chuyên nghiệp đã rời khỏi phân khúc bất động sản nhà ở để chuyển sang đầu tư vào phân khúc bất động sản du lịch, nghỉ dưỡng kiểu mới. Bất động sản du lịch, nghỉ dưỡng kiểu mới là một dự án đa công năng. Nhà đầu tư có thể bán từng phần dự án cho các nhà đầu tư cá nhân.

“Loại hình bất động sản du lịch, nghỉ dưỡng kiểu cũ đã có khung pháp luật đầy đủ trong Luật Đất đai 2013 và Luật Kinh doanh Bất động sản 2014. Nhưng bất động sản du lịch, nghỉ dưỡng kiểu mới chưa có khung pháp luật cần thiết. Ví dụ một toà nhà cao tầng, trong đó các phần sử dụng vào mục đích sản xuất thủ công nghiệp, mục đích kinh doanh, dịch vụ và để ở. Cần có quy định để xác định cụ thể để xác định loại đất ở khu vực này là đất ở, đất sản xuất hay đất kinh doanh” - GS.TSKH Đặng Hùng Võ nhận định.

Đồng thời, GS.TSKH Đặng Hùng Võ cho biết, phương thức khai thác các bất động du lịch, nghỉ dưỡng kiểu mới là nhà đầu tư cá nhân ủy nhiệm khai thác cho các chủ đầu tư dự án để nhận lại lợi nhuận theo cam kết. Dự án muốn thu hút được nhiều nhà đầu tư cá nhân phải cam kết lợi nhuận ngày càng cao. Trên thực tế, lợi nhuận được cam kết từ 8 - 15% trên năm. Cam kết lợi nhuận ở mức 8%/năm đã khó thực hiện trong những năm đầu khai thác. Khi “phong trào” đầu tư này lên cao, nhà đầu tư dự án thường lấy lợi ích từ bán sản phẩm hình thành trong tương lai của dự án này để trả cho lợi nhuận khai thác của dự án trước. Khi dự án bất động sản du lịch, nghỉ dưỡng kiểu mới để lộ ra các nhược điểm làm mất dần tính thanh khoản, nhà đầu tư cá nhân “quay lưng” với phân khúc này.

Theo báo cáo thị trường bất động sản Việt Nam quý II/2023 của Hiệp hội Môi giới Bất động sản Việt Nam nguồn cung bất động sản nghỉ dưỡng tiếp tục đà giảm ở quý 2. Tổng cung quý 2 chỉ bằng 55% so với quý 1, giảm tới 90% so với cùng kỳ năm 2022.

Trong 6 tháng đầu năm 2023, tổng cung bất động sản du lịch nghỉ dưỡng cũng ghi nhận mức giảm kỷ lục tới 90% so với cùng kỳ năm 2022. Tỉ lệ giao dịch quý 2 giảm 97% so với cùng kỳ năm 2022 nhưng đã ghi nhận mức tăng trưởng gần như gấp đôi so vơi quý I/2023. Tính tổng 6 tháng đầu năm 2023, tỉ lệ giao dịch giảm khoảng 96% so với cùng kỳ năm 2022.

Các chuyên gia của Hiệp hội Môi giới Bất động sản Việt Nam, Nghị định số 10/2023/NĐ-CP quy định cấp giấy chứng nhận cho condotel đủ điều kiện, giúp vực dậy niềm tin cho bất động sản nghỉ dưỡng. Tuy nhiên vẫn chưa có quy định cụ thể áp dụng vào thực tế.
', 5)
INSERT [dbo].[News] ([id], [Title], [NewsBody], [AgentId]) VALUES (12, N'Hà Nội đang thiếu chung cư giá rẻ', N'Chênh lệch cung cầu đang là bài toán khó giải khi phân khúc chung cư giá rẻ đang dần vắng bóng tại TP Hà Nội, khiến người dân ngày càng "hẹp cửa" mua nhà.

Thừa chung cư phân khúc trung, cao cấp

Thiếu chung cư giá rẻ và thừa chung cư phân khúc trung, cao cấp đang là thực trạng diễn ra tại thị trường bất động sản Việt Nam trong những năm qua.

Chị Lê Thị Hòa (SN 1988, thuê trọ ở phường Khương Trung, quận Thanh Xuân, Hà Nội) cho biết, mức giá chung cư hiện nay đang dần bỏ xa thu nhập của người dân. Vợ chồng chị Hòa dù kinh doanh, có thu nhập ổn định khoảng 25 triệu đồng/tháng nhưng mấy năm nay cũng phải gác lại kế hoạch mua nhà vì chưa đủ tài chính.

"Nhiều người dân như chúng tôi đang bị mắc kẹt khi muốn mua nhà ở vừa túi tiền nhưng trên thị trường chỉ còn phân khúc căn hộ chung cư trung và cao cấp với mức giá dao động từ 3,5 - 7 tỉ đồng, những người có thu nhập thấp như tôi gần như không có cơ hội mua nhà" - chị Hòa nói.

Ông Nguyễn Mạnh Hà - Phó Chủ tịch Thường trực Hiệp hội Bất động sản Việt Nam (VARS) mới đây cho rằng, do thời gian thẩm định pháp lý, hoàn thiện hồ sơ cấp phép dự án kéo dài nên chi phí của các dự án xây dựng chung cư bị đội lên, khiến các dự án mở bán sau khó đưa ra mức giá thấp hơn những dự án cùng phân khúc trước đó. Theo ông Hà, nếu nguồn cung bất động sản mới vẫn tắc và khan hiếm, dòng vốn tín dụng chưa được khơi thông thì giá bán chung cư sơ cấp vẫn sẽ khó giảm nhiệt.

Báo cáo của CBRE Việt Nam, thị trường bất động sản Hà Nội quý II/2023 chỉ có 9 dự án chung cư mở bán mới, trong đó có 2 dự án mở bán lần đầu, 7 dự án mở bán giai đoạn tiếp theo, tổng số lượng căn hộ chung cư mở bán tại Hà Nội là khoảng 1820 căn hộ.

Giá chung cư còn tăng

Trao đổi với Lao Động, ông Nguyễn Văn Đính - Chủ tịch Hội Môi giới Bất động sản Việt Nam (VARS) - nhận xét, giá chung cư sắp tới được dự báo còn đi lên, xuất phát từ tình hình thị trường và nhu cầu thực tế hiện nay.

Theo ông Đính, thị trường chung cư tại Hà Nội và TP Hồ Chí Minh hiện nay cơ bản vẫn "khan" nguồn cung mới giá rẻ, dự án mới so với nhu cầu thực tế. Những phân khúc như căn hộ chung cư trung cấp, bình dân và bất động sản giá trị khai thác thương mại tốt vẫn sẽ có giao dịch nên khả năng "hạ giá" là rất khó, nhất là trong bối cảnh nguồn cung khan hiếm như hiện nay.

Ông Nguyễn Văn Đính cho rằng, sự mất cân đối về cơ cấu sản phẩm bất động sản đang là vấn đề khiến nhiều người dân quan tâm. Có thể thấy, trong bối cảnh nền kinh tế phát triển, nhu cầu của người dân tăng lên nhưng thị trường lại thiếu nguồn cung nhà ở giá rẻ, thiếu bất động sản phục vụ nhu cầu thực vừa túi tiền, mà phần lớn trên thị trường là các dự án nhà ở cao cấp và các sản phẩm đầu tư.

“Những người đang có nhu cầu sở hữu nhà hiện nay họ cũng đã chuẩn bị một số tiền nhất định, vấn đề chỉ là có mức giá hấp dẫn. Bên cạnh đó, với việc thúc đẩy đề án xây dựng 1 triệu căn nhà ở xã hội, công nhân, dự báo phân khúc này sẽ dẫn sóng thị trường ” - ông Đính thông tin.

Cũng theo khảo sát của Viện nghiên cứu Kinh tế - Tài chính - Bất động sản Dat Xanh Services (DXS - PERI), 82% câu trả lời từ khách hàng lựa chọn căn hộ có giá dưới 2,5 tỉ đồng, 13% lựa chọn căn hộ từ 2,5 - 3,5 tỉ đồng, chỉ có 5% lựa chọn khung giá trên 3,5 tỉ đồng.

Kết quả khảo sát này cho thấy, sự lựa chọn của khách hàng đang chuyển dịch mạnh mẽ về khung giá sản phẩm bất động sản đáp ứng nhu cầu ở thực với mức giá vừa tầm.
', 5)
INSERT [dbo].[News] ([id], [Title], [NewsBody], [AgentId]) VALUES (13, N'Môi giới bất động sản từ thu nhập tiền tỉ, giờ ế khách bỏ nghề về bán trà chanh', N'Thị trường bất động sản gần như "đóng băng" khiến không ít môi giới bất động sản "ế khách", phải bỏ nghề. Người chuyển sang bán trà chanh, người chạy xe ôm... Những môi giới còn bám trụ lại cũng phải xoay thêm nghề để trang trải cuộc sống.

“Đang kiếm tiền triệu giờ nhặt từng đồng không quen…”

Sau khoảng thời gian dài gắng gượng khiến tài chính kiệt quệ, trao đổi với PV Báo Lao Động, chị Phạm Ngọc Hiền đã quyết định đóng cửa văn phòng bất động sản. Chị Hiền đem số tiền tích góp còn lại để mở quán nhỏ, kinh doanh trà chanh ngay tại địa điểm văn phòng bất động sản cũ.

Nhắc về khoảng thời gian “huy hoàng” sốt đất, chị Hiền trầm tư, tiếc nuối. “Trước đây, khi đất nền Hoà Lạc sốt, ngày nào tôi cũng dậy từ 5h sáng chuẩn bị hồ sơ dẫn khách đi xem. Đỉnh điểm có ngày dẫn 10 - 15 lượt khách. Do có kinh nghiệm và nguồn tin tốt, văn phòng tháng nào có 10 - 30 giao dịch. Tuy nhiên, khi thị trường đóng băng, văn phòng chỉ lác đác có 1 - 2 giao dịch/tháng. Thậm chí, không có giao dịch gần nửa năm. Văn phòng mất nguồn thu nhưng vẫn phải duy trì kinh phí chạy truyền thông quảng cáo. Tiền vào không có, tiền ra đều đặn nên chẳng bao lâu văn phòng rơi vào tình trạng kiệt quệ. Cuối cùng, không thể gồng gánh nữa, tôi đóng cửa văn phòng” - chị Hiền bộc bạch.

Chị Hiền tiết lộ thời sốt đất dễ kiếm tiền vì khách chạy theo thị trường, liên tục chốt đơn để đầu tư. Vừa làm môi giới, vừa cọc tiền giữ hàng để bán lại cho khách nên thu nhập của chị Hiền dao động từ 600 triệu - 1 tỉ đồng/năm. Tài chính dư giả nên chị Hiền chi tiêu cho cuộc sống hàng ngày không tiếc tay. Hiện nay công việc bán trà chanh vất vả, cạnh tranh cao nhưng thu nhập thấp. Công việc bán trà chanh của chị Hiền chỉ thu được 6 -7 triệu đồng/tháng, chưa kể tiền thuê mặt bằng.

Tương tự như chị Hiền, bất động sản không còn là kênh "hái ra tiền" đối với anh Trần Phú (Đông Anh, Hà Nội). Anh Phú gia nhập thị trường môi giới vào gần cuối năm 2021, chưa làm được bao lâu, thị trường rơi vào trầm lắng.

“Lúc đầu đăng bài quảng cáo còn có khách hỏi nhưng lâu dần không ai tương tác. Khi làm môi giới trung bình mỗi tháng tôi kiếm được 15 - 20 triệu đồng. Tuy nhiên, 2/3 thu nhập phải chi tiêu vào việc chạy quảng cáo, tiếp khách và xăng xe. Số tiền còn lại để ra không đáng là bao. Thị trường trầm lắng, tôi cầm cự duy trì đăng bài trong vòng 4 tháng nhưng không có giao dịch. Không trụ được nữa nên tôi chuyển sang chạy xe để đảm bảo cuộc sống gia đình” - anh Phú bày tỏ.

Kiệt quệ chờ thị trường bất động sản khởi sắc

“Khi nào thị trường bất động sản khởi sắc” là câu hỏi thường trực, là niềm trông mong của anh Nguyễn Duy Tài - giám đốc một văn phòng bất động sản tại Hoà Lạc. Anh Tài cho biết, văn phòng của anh đã cắt giảm nhân sự từ 20 xuống 4 người.

“Trước đây, làm ăn được nên văn phòng trả lương cứng và hỗ trợ 90% chi phí truyền thông, quảng cáo cho nhân viên môi giới. Nhưng hiện tại khó khăn, văn phòng không đủ kinh phí nên nhân viên đi làm không lương. Những người bám trụ với nghề chủ yếu dựa vào đam mê và có nguồn tài chính từ công việc khác hỗ trợ” - anh Tài cho hay.

Trao đổi với PV Báo Lao Động, ông Nguyễn Quốc Anh - Phó Tổng Giám đốc batdongsan.com.vn - cho rằng, thị trường bất động sản trầm lắng là thời điểm tốt để thanh lọc môi giới. Vai trò của môi giới ngày càng quan trọng hơn đối với giao dịch bất động sản. Bản chất môi giới là chuyên gia giúp giao dịch mua bán trở nên thuận lợi.

“Nhìn ở khía cạnh tích cực, qua đợt thanh lọc thị trường môi giới bất động sản sẽ chuyên nghiệp và phát triển lành mạnh. Đa phần các doanh nghiệp bất động sản sẽ cắt giảm nhân sự không có đủ kiến thức, yếu chuyên môn. Đồng thời giữ lại nhân sự có năng lực, có kiến thức và muốn gắn bó lâu dài” - ông Nguyễn Quốc Anh nhận định.

Theo Hội Môi giới Bất động sản Việt Nam, môi giới bất động sản đang duy trì trong trạng thái thoi thóp, cầm chừng trong suốt 6 tháng đầu năm 2023. Trong quý I/2023, có thêm khoảng 50% sàn giao dịch phải đóng cửa hoặc tạm dừng hoạt động với hàng nghìn lao động phải mất việc. Ước tính số môi giới đang hoạt động chỉ còn khoảng 30% - 40% so với giai đoạn đầu năm 2022.
', 5)
INSERT [dbo].[News] ([id], [Title], [NewsBody], [AgentId]) VALUES (14, N'Cổ phiếu bất động sản khu công nghiệp đón sóng kết quả kinh doanh quý II', N'Khép lại quý II/2023, bức tranh lợi nhuận của nhiều doanh nghiệp bất động sản khu công nghiệp niêm yết đã dần hé mở.

Bức tranh kết quả kinh doanh dần hé mở

Cụ thể, Công ty Cổ phần Sonadezi Giang Điền (mã chứng khoán SZG) công bố doanh thu thuần đạt 165 tỉ đồng, tăng mạnh 117% so với cùng kỳ năm trước. Trong đó mảng kinh doanh đất, hạ tầng khu công nghiệp chiếm phần lớn với 34,5 tỉ đồng.

Sau khi trừ thuế và các khoản chi phí, lợi nhuận sau thuế trong quý II bứt phá 222% lên 69,8 tỉ đồng. Lũy kế 6 tháng, Sonadezi Giang Điền ghi nhận doanh thu thuần đạt 250 tỉ đồng, lợi nhuận sau thuế 103 tỉ đồng, tăng lần lượt 44% và 120% so với cùng kỳ.

Như vậy, luỹ kế đến 30.6.2023, doanh thu thuần và lợi nhuận sau thuế của công ty đã thực hiện được lần lượt hơn 60% và 91% mục tiêu đề ra.

Với Công ty Cổ phần Khu công nghiệp Nam Tân Uyên (mã chứng khoán NTC), lợi nhuận sau thuế tăng trưởng 5,6% so với cùng kỳ, ghi nhận 75,5 tỉ đồng.

Tại Đại hội cổ đông vừa qua, bà Nguyễn Thị Thu Hương - Tổng Giám đốc Tổng Công ty Cổ phần Phát triển đô thị Kinh Bắc (mã chứng khoán KBC) tiết lộ lợi nhuận 6 tháng đầu năm đã thực hiện được 50% kế hoạch cả năm, tương ứng khoảng 2.000 tỉ đồng.

Song song với lợi nhuận cải thiện hơn so với ngành bất động sản nói chung, một số cổ phiếu bất động sản khu công nghiệp cũng ghi nhận sóng tăng tích cực. Tính từ đầu quý II đến nay, IDC tăng 16%, VGC tăng 35%, BCM tăng gần 38%, NTC có thêm 43%... Một số mã khác vẫn chưa có sự cải thiện nhiều, thậm chí đi lùi như UDJ, BCM...

Lợi thế từ giá cho thuê hấp dẫn

Báo cáo mới nhất của Cushman & Wakefield cho thấy trong quý II/2023, thị trường khu công nghiệp Việt Nam ghi nhận nguồn cung mới khoảng 238 ha đến từ 2 khu công nghiệp ở Hưng Yên. Theo sau làn sóng đầu tư mạnh mẽ, thị trường nhà xưởng xây sẵn ở miền Bắc trong quý II cũng trở nên sôi động hơn. Giá thuê nhờ đó duy trì ổn định theo quý ở mức 4,7 USD/m2/tháng nhưng tăng 1,7% theo năm.

Ông Vũ Minh Chí - quản lý cấp cao dịch vụ công nghiệp tại Colliers - cho biết, Việt Nam được định vị là một trong những địa điểm rất tiềm năng để mở rộng sản xuất và đang nổi lên như một điểm sáng cho sự dịch chuyển chuỗi cung ứng và logistics ở khu vực châu Á - Thái Bình Dương.

Theo Colliers, với những lợi thế về pháp lý, thủ tục đầu tư cũng như cơ sở hạ tầng sẽ thúc đẩy cho nhiều nhà đầu tư đầu tư mạnh dạn hơn vào thị trường bất động sản khu công nghiệp trong thời gian tới. Bên cạnh đó, so với một số nước Đông Nam Á, giá đất công nghiệp tại Việt Nam vẫn còn tương đối thấp.

"Việt Nam có nhiều tiềm năng trở thành trung tâm công nghiệp hàng đầu khu vực. Ngày càng nhiều nhà đầu tư nước ngoài trong lĩnh vực công nghệ cao, công nghiệp điện tử chọn Việt Nam là điểm đến. Ngoài ra, thị trường bất động sản công nghiệp còn chứng kiến sự quan tâm liên tục từ các nhà sản xuất toàn cầu, đặc biệt là lĩnh vực điện tử và hàng tiêu dùng. Một số tên tuổi lớn có thể kể ra như tập đoàn P&G, Tập đoàn Polaris, Tập đoàn Quanta Computer (Đài Loan, Trung Quốc)..." - chuyên gia cho hay.
', 5)
INSERT [dbo].[News] ([id], [Title], [NewsBody], [AgentId]) VALUES (15, N'Mẹo thiết kế để bảo vệ ngôi nhà khi xảy ra mưa bão', N'Người dân các tỉnh thường xuyên chịu ảnh hưởng trực tiếp của các cơn bão nên chú ý đến thiết kế ngôi nhà để giảm thiểu thiệt hại.

Lên kế hoạch trước khi xây dựng

Bên cạnh việc chuẩn bị kinh phí, nếu căn nhà của bạn nằm ở khu vực thường xuyên có bão đổ bộ, hãy tính toán kỹ từ khi thiết kế. Việc lựa chọn địa điểm là nguyên tắc quan trọng và mang yếu tố tiên quyết trong xây dựng nhà chống bão.

Bạn cần lựa chọn những khu vực khuất gió để bắt đầu thiết kế. Tuyệt đối không xây dựng tại những nơi trống trải hay những địa điểm có hướng gió biển hoặc gió của hồ nước lớn.

Để tránh tạo luồng gió xoáy và túi gió, cần thiết kế căn nhà thành các cụm, so le nhau, tuyệt đối không xây dựng theo đường thẳng. Khuôn nhà thiết kế hình chữ nhật là phù hợp nhất, nên để chiều dài có tỉ lệ gấp 2,5 chiều rộng. Bạn cũng nên tránh thiết kế nhà chữ T hoặc chữ U.

Bảo vệ mái nhà

Trong các cơn bão, sự cố tốc mái nhà thường xuyên xảy ra. Vì vậy, nếu nhà trong khu vực hay đón bão, hãy xây dựng phần mái cứng cáp, chống chịu tốt các tác động ngoại lực.

Trong trường hợp xây dựng mái hiên, thì lời khuyên cho bạn là nên thiết kế mái hiên rời để tránh ảnh hưởng trực tiếp đến phần mái chính của căn nhà. Hoặc tốt nhất là sử dụng chất liệu bê tông, cốt thép làm mái hiên thật kiên cố.

Để tránh tốc mái nhà, bạn có thể cố định lại các góc của mái nhà, sử dụng ke chống bão, vít chặt lại hệ thống mái tôn vào khung nhà hoặc tăng trọng lượng của mái nhà bằng bao cát... khi bão đổ bộ.

Bạn nên xây dựng phần mái nhà chính có độ dốc hợp lý vào khoảng 30 độ, với phần chìa ra ngoài của mái thì cần tính toán chỉ để nhỏ hơn 50cm với loại nhà có trần và nhỏ hơn 30cm với loại nhà không có trần.

Chất lượng vật liệu

Nằm trong vùng đón bão, ngôi nhà của bạn có thể rơi vào tình trạng bị ngập nước. Vì vậy, móng hay tường nhà bạn đều cần chú trọng xây dựng.

Bạn cần thiết kế phần móng sao cho phần kết cấu này có khả năng chịu đủ lực tác động. Móng phải chắc chắn để níu giữ kết cấu cho căn nhà, kết cấu móng luôn chú ý đảm bảo sự khô ráo, giúp vật liệu không bị hư hỏng do tình trạng ngập lụt gây nên.

Nếu ở khu vực thường xuyên ngập lụt, bạn cũng có thể tham khảo mẫu nhà chống lũ lụt (hay nhà chống ngập). Đây là kiểu nhà được thiết kế và xây dựng để thích ứng với mưa lũ, làm giảm bớt những tác động tiêu cực từ thiên tai đến đời sống người dân. Nhà chống lũ hiện nay có ba loại chính, đó là: Nhà kê nền, nhà phao và nhà có gác.

Bên cạnh đó trước cơn bão bạn nên di dời đồ đạc có giá trị và những tài sản quan trọng có thể bị phá hoại do ngập lụt. Ngoài việc di dời tài sản, bạn nên chú ý đến cây xanh trong vườn, đặc biệt là những cây lớn có nguy cơ gãy, bật rễ.
', 5)
INSERT [dbo].[News] ([id], [Title], [NewsBody], [AgentId]) VALUES (16, N'Người mua nhà ngại vay vì lãi suất chưa giảm như kỳ vọng', N'Người mua nhà hiện nay vẫn ngại vay ngân hàng, dù nhiều ngân hàng công bố lãi suất ưu đãi với các khoản vay bất động sản ở mức 10%/năm trở xuống.

Sau động thái quyết liệt của Ngân hàng Nhà nước về việc giảm lãi suất cho vay đối với khách hàng cũ là cá nhân và doanh nghiệp, nhiều ngân hàng đã tiếp tục điều chỉnh giảm lãi suất với mức giảm phổ biến từ 0,5%. Tuy nhiên, đối với các khoản vay cũ thì mức giảm không đáng kể, các ngân hàng thương mại tư nhân vẫn duy trì ở mức 12-14% do giá vốn các ngân hàng huy động cao đầu năm nay vẫn còn tồn kho.

Theo khảo sát, lãi suất vay ngân hàng mua nhà trong tháng 7 tại các ngân hàng hiện dao động từ 4,99-11,8%/năm. Trong đó, lãi suất vay mua nhà thấp nhất hiện nay đang thuộc về Ngân hàng TMCP Hàng Hải Việt Nam (MSB) ở mức 4,99%/năm. Tuy nhiên, MSB chỉ cố định mức lãi suất này trong 3 tháng đầu với các khoản vay có thời hạn trên 24 tháng, từ tháng thứ 4 trở đi, ngân hàng sẽ áp dụng lãi suất thả nổi theo lãi suất thị trường, rơi vào khoảng 13,75%/năm. Nhóm Big 4 là BIDV, Agribank, Vietcombank, Vietinbank và nhiều ngân hàng thương mại tư nhân cũng áp dụng mức lãi dưới 10%/năm. Tuy nhiên, mức lãi suất dưới 10% chỉ áp dụng trong 3-6 tháng, cao nhất là 1 năm, hết thời gian ưu đãi, hầu hết các ngân hàng đều tính theo lãi suất thả nổi, phổ biến ở mức 12-13,5%.

Chia sẻ mới đây về xu hướng mua nhà của thị trường 6 tháng đầu năm 2023, ông Lê Bảo Long, Giám đốc chiến lược của Batdongsan.com.vn, cho biết khi đội ngũ của công ty thực hiện khảo sát trên nhóm đối tượng có nhu cầu mua nhà về kỳ vọng lãi suất vay mua nhà trong năm 2023 -2024, khoảng 44% cho rằng mức lãi suất cho vay mua nhà dưới 8% là hợp lý để họ có thể xoay sở tài chính và kỳ vọng lãi suất sẽ giảm xuống mức này trong năm 2024. 33% người mua nhà chấp nhận đi vay nếu lãi suất vay dao động từ 8 -10%, và chỉ có khoảng 14% đồng ý với mức lãi suất từ 10 -13%.

Xét về nguyên nhân khiến nhiều người mua nhà chưa dám mạnh dạn dùng đòn bẩy tài chính, thì phần lớn đều lo lắng kinh tế khó khăn, công việc không ổn định, thu nhập bấp bênh khiến họ gặp áp lực, không kham nổi lãi vay. Tính riêng các khoản dư nợ vay trung bình từ 800 triệu đồng đến 1 tỉ đồng hiện nay, sau thời gian được hưởng lãi suất ưu đãi, áp dụng theo lãi suất thả nổi (được tính toán sơ bộ lên tới 14-15%/năm), mỗi tháng người vay sẽ phải trả gần 20 triệu đồng tiền gốc và lãi, cao hơn 2-2,5 lần so với giai đoạn trước dịch và tương đương một nửa thu nhập của một gia đình có nguồn thu vào loại khá.

Câu chuyện lãi suất và giá nhà vẫn là rào cản chính khiến người mua không tham gia vào giao dịch nhà đất thời gian qua. Việc giá nhà ở mức cao khiến người có nhu cầu về nhà ở không thể mua được nếu không sử dụng đòn bẩy tài chính từ ngân hàng. Ngân hàng Nhà nước vừa ban hành văn bản số 4985 yêu cầu các ngân hàng tiếp tục giảm lãi suất, nhưng theo kịch bản cơ sở của Công ty chứng khoán SSI, lãi suất chỉ có thể giảm thêm 50-100 điểm cơ bản từ nay đến cuối năm, tức là mặt bằng lãi vay thực theo dạng thả nổi sau ưu đãi sẽ vẫn duy trì ở mức cao từ 12,5-13%/năm.

Dẫu vậy, dưới góc nhìn chung, giới chuyên môn vẫn kỳ vọng lãi suất ngân hàng sẽ có động thái giảm trong nửa cuối năm 2023, nhưng mức giảm sẽ khó được như kỳ vọng của người mua nhà. Nguyên nhân là vì, các tổ chức tín dụng đã phải huy động vốn với lãi suất cao trong giai đoạn cuối năm 2022, nên việc giảm lãi vay cần có độ trễ nhất định và mỗi ngân hàng có bước điều chỉnh khác nhau tùy vào giá vốn huy động đầu vào và năng lực tài chính. Đặc biệt, các khoản vay cũ tại thời điểm chi phí vốn tăng cao thì càng khó hạ lãi suất.
', 5)
INSERT [dbo].[News] ([id], [Title], [NewsBody], [AgentId]) VALUES (17, N'Những sai lầm dễ gặp phải khi mua nội thất phòng khách', N'Khi mua nội thất phòng khách, có thể tồn tại một số sai lầm phổ biến mà nhiều người mắc phải. Dưới đây là một số sai lầm khi mua nội thất phòng khách có thể tốn tiền của bạn.

Không lên kế hoạch trước

Một sai lầm phổ biến là không lên kế hoạch trước khi mua nội thất phòng khách. Việc này có thể dẫn đến mua sắm bừa bãi và mua các món đồ không cần thiết. Vì vậy trước khi mua, hãy định rõ những mục tiêu thiết kế, không gian và ngân sách của bạn. Lập danh sách những món đồ bạn cần và tìm hiểu trước về giá cả và chất lượng. Điều này giúp bạn tiết kiệm thời gian, tiền bạc và tránh mua những thứ không cần thiết.

Bỏ qua sự phù hợp với không gian

Một sai lầm khác là mua nội thất mà không xem xét sự phù hợp với không gian của phòng khách. Để tránh điều này, hãy đo đạc kích thước phòng và tạo ra một bản thiết kế hoặc sơ đồ để xác định các món đồ phù hợp nhất với không gian. Chú ý đến kích thước, tỷ lệ và hợp lý hóa bố trí các món đồ để tạo ra một không gian thoải mái và hài hòa.

Không kiểm tra chất lượng

Một sai lầm khác là mua nội thất mà không kiểm tra chất lượng. Điều này có thể dẫn đến việc mua những món đồ kém chất lượng, không bền và có thể hỏng hóc sau một thời gian ngắn sử dụng. Trước khi mua, hãy kiểm tra kỹ càng chất liệu, độ bền và công năng của nội thất để đảm bảo rằng bạn đang mua những sản phẩm chất lượng.

Không so sánh giá

Một sai lầm phổ biến là không so sánh giá trước khi mua nội thất. Nếu bạn không so sánh giá, có thể mua một món đồ với giá cao hơn so với những cửa hàng khác cung cấp cùng chất lượng tương đương. Hãy thăm nhiều cửa hàng, tra cứu trực tuyến và so sánh giá để đảm bảo bạn đang mua nội thất với giá hợp lý.

Tóm lại, để tránh tiêu tốn nhiều tiền không cần thiết khi mua nội thất phòng khách, hãy lên kế hoạch, đo kích thước cẩn thận, kiểm tra chất lượng và so sánh giá trước khi quyết định mua.
', 5)
INSERT [dbo].[News] ([id], [Title], [NewsBody], [AgentId]) VALUES (18, N'Gỡ vốn cho thị trường bất động sản', N'Lĩnh vực bất động sản hiện chiếm 3,6% GDP (năm 2022) và là ngành liên thông chặt chẽ với thị trường tài chính. Ngoài ra, bất động sản có tác động tới gần 40 ngành nghề kinh tế khác nhau và vai trò quan trọng trong đời sống kinh tế - xã hội. Làm thế nào để "rã đông" thị trường bất động sản là câu hỏi khó.

Doanh nghiệp bất động sản khát

“Thiếu vốn và lãi suất cao là hai vấn đề khó nhất đối với doanh nghiệp hoạt động trên thị trường bất động sản hiện nay. Thực tế những năm qua, tăng trưởng tín dụng vào lĩnh vực BĐS thường cao hơn mức tăng trưởng chung của nền kinh tế, ngay cả trong quý I/2023 khi tín dụng tăng trưởng chậm” - TS Võ Thị Vân Khánh, Khoa Quản trị Kinh doanh - Học viện Tài chính nhận định.

Theo phân tích, quy mô dư nợ tín dụng bất động sản trong 4 tháng đầu năm 2023 đã tăng thêm khoảng hơn 90.000 tỉ đồng (gần bằng một nửa mức tăng thêm hơn 200.000 tỉ đồng trong 4 tháng đầu năm 2022).

70% vướng mắc trong lĩnh vực bất động sản liên quan đến pháp lý. Đại diện Ngân hàng Nhà nước cho rằng nguyên nhân chủ yếu do yếu tố pháp lý của các dự án, trong đó có vấn đề liên quan đến nội dung về quy hoạch, sự không phù hợp giữa quy hoạch chung, quy hoạch phân khu và quy hoạch chi tiết và các dự án, khiến doanh nghiệp không chứng minh được có dòng tiền trả nợ theo kỳ hạn mới, do đó không tiếp cận được các chính sách cơ cấu lại thời hạn trả nợ và giữ nguyên nhóm nợ mới...

Giải pháp gỡ khó thị trường bất động sản  

Bàn về giải pháp gỡ vốn cho doanh nghiệp bất động sản, TS Võ Thị Vân Khánh cho biết, một mặt, các doanh nghiệp phải chủ động tự tháo gỡ khó khăn, cơ cấu lại các khoản nợ và nâng cao tín nhiệm để nâng cao tỉ lệ huy động vốn từ phát hành trái phiếu.

Mặt khác, Chính phủ và các cơ quan chức năng đẩy nhanh xây dựng các quy hoạch, điều chỉnh các dự án phù hợp điều kiện, tình hình địa phương. Bên cạnh đó, làm rõ thời gian, trách nhiệm và kết quả cụ thể, tập trung xử lý các vấn đề chồng chéo quy định pháp luật hoặc hiểu không đúng, vượt quyền, hiểu và áp dụng của các cơ quan nhà nước khác nhau. Tăng minh bạch, công khai hóa việc phân cấp, phân quyền quản lý nhà nước về bất động sản.

Ngân nhà Nhà nước chỉ đạo các ngân hàng thương mại tiếp tục cho các doanh nghiệp bất động sản lành mạnh, có uy tín tín dụng được vay tiếp theo quy định, nhất là các dự án có đủ uy tín, điều kiện vay, với mức lãi suất hợp lý. Mặt khác, hạn chế các doanh nghiệp của ngân hàng tham gia đầu tư bất động sản hoặc hạn chế các doanh nghiệp mua cổ phần chi phối ngân hàng. Đồng thời, cần chủ động phối hợp với Bộ Tài chính và các cơ quan chức năng nghiên cứu cập nhật, phòng ngừa, ngăn chặn các thủ đoạn lũng đoạn và đầu cơ.

Các Bộ chức năng và chính quyền các tỉnh, thành cần sớm chủ động xây dựng các quy hoạch chi tiết và chính sách hỗ trợ liên quan (về thủ tục hành chính, thuế, tín dụng và giá cả…) thích hợp với địa phương và thị trường cụ thể để sớm triển khai chương trình 1 triệu căn hộ nhà ở xã hội cho công nhân, người thu nhập thấp trong giai đoạn từ nay tới năm 2030.

“Cần nhấn mạnh rằng, để tháo gỡ khó khăn và thúc đẩy thị trường bất động sản phát triển an toàn, lành mạnh, bền vững cần quán triệt và bám sát nguyên tắc ‘không ai giải cứu cho ai’, bảo đảm hài hòa các lợi ích, lưu ý xử lý nợ tư mà không làm tăng nợ công và giảm thiểu tác động trái chiều trong công tác kiểm soát, chống đầu cơ, lũng đoạn thị trường” - TS Võ Thị Vân Khánh cho biết.
', 5)
INSERT [dbo].[News] ([id], [Title], [NewsBody], [AgentId]) VALUES (19, N'Dự án 1.200 tỉ đồng “treo” suốt 15 năm', N'Nằm ở vị trí đắc địa của TP Quảng Ngãi, nhưng dự án Vina Universal Paradise rộng gần 60 ha, cấp phép năm 2008, với tổng vốn khoảng 1.200 tỉ đồng, đến nay vẫn nằm trên giấy. Dự án này là nguyên nhân khiến cuộc sống người dân khổ sở suốt 15 năm.

Dân bức xúc, nhưng bất lực

Dự án khu thương mại - dịch vụ Vina Universal Paradise (nay đổi tên thành dự án khu đô thị An Sơn) do Công ty Cổ phần Đầu tư khu du lịch - phim trường Vina làm chủ đầu tư.
Thời điểm đó, chủ đầu tư công bố đây là khu đô thị thương mại, dịch vụ và du lịch; phục vụ nhu cầu mua sắm, giải trí của người dân địa phương.

Dự án dự kiến có khu nhà ở gồm, 237 nhà liền kề, 183 nhà biệt thự vườn và 56 bungalow khu công trình công cộng và 5 khu thương mại - dịch vụ.

Kế hoạch ban đầu, toàn bộ công trình hoàn thành sau 4 năm kể từ khi được cấp giấy chứng nhận đầu tư năm 2008. Nhưng đến 2011, dự án mới chỉ giải phóng mặt bằng 12 ha, đạt 22%, với tổng chi phí bồi thường gần 21 tỉ đồng.

Từ đó, dự án giậm chân tại chỗ, khiến 160 hộ dân ở phường Trương Quang Trọng, TP Quảng Ngãi sống lay lắt suốt 15 năm vì dự án treo này.

Nói đến dự án trên, ông Ngô Quang Sơn (75 tuổi) ở tổ dân phố Liên Hiệp 2C, phường Trương Quang Trọng lắc đầu ngao ngán bảo: “Chấp thuận chủ trương của Nhà nước, năm 2008, gia đình tôi giao 2.000 m2 đất để chủ đầu tư thực hiện dự án, nhưng suốt 15 năm ròng họ thu hồi đất rồi bỏ hoang, cây cỏ mọc um tùm, lãng phí”.

Nhà cửa xây dựng đã 30 năm, xuống cấp nghiêm trọng, mới đây, ngày 10.7, hơn nửa ngôi nhà của ông Ngô Quang Sơn bất ngờ sập đổ. Ông Sơn ngậm ngùi nói: “Dự án bị treo hàng chục năm, người dân chúng tôi rất khổ sở, vì đi không được mà ở cũng chẳng xong . Năm nào tiếp xúc cử tri, nhân dân cũng kiến nghị với chính quyền các cấp tìm cách tháo gỡ, chứ để mãi như thế này là quá thiệt thòi cho người dân”.

Nhiều hộ dân vì chịu không nổi cảnh sống trong vùng quy hoạch treo nên bỏ nhà cửa đi tìm nơi ở mới. Ngồi trong căn nhà cấp 4 đầy những vết nứt trên tường và mái ngói cũng đã cũ nát, ông Lê Văn Thi ở tổ dân phố Liên Hiệp 1B, phường Trương Quang Trọng than thở: “Nhà sắp sập nhưng vướng quy hoạch treo nên vợ chồng tôi không được xây mới. Để gia cố nhà cửa, tôi dùng nhiều cây gỗ để chằng chống, sống tạm qua ngày, đêm nằm ngủ mà tâm trạng thấp thỏm lo sợ”.

Bao giờ thoát cảnh sống lay lắt?

Dự án treo nhiều năm, gây lãng phí đất đai, nhiều lần chủ đầu tư bị chính quyền tỉnh nhắc nhở, vào năm 2014, chủ đầu tư xin gia hạn tiến độ và được điều chỉnh giấy chứng nhận đầu tư, thời gian thực hiện từ 2014 đến năm 2018. Tuy nhiên, công ty vẫn không triển khai được với lý do quy mô dự án quá lớn, mất nhiều thời gian để lập phương án bồi thường, giải phóng mặt bằng.

Hiện các cổ đông thành lập Công ty Cổ phần Đầu tư khu du lịch - phim trường Vina đã thế chấp toàn bộ cổ phần cho PVcombank để đảm bảo nghĩa vụ trả nợ tại ngân hàng. Do đó, năm 2019, chủ sở hữu dự án thay đổi sang nhóm cổ đông mới là công ty thành viên với 100% vốn Ngân hàng PVcomBank.

Với tiềm lực của PVcomBank, chủ đầu tư khẳng định đủ nguồn lực tiếp tục đầu tư và triển khai dự án. Công ty đã kiến nghị UBND Quảng Ngãi xem xét cho khảo sát, đánh giá lại toàn bộ dự án để lên phương án triển khai theo kiến trúc cũ hoặc thay đổi phù hợp.

Ông Trương Thanh Thảo - Chủ tịch UBND phường Trương Quang Trọng cho biết, mới đây dự án trên đã được phê duyệt quy hoạch chi tiết 1/500 để trình lên cấp trên xem xét triển khai thực hiện dự án. Nếu dự án được làm thì hộ dân nào đủ điều kiện sẽ được bố trí tái định cư.

Về trường hợp nhà sập, UBND phường đề nghị chủ đầu tư hỗ trợ cho người dân nhưng đến nay vẫn chưa thấy gì.

Ông Nguyễn Hữu Hồng - Phó Giám đốc Sở xây dựng Quảng Ngãi - cho biết, vị trí làm dự trên trước kia thuộc huyện Sơn Tịnh, nay được sáp nhập về TP Quảng Ngãi, dự án kéo dài hàng chục năm, thay đổi chủ đầu tư, nên trong quá trình triển khai gặp rất nhiều vướng mắc về thủ tục. Hiện chủ đầu tư vẫn đang từng bước tháo gỡ khó khăn, và vẫn tỏ quyết tâm theo đuổi, thực hiện dự án.
', 5)
INSERT [dbo].[News] ([id], [Title], [NewsBody], [AgentId]) VALUES (20, N'TPHCM xử lý quỹ nhà tái định cư bỏ hoang lãng phí', N'TPHCM - Hiện vẫn có hàng ngàn căn hộ tái định cư thuộc sở hữu nhà nước, nhưng chưa được sử dụng gây lãng phí cả nghìn tỉ đồng.
Nằm cách trung tâm TPHCM khoảng 20km, Khu tái định cư Vĩnh Lộc B (huyện Bình Chánh) được xây dựng với tổng kinh phí 1.062 tỉ đồng, trên khu đất có diện tích 31ha, dành để bố trí tái định cư cho người dân bị giải phóng mặt bằng tại các dự án trên địa bàn TPHCM từ năm 2013. Toàn khu có hơn 500 nền tái định cư và 45 lô chung cư, với gần 2.000 căn hộ.

Trong 10 năm qua, nhiều lô chung cư vẫn bỏ trống vì nhiều hộ dân không đồng ý đến sinh sống. Một trong những điều bất tiện của các lô chung cư tại đây là xây dựng cao 5 tầng nhưng không có thang máy. Do không có người ở nên hiện tại, nhiều hạng mục như tường, lan can… bị bong tróc, xuống cấp, khuôn viên xung quanh cỏ mọc um tùm; lối dẫn vào khu tái định cư biến thành bãi sình lầy mỗi khi mưa xuống.

Theo ghi nhận, đến tháng 6, 23 block chung cư đã có người dân vào ở, nhưng chưa thể lấp đầy khi chỉ có gần 500 hộ. Hiện vẫn còn 22 block chung cư bỏ trống, tổng số căn hộ chưa bố trí là gần 1.500 căn. Chi phí vận hành mỗi năm khoảng 5-6 tỉ đồng. Từ đầu năm 2022, thành phố đã quyết định bàn giao những lô chung cư trống ở Khu tái định cư Vĩnh Lộc B cho Trung tâm Quản lý nhà và giám định xây dựng (Sở Xây dựng) quản lý.

Cũng ở trong tình trạng tương tự, 3.790 căn hộ tái định cư thuộc khu 38,4ha phường Bình Khánh (TP Thủ Đức), nằm trong chương trình 12.500 căn hộ tái định cư Thủ Thiêm đã hoàn thành từ năm 2015. Những căn hộ này sở hữu vị trí đắc địa trong khu đô thị mới Thủ Thiêm, sau nhiều năm hoàn thiện nhưng bị bỏ hoang, xuống cấp.

Các căn hộ này vẫn bị bỏ trống vì thực tế chưa giải quyết được các vấn đề an sinh xã hội cơ bản, chưa đảm bảo được sinh kế cho người dân, đặc biệt là những cư dân phải chuyển đổi nghề nghiệp khi bị giải tỏa. Một nguyên nhân khác khiến hàng ngàn căn hộ bị bỏ hoang là bởi giá nhà ở khu tái định cư cao hơn so với giá trị bồi thường tại nơi ở cũ, khiến người dân không đủ khả năng chi trả.

Với hàng ngàn căn hộ tại đây vẫn bị bỏ trống, mỗi năm TPHCM phải chi hàng chục tỉ đồng để bảo trì, thuê người quản lý. Thành phố đã nhiều lần thực hiện bán đấu giá. Lần thứ 3 vào tháng 6.2021, UBND TPHCM đưa giá khởi điểm 9.900 tỉ đồng cho 3.790 căn hộ, tương ứng bình quân 2,6 tỉ đồng/căn hộ nhưng kết quả vẫn không có nhà đầu tư mua. Việc các lần đấu giá trước không thành công bởi thành phố muốn bán trọn các lô đất nên đối tượng tham gia bị giới hạn. Bên cạnh đó, doanh nghiệp phải ký quỹ 20% giá khởi điểm, nếu trúng đấu giá phải nộp 50% giá trị trúng thầu trong vòng một tháng và 50% còn lại trong 90 ngày, khiến số tiền thanh toán theo quy định rất lớn.

Và mới đây, Sở Tài nguyên và Môi trường đã có văn bản tham mưu cho UBND TPHCM về kế hoạch đấu giá lần lượt 3.790 căn hộ tái định cư ở khu vực này và hàng chục lô đất ở khu đô thị mới Thủ Thiêm. Cụ thể, để bán đấu giá các căn hộ này, UBND TP sẽ chỉ đạo các cơ quan liên quan thực hiện các việc như: xác định thẩm quyền quyết định bán đấu giá; chuyển đổi mục tiêu từ quỹ nhà tái định cư sang thương mại; lập sở hữu nhà nước đối với hạng mục công trình sử dụng chung, cầu thang, lối đi, hành lang, công viên...

Theo các chuyên gia, với kinh nghiệm từ việc bán đấu giá 4 lô đất thuộc khu chức năng số 3 trước đây cùng với thực tế khó bán đấu giá lô 3.790 căn hộ có lẽ sẽ giúp các cơ quan chức năng của thành phố tính toán kế hoạch phù hợp để tổ chức bán đấu giá cho lần này. Nếu việc bán đấu giá thuận lợi, sẽ mang về cho ngân sách thành phố hàng chục nghìn tỉ đồng.
', 5)
INSERT [dbo].[News] ([id], [Title], [NewsBody], [AgentId]) VALUES (25, N'Tin tức mới_232210245', N'N?i dung bài vi?t_89131759', 5)
SET IDENTITY_INSERT [dbo].[News] OFF
GO
SET IDENTITY_INSERT [dbo].[NEWSPICTURE] ON 

INSERT [dbo].[NEWSPICTURE] ([Id], [PictureName], [NewsID], [URL], [IsActive], [NativeHeight], [NativeWidth]) VALUES (9, N'news1.jpg', 11, N'news1.jpg', 1, 0, 0)
INSERT [dbo].[NEWSPICTURE] ([Id], [PictureName], [NewsID], [URL], [IsActive], [NativeHeight], [NativeWidth]) VALUES (10, N'news2.jpg', 12, N'news2.jpg', 1, 0, 0)
INSERT [dbo].[NEWSPICTURE] ([Id], [PictureName], [NewsID], [URL], [IsActive], [NativeHeight], [NativeWidth]) VALUES (11, N'news3.jpg', 13, N'news3.jpg', 1, 0, 0)
INSERT [dbo].[NEWSPICTURE] ([Id], [PictureName], [NewsID], [URL], [IsActive], [NativeHeight], [NativeWidth]) VALUES (12, N'news4.jpg', 14, N'news4.jpg', 1, 0, 0)
INSERT [dbo].[NEWSPICTURE] ([Id], [PictureName], [NewsID], [URL], [IsActive], [NativeHeight], [NativeWidth]) VALUES (13, N'news5.jpg', 15, N'news5.jpg', 1, 0, 0)
INSERT [dbo].[NEWSPICTURE] ([Id], [PictureName], [NewsID], [URL], [IsActive], [NativeHeight], [NativeWidth]) VALUES (14, N'news6.jpg', 16, N'news6.jpg', 1, 0, 0)
INSERT [dbo].[NEWSPICTURE] ([Id], [PictureName], [NewsID], [URL], [IsActive], [NativeHeight], [NativeWidth]) VALUES (15, N'news7.jpg', 17, N'news7.jpg', 1, 0, 0)
INSERT [dbo].[NEWSPICTURE] ([Id], [PictureName], [NewsID], [URL], [IsActive], [NativeHeight], [NativeWidth]) VALUES (16, N'news8.jpg', 18, N'news8.jpg', 1, 0, 0)
INSERT [dbo].[NEWSPICTURE] ([Id], [PictureName], [NewsID], [URL], [IsActive], [NativeHeight], [NativeWidth]) VALUES (17, N'news9.jpg', 19, N'news9.jpg', 1, 0, 0)
INSERT [dbo].[NEWSPICTURE] ([Id], [PictureName], [NewsID], [URL], [IsActive], [NativeHeight], [NativeWidth]) VALUES (18, N'news10.jpg', 20, N'news10.jpg', 1, 0, 0)
INSERT [dbo].[NEWSPICTURE] ([Id], [PictureName], [NewsID], [URL], [IsActive], [NativeHeight], [NativeWidth]) VALUES (19, N'news_image.png', 11, N'news_image.png', 1, 0, 0)
INSERT [dbo].[NEWSPICTURE] ([Id], [PictureName], [NewsID], [URL], [IsActive], [NativeHeight], [NativeWidth]) VALUES (20, N'news_image.png', 11, N'news_image.png', 1, 0, 0)
SET IDENTITY_INSERT [dbo].[NEWSPICTURE] OFF
GO
SET IDENTITY_INSERT [dbo].[PICTURE] ON 

INSERT [dbo].[PICTURE] ([Id], [PictureName], [RealEstateId], [URL], [IsActive], [NativeHeight], [NativeWidth]) VALUES (56, N'local-picture-0efa594e-0e8b-41cd-aaf0-5d8d8e86793d-phunhuan.jpg', 29, N'0efa594e-0e8b-41cd-aaf0-5d8d8e86793d-phunhuan.jpg', 1, 0, 0)
INSERT [dbo].[PICTURE] ([Id], [PictureName], [RealEstateId], [URL], [IsActive], [NativeHeight], [NativeWidth]) VALUES (57, N'local-picture-8606ddb5-39ec-4005-b997-d21c06bc845c-phunhuan2.jpeg', 29, N'8606ddb5-39ec-4005-b997-d21c06bc845c-phunhuan2.jpeg', 1, 0, 0)
INSERT [dbo].[PICTURE] ([Id], [PictureName], [RealEstateId], [URL], [IsActive], [NativeHeight], [NativeWidth]) VALUES (58, N'local-picture-b3d9fc5e-3cc7-4a74-9df6-2fb6c88d4ab6-phunhuan3.jpeg', 29, N'b3d9fc5e-3cc7-4a74-9df6-2fb6c88d4ab6-phunhuan3.jpeg', 1, 0, 0)
INSERT [dbo].[PICTURE] ([Id], [PictureName], [RealEstateId], [URL], [IsActive], [NativeHeight], [NativeWidth]) VALUES (59, N'local-picture-1ca5d009-8c25-4fdd-8c20-32241ca8bae8-phunhuan.jpg', 29, N'1ca5d009-8c25-4fdd-8c20-32241ca8bae8-phunhuan.jpg', 1, 0, 0)
INSERT [dbo].[PICTURE] ([Id], [PictureName], [RealEstateId], [URL], [IsActive], [NativeHeight], [NativeWidth]) VALUES (60, N'local-picture-ed80e918-fe0c-4e50-8774-2a80e4c7d25a-phunhuan2.jpeg', 29, N'ed80e918-fe0c-4e50-8774-2a80e4c7d25a-phunhuan2.jpeg', 1, 0, 0)
INSERT [dbo].[PICTURE] ([Id], [PictureName], [RealEstateId], [URL], [IsActive], [NativeHeight], [NativeWidth]) VALUES (61, N'local-picture-9c34f24f-b505-412e-b0e6-987a4e425d08-phunhuan3.jpeg', 29, N'9c34f24f-b505-412e-b0e6-987a4e425d08-phunhuan3.jpeg', 1, 0, 0)
INSERT [dbo].[PICTURE] ([Id], [PictureName], [RealEstateId], [URL], [IsActive], [NativeHeight], [NativeWidth]) VALUES (62, N'local-picture-e3d13018-b95a-4a8a-bd75-7f2b6d9f696c-sunrise.jpg', 30, N'e3d13018-b95a-4a8a-bd75-7f2b6d9f696c-sunrise.jpg', 1, 0, 0)
INSERT [dbo].[PICTURE] ([Id], [PictureName], [RealEstateId], [URL], [IsActive], [NativeHeight], [NativeWidth]) VALUES (63, N'local-picture-6847ede0-8c2e-4855-b7b9-5164204dfcd3-sunrise1.jpg', 30, N'6847ede0-8c2e-4855-b7b9-5164204dfcd3-sunrise1.jpg', 1, 0, 0)
INSERT [dbo].[PICTURE] ([Id], [PictureName], [RealEstateId], [URL], [IsActive], [NativeHeight], [NativeWidth]) VALUES (64, N'local-picture-40ea1331-1446-4b0f-944b-e5b70837a18d-sunrise2.jpg', 30, N'40ea1331-1446-4b0f-944b-e5b70837a18d-sunrise2.jpg', 1, 0, 0)
INSERT [dbo].[PICTURE] ([Id], [PictureName], [RealEstateId], [URL], [IsActive], [NativeHeight], [NativeWidth]) VALUES (65, N'local-picture-4c7e3b22-e1ec-4bb2-b5c7-e35cf1f63275-vinhomes.jpg', 31, N'4c7e3b22-e1ec-4bb2-b5c7-e35cf1f63275-vinhomes.jpg', 1, 0, 0)
INSERT [dbo].[PICTURE] ([Id], [PictureName], [RealEstateId], [URL], [IsActive], [NativeHeight], [NativeWidth]) VALUES (66, N'local-picture-49c68ce4-80b3-4e19-8b53-02b011c73b83-vinhomes1.jpg', 31, N'49c68ce4-80b3-4e19-8b53-02b011c73b83-vinhomes1.jpg', 1, 0, 0)
INSERT [dbo].[PICTURE] ([Id], [PictureName], [RealEstateId], [URL], [IsActive], [NativeHeight], [NativeWidth]) VALUES (67, N'local-picture-8f45072d-68b0-4173-974a-7fb52a9cf660-vinhomes2.jpg', 31, N'8f45072d-68b0-4173-974a-7fb52a9cf660-vinhomes2.jpg', 1, 0, 0)
INSERT [dbo].[PICTURE] ([Id], [PictureName], [RealEstateId], [URL], [IsActive], [NativeHeight], [NativeWidth]) VALUES (68, N'local-picture-2c49701a-f3bb-445b-b447-12e73a76507b-ocean.jpg', 32, N'2c49701a-f3bb-445b-b447-12e73a76507b-ocean.jpg', 1, 0, 0)
INSERT [dbo].[PICTURE] ([Id], [PictureName], [RealEstateId], [URL], [IsActive], [NativeHeight], [NativeWidth]) VALUES (69, N'local-picture-d836caa6-fab2-4df2-940b-1bcb49c9a4aa-ocean1.jpg', 32, N'd836caa6-fab2-4df2-940b-1bcb49c9a4aa-ocean1.jpg', 1, 0, 0)
INSERT [dbo].[PICTURE] ([Id], [PictureName], [RealEstateId], [URL], [IsActive], [NativeHeight], [NativeWidth]) VALUES (70, N'local-picture-6c8bbae5-1ee3-4c39-999e-a75ccdae008b-ocean2.jpg', 32, N'6c8bbae5-1ee3-4c39-999e-a75ccdae008b-ocean2.jpg', 1, 0, 0)
INSERT [dbo].[PICTURE] ([Id], [PictureName], [RealEstateId], [URL], [IsActive], [NativeHeight], [NativeWidth]) VALUES (71, N'local-picture-578d9b2f-b8dc-4119-b7e1-a67a29638f85-eco.jpg', 33, N'578d9b2f-b8dc-4119-b7e1-a67a29638f85-eco.jpg', 1, 0, 0)
INSERT [dbo].[PICTURE] ([Id], [PictureName], [RealEstateId], [URL], [IsActive], [NativeHeight], [NativeWidth]) VALUES (72, N'local-picture-5203e249-7cd0-46c9-98ec-447cd1cb18f3-eco1.jpg', 33, N'5203e249-7cd0-46c9-98ec-447cd1cb18f3-eco1.jpg', 1, 0, 0)
INSERT [dbo].[PICTURE] ([Id], [PictureName], [RealEstateId], [URL], [IsActive], [NativeHeight], [NativeWidth]) VALUES (73, N'local-picture-19efab6d-8751-439f-8e6c-fc18734965fd-eco2.jpg', 33, N'19efab6d-8751-439f-8e6c-fc18734965fd-eco2.jpg', 1, 0, 0)
INSERT [dbo].[PICTURE] ([Id], [PictureName], [RealEstateId], [URL], [IsActive], [NativeHeight], [NativeWidth]) VALUES (74, N'local-picture-29329c06-9a02-43a7-a071-3d396ef28d39-shoph.jpg', 34, N'29329c06-9a02-43a7-a071-3d396ef28d39-shoph.jpg', 1, 0, 0)
INSERT [dbo].[PICTURE] ([Id], [PictureName], [RealEstateId], [URL], [IsActive], [NativeHeight], [NativeWidth]) VALUES (75, N'local-picture-ebe04997-0d3d-44fb-bc44-dcd1495304d3-shoph1.jpg', 34, N'ebe04997-0d3d-44fb-bc44-dcd1495304d3-shoph1.jpg', 1, 0, 0)
INSERT [dbo].[PICTURE] ([Id], [PictureName], [RealEstateId], [URL], [IsActive], [NativeHeight], [NativeWidth]) VALUES (76, N'local-picture-3fab80a5-fa8c-4522-8dfd-af8fa75c5faa-shoph2.jpg', 34, N'3fab80a5-fa8c-4522-8dfd-af8fa75c5faa-shoph2.jpg', 1, 0, 0)
INSERT [dbo].[PICTURE] ([Id], [PictureName], [RealEstateId], [URL], [IsActive], [NativeHeight], [NativeWidth]) VALUES (77, N'local-picture-a5949f80-4bce-489e-a353-afffd0915f3b-bcon.jpg', 35, N'a5949f80-4bce-489e-a353-afffd0915f3b-bcon.jpg', 1, 0, 0)
INSERT [dbo].[PICTURE] ([Id], [PictureName], [RealEstateId], [URL], [IsActive], [NativeHeight], [NativeWidth]) VALUES (78, N'local-picture-c928d6bf-f49a-4673-8b60-00a118abec90-bcon1.jpg', 35, N'c928d6bf-f49a-4673-8b60-00a118abec90-bcon1.jpg', 1, 0, 0)
INSERT [dbo].[PICTURE] ([Id], [PictureName], [RealEstateId], [URL], [IsActive], [NativeHeight], [NativeWidth]) VALUES (79, N'local-picture-17080188-3de2-495e-9562-671b9b1b7bbf-bcon2.jpg', 35, N'17080188-3de2-495e-9562-671b9b1b7bbf-bcon2.jpg', 1, 0, 0)
SET IDENTITY_INSERT [dbo].[PICTURE] OFF
GO
SET IDENTITY_INSERT [dbo].[POLICY] ON 

INSERT [dbo].[POLICY] ([Id], [PolicyContent]) VALUES (1, N'1')
SET IDENTITY_INSERT [dbo].[POLICY] OFF
GO
SET IDENTITY_INSERT [dbo].[Ratings] ON 

INSERT [dbo].[Ratings] ([Id], [AgentId], [RealEstateId], [StarPoint]) VALUES (1, 5, 35, 3)
INSERT [dbo].[Ratings] ([Id], [AgentId], [RealEstateId], [StarPoint]) VALUES (2, 6, 35, 4)
INSERT [dbo].[Ratings] ([Id], [AgentId], [RealEstateId], [StarPoint]) VALUES (3, 7, 35, 5)
INSERT [dbo].[Ratings] ([Id], [AgentId], [RealEstateId], [StarPoint]) VALUES (4, 8, 35, 2)
INSERT [dbo].[Ratings] ([Id], [AgentId], [RealEstateId], [StarPoint]) VALUES (5, 9, 35, 5)
INSERT [dbo].[Ratings] ([Id], [AgentId], [RealEstateId], [StarPoint]) VALUES (6, 21, 35, 3)
SET IDENTITY_INSERT [dbo].[Ratings] OFF
GO
SET IDENTITY_INSERT [dbo].[REAL_ESTATE] ON 

INSERT [dbo].[REAL_ESTATE] ([Id], [PostTime], [LastUpdate], [ExprireTime], [RealEstateTypeId], [AgentId], [IsActive], [ContactNumber], [IsConfirm], [BeginTime], [ConfirmStatus], [IsAvaiable]) VALUES (29, CAST(N'2023-07-20T23:03:04.660' AS DateTime), CAST(N'2023-08-05T11:58:30.860' AS DateTime), CAST(N'2023-10-20T00:00:00.000' AS DateTime), 4, 5, 0, N'0856325732', 1, CAST(N'2023-07-20T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[REAL_ESTATE] ([Id], [PostTime], [LastUpdate], [ExprireTime], [RealEstateTypeId], [AgentId], [IsActive], [ContactNumber], [IsConfirm], [BeginTime], [ConfirmStatus], [IsAvaiable]) VALUES (30, CAST(N'2023-07-23T20:15:47.217' AS DateTime), CAST(N'2023-08-05T10:30:25.720' AS DateTime), CAST(N'2023-12-23T00:00:00.000' AS DateTime), 1, 6, 0, N'0952157196', 1, CAST(N'2023-07-23T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[REAL_ESTATE] ([Id], [PostTime], [LastUpdate], [ExprireTime], [RealEstateTypeId], [AgentId], [IsActive], [ContactNumber], [IsConfirm], [BeginTime], [ConfirmStatus], [IsAvaiable]) VALUES (31, CAST(N'2023-07-23T20:19:48.840' AS DateTime), CAST(N'2023-08-05T11:59:56.977' AS DateTime), CAST(N'2023-09-23T00:00:00.000' AS DateTime), 1, 6, 0, N'0952157196', 1, CAST(N'2023-07-23T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[REAL_ESTATE] ([Id], [PostTime], [LastUpdate], [ExprireTime], [RealEstateTypeId], [AgentId], [IsActive], [ContactNumber], [IsConfirm], [BeginTime], [ConfirmStatus], [IsAvaiable]) VALUES (32, CAST(N'2023-07-23T20:24:45.387' AS DateTime), CAST(N'2023-08-05T10:30:29.790' AS DateTime), CAST(N'2023-10-23T00:00:00.000' AS DateTime), 1, 6, 0, N'0952157196', 1, CAST(N'2023-07-23T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[REAL_ESTATE] ([Id], [PostTime], [LastUpdate], [ExprireTime], [RealEstateTypeId], [AgentId], [IsActive], [ContactNumber], [IsConfirm], [BeginTime], [ConfirmStatus], [IsAvaiable]) VALUES (33, CAST(N'2023-07-23T20:49:22.730' AS DateTime), CAST(N'2023-08-06T22:10:55.853' AS DateTime), CAST(N'2023-09-23T00:00:00.000' AS DateTime), 1, 6, 0, N'0952157196', 1, CAST(N'2023-07-23T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[REAL_ESTATE] ([Id], [PostTime], [LastUpdate], [ExprireTime], [RealEstateTypeId], [AgentId], [IsActive], [ContactNumber], [IsConfirm], [BeginTime], [ConfirmStatus], [IsAvaiable]) VALUES (34, CAST(N'2023-07-23T20:53:24.827' AS DateTime), CAST(N'2023-08-05T11:54:14.513' AS DateTime), CAST(N'2023-10-23T00:00:00.000' AS DateTime), 1, 6, 0, N'0952157196', 1, CAST(N'2023-07-23T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[REAL_ESTATE] ([Id], [PostTime], [LastUpdate], [ExprireTime], [RealEstateTypeId], [AgentId], [IsActive], [ContactNumber], [IsConfirm], [BeginTime], [ConfirmStatus], [IsAvaiable]) VALUES (35, CAST(N'2023-07-23T20:55:58.047' AS DateTime), CAST(N'2023-08-05T11:59:11.120' AS DateTime), CAST(N'2023-09-23T00:00:00.000' AS DateTime), 1, 6, 0, N'0952157196', 1, CAST(N'2023-07-23T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[REAL_ESTATE] ([Id], [PostTime], [LastUpdate], [ExprireTime], [RealEstateTypeId], [AgentId], [IsActive], [ContactNumber], [IsConfirm], [BeginTime], [ConfirmStatus], [IsAvaiable]) VALUES (38, CAST(N'2023-08-01T12:52:12.290' AS DateTime), CAST(N'2023-08-01T12:52:12.290' AS DateTime), CAST(N'2023-08-01T00:00:00.000' AS DateTime), 1, 5, 1, N'0856325732', 0, CAST(N'2023-08-01T00:00:00.0000000' AS DateTime2), 0, 1)
INSERT [dbo].[REAL_ESTATE] ([Id], [PostTime], [LastUpdate], [ExprireTime], [RealEstateTypeId], [AgentId], [IsActive], [ContactNumber], [IsConfirm], [BeginTime], [ConfirmStatus], [IsAvaiable]) VALUES (49, CAST(N'2023-08-05T00:32:59.697' AS DateTime), CAST(N'2023-08-05T00:33:09.083' AS DateTime), CAST(N'2023-05-10T00:00:00.000' AS DateTime), 1, 6, 1, N'099999999', 0, CAST(N'2023-07-08T00:00:00.0000000' AS DateTime2), 0, 1)
INSERT [dbo].[REAL_ESTATE] ([Id], [PostTime], [LastUpdate], [ExprireTime], [RealEstateTypeId], [AgentId], [IsActive], [ContactNumber], [IsConfirm], [BeginTime], [ConfirmStatus], [IsAvaiable]) VALUES (50, CAST(N'2023-08-05T11:44:15.160' AS DateTime), CAST(N'2023-08-05T11:44:15.160' AS DateTime), CAST(N'2023-05-09T00:00:00.000' AS DateTime), 1, 6, 1, N'0912012012', 0, CAST(N'2023-06-08T00:00:00.0000000' AS DateTime2), 0, 1)
INSERT [dbo].[REAL_ESTATE] ([Id], [PostTime], [LastUpdate], [ExprireTime], [RealEstateTypeId], [AgentId], [IsActive], [ContactNumber], [IsConfirm], [BeginTime], [ConfirmStatus], [IsAvaiable]) VALUES (51, CAST(N'2023-08-05T11:44:35.647' AS DateTime), CAST(N'2023-08-05T11:44:35.647' AS DateTime), CAST(N'2023-05-09T00:00:00.000' AS DateTime), 1, 6, 1, N'0912012012', 0, CAST(N'2023-06-08T00:00:00.0000000' AS DateTime2), 0, 1)
INSERT [dbo].[REAL_ESTATE] ([Id], [PostTime], [LastUpdate], [ExprireTime], [RealEstateTypeId], [AgentId], [IsActive], [ContactNumber], [IsConfirm], [BeginTime], [ConfirmStatus], [IsAvaiable]) VALUES (52, CAST(N'2023-08-05T11:44:51.873' AS DateTime), CAST(N'2023-08-05T11:44:51.873' AS DateTime), CAST(N'2023-05-09T00:00:00.000' AS DateTime), 1, 6, 1, N'0912012012', 0, CAST(N'2023-06-08T00:00:00.0000000' AS DateTime2), 0, 1)
INSERT [dbo].[REAL_ESTATE] ([Id], [PostTime], [LastUpdate], [ExprireTime], [RealEstateTypeId], [AgentId], [IsActive], [ContactNumber], [IsConfirm], [BeginTime], [ConfirmStatus], [IsAvaiable]) VALUES (53, CAST(N'2023-08-05T11:45:09.920' AS DateTime), CAST(N'2023-08-05T11:45:09.920' AS DateTime), CAST(N'2023-05-09T00:00:00.000' AS DateTime), 1, 6, 1, N'0912012012', 0, CAST(N'2023-06-08T00:00:00.0000000' AS DateTime2), 0, 1)
INSERT [dbo].[REAL_ESTATE] ([Id], [PostTime], [LastUpdate], [ExprireTime], [RealEstateTypeId], [AgentId], [IsActive], [ContactNumber], [IsConfirm], [BeginTime], [ConfirmStatus], [IsAvaiable]) VALUES (54, CAST(N'2023-08-05T11:45:34.370' AS DateTime), CAST(N'2023-08-05T11:45:34.370' AS DateTime), CAST(N'2023-05-09T00:00:00.000' AS DateTime), 1, 6, 1, N'0912012012', 1, CAST(N'2023-06-08T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[REAL_ESTATE] ([Id], [PostTime], [LastUpdate], [ExprireTime], [RealEstateTypeId], [AgentId], [IsActive], [ContactNumber], [IsConfirm], [BeginTime], [ConfirmStatus], [IsAvaiable]) VALUES (55, CAST(N'2023-08-05T11:46:08.173' AS DateTime), CAST(N'2023-08-05T11:46:08.173' AS DateTime), CAST(N'2023-05-09T00:00:00.000' AS DateTime), 1, 6, 1, N'0912012012', 1, CAST(N'2023-06-08T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[REAL_ESTATE] ([Id], [PostTime], [LastUpdate], [ExprireTime], [RealEstateTypeId], [AgentId], [IsActive], [ContactNumber], [IsConfirm], [BeginTime], [ConfirmStatus], [IsAvaiable]) VALUES (56, CAST(N'2023-08-05T11:48:13.417' AS DateTime), CAST(N'2023-08-05T11:48:13.417' AS DateTime), CAST(N'2023-05-09T00:00:00.000' AS DateTime), 1, 6, 1, N'0912012012', 1, CAST(N'2023-06-08T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[REAL_ESTATE] ([Id], [PostTime], [LastUpdate], [ExprireTime], [RealEstateTypeId], [AgentId], [IsActive], [ContactNumber], [IsConfirm], [BeginTime], [ConfirmStatus], [IsAvaiable]) VALUES (59, CAST(N'2023-08-06T22:53:37.193' AS DateTime), CAST(N'2023-08-06T22:53:37.193' AS DateTime), CAST(N'2023-06-09T00:00:00.000' AS DateTime), 1, 6, 1, N'0912012012', 0, CAST(N'2023-07-08T00:00:00.0000000' AS DateTime2), 0, 1)
SET IDENTITY_INSERT [dbo].[REAL_ESTATE] OFF
GO
SET IDENTITY_INSERT [dbo].[REAL_ESTATE_DETAIL] ON 

INSERT [dbo].[REAL_ESTATE_DETAIL] ([Id], [RealEstateId], [Title], [Price], [Acreage], [RoomNumber], [Description], [HasPrivateWC], [HasMezzanine], [AllowCook], [FreeTime], [WaterPrice], [ElectronicPrice], [WifiPrice], [SecurityCamera]) VALUES (29, 29, N'Cho thuê nhà mặt tiền 95m2, Thích Quảng Đức', CAST(20000000 AS Decimal(18, 0)), 95, 4, N'<p><span style="font-family: &quot;Roboto Regular&quot;, Roboto, Arial; font-size: 14px;">Bán nhà mặt tiền Thích Quảng Đức, Phú Nhuận, dài 18m, giá 9.2 tỷ TL</span><br style="-webkit-tap-highlight-color: transparent; font-family: &quot;Roboto Regular&quot;, Roboto, Arial; font-size: 14px;"><span style="font-family: &quot;Roboto Regular&quot;, Roboto, Arial; font-size: 14px;">Diện tích đang sử dụng 95 m².</span><br style="-webkit-tap-highlight-color: transparent; font-family: &quot;Roboto Regular&quot;, Roboto, Arial; font-size: 14px;"><span style="font-family: &quot;Roboto Regular&quot;, Roboto, Arial; font-size: 14px;">Nhà mới xây đẹp 1 trệt, 3 lầu mặt tiền 10m.</span><br style="-webkit-tap-highlight-color: transparent; font-family: &quot;Roboto Regular&quot;, Roboto, Arial; font-size: 14px;"><span style="font-family: &quot;Roboto Regular&quot;, Roboto, Arial; font-size: 14px;">Đường mặt tiền lớn ô tô đậu trong nhà.</span><br style="-webkit-tap-highlight-color: transparent; font-family: &quot;Roboto Regular&quot;, Roboto, Arial; font-size: 14px;"><span style="font-family: &quot;Roboto Regular&quot;, Roboto, Arial; font-size: 14px;">Gần siêu thị Coop Mart rạch miễu Phú Nhuận, gần sân bay, gần trường trung học Độc Lập,...</span><br style="-webkit-tap-highlight-color: transparent; font-family: &quot;Roboto Regular&quot;, Roboto, Arial; font-size: 14px;"><span style="font-family: &quot;Roboto Regular&quot;, Roboto, Arial; font-size: 14px;">Sổ hồng chính chủ, công chứng ngay.</span><br></p>', 1, 1, 1, 1, 3000, 5000, CAST(200000 AS Decimal(18, 0)), 1)
INSERT [dbo].[REAL_ESTATE_DETAIL] ([Id], [RealEstateId], [Title], [Price], [Acreage], [RoomNumber], [Description], [HasPrivateWC], [HasMezzanine], [AllowCook], [FreeTime], [WaterPrice], [ElectronicPrice], [WifiPrice], [SecurityCamera]) VALUES (30, 30, N'Chủ gửi nhiều căn cho thuê Sunrise City, City View', CAST(15000000 AS Decimal(18, 0)), 99, 2, N'- Giá ngày.
+ 1PN: 1.3tr/ngày.
+ 2PN: 1.8tr/ngày.
+ 3PN: 2.3tr/ngày.
- Giá tháng.
+ Căn hộ 1PN: Giá 11tr/th (65m²).
+ Căn hộ 2PN: Giá từ 15tr/th (76m², 99m², 106m²).
+ Căn hộ 3PN: Giá 17tr - 20 tr/th (129m², 138m², 162m²).
+ Căn hộ 4PN: Giá 25tr - 30 tr/th (162m²).
+ Căn hộ penthouse: Giá 60 tr/th - 99 tr/th (300 - 1000m²).
Nhà được trang bị nội thất đầy đủ, cao cấp, tiện nghi.
Hoặc nhà trống, nội thất cơ bản (theo yêu cầu khách hàng).

Với đầy đủ tiện ích 5 sao:
- Hồ bơi tràn bờ.
- Phòng tập gym, sân tennis.
- Spa thư giãn.
- Trung tâm thương mại.
- Hệ thống nhà hàng ẩm thực Việt Nam và nước ngoài.
- Trung tâm giải trí: Karaoke, rạp chiếu phim, sân chơi trẻ em, hệ thống các ngân hàng lớn.
- Dịch vụ: Spa, nhà trẻ, nhà thuốc.
- An ninh tuyệt đối.
- Có khu vui chơi cho trẻ em, công viên thông thoáng, mát mẻ, view đẹp.
- Khách hàng thoải mái lựa chọn căn hộ phù hợp theo nhu cầu của mình.
- Tư vấn nhiệt tình dẫn khách đi xem trực tiếp căn hộ, nắm nhiều key nên có thể xem nhà bất cứ lúc nào.
- Hỗ trợ thương lượng trực tiếp với chủ nhà để có giá tốt nhất.
- Hỗ trợ nhanh, gọn mọi thủ tục sang nhượng và giấy tờ pháp lý, tạm trú, tạm vắng.
- Tư vấn nhiệt tình, làm việc uy tín và có trách nhiệm.
- Nắm nhiều key, xem nhà ngay.
- Cam kết thông tin cập nhật nhanh nhất, mới nhất, chính xác nhất.', 1, 0, 1, 1, 14000, 13000, CAST(200000 AS Decimal(18, 0)), 1)
INSERT [dbo].[REAL_ESTATE_DETAIL] ([Id], [RealEstateId], [Title], [Price], [Acreage], [RoomNumber], [Description], [HasPrivateWC], [HasMezzanine], [AllowCook], [FreeTime], [WaterPrice], [ElectronicPrice], [WifiPrice], [SecurityCamera]) VALUES (31, 31, N'Cho thuê căn hộ 1 - 2 - 3 - 4PN dài hạn, ngắn hạn Vinhomes Central Park', CAST(16500000 AS Decimal(18, 0)), 90, 2, N'* Căn 2 phòng ngủ.
Diện tích 70m² block P1 NT cơ bản 18tr.
Diện tích 86m² block Lw full NT 21.6tr.
Diện tích 90m² block P2 chỉ từ 16.5 tr (NTCB) full NT 22.5tr.
Diện tích 89m² block P5 full NT 26tr.
Diện tích 92m² block P5 NT cơ bản 22tr.
Diện tích 89m² block L1 full NT 25tr.
Diện tích 85m² block P7 full NT 24tr.
Diện tích 92m² block P4 full NT 26tr.
DT 92m² 17tr/tháng.
Lý do tại sao bạn nên chọn chúng tôi:
- Tư vấn tận tình, trung thực. Có nhiều loại hình căn hộ cho bạn lựa chọn.
- Hỗ trợ đưa đón bạn xem nhà và dọn nhà mới.
- Hỗ trợ dịch vụ vệ sinh, đăng ký tạm trú, dv cáp quang, internet, những thứ thiết yếu để phục vụ đời sống.
* Tiện ích dành cho cư dân tại Vinhomes:
- Hồ bơi (free). Phòng gym & yoga (free).
- Sảnh lounge tiếp khách (free). Nhà sinh hoạt cộng đồng (free).
- Hầm gửi xe (B1, B2, B3). TTTM Vincom Landmark 81.
- Camera giám sát, an ninh 24/7. Khu vui chơi trẻ em (free).
- Công viên ven sông rộng 17ha tuyệt đẹp và bến du thuyền 5*.
- Hệ thống sân thể thao ngoài trời (Tenis, cầu long... ).
- Tiệc nướng, BBQ ngoài trời (Free).
- Bệnh viện Vinmec, trường Vinschool liên cấp.', 1, 0, 1, 1, 14000, 15000, CAST(200000 AS Decimal(18, 0)), 1)
INSERT [dbo].[REAL_ESTATE_DETAIL] ([Id], [RealEstateId], [Title], [Price], [Acreage], [RoomNumber], [Description], [HasPrivateWC], [HasMezzanine], [AllowCook], [FreeTime], [WaterPrice], [ElectronicPrice], [WifiPrice], [SecurityCamera]) VALUES (32, 32, N'căn hộ cho thuê giá rẻ theo yêu cầu, giá tốt nhất Vinhomes Ocean Park', CAST(4000000 AS Decimal(18, 0)), 30, 1, N'Cập nhật quỹ căn cho thuê Vinhomes Ocean Park - Gia Lâm giá rẻ nhất thị trường.

* Thông tin căn hộ cụ thể như sau:

+ Căn studio: Từ 4 - 5 triệu/tháng.

+ Căn 1phòng ngủ - 1wc: Từ 4 - 6 triệu/tháng.

+ Căn 2phòng ngủ - 1wc: Từ 4.5 - 6,5 triệu/tháng.

+ Căn 2phòng ngủ - 2wc: Từ 5 - 7,5 triệu/tháng.

+ Căn 3phòng ngủ - 2wc: Từ 6.5 - 10 triệu/tháng.

* Phân khu Ruby (phân khu cao cấp).

+ Studio full đồ: 5,5tr.

+ 1N full đồ: 7tr.

+ 2N2WC full đồ: 10tr.

+ 3N2WC full đồ 14tr.

- Nội thất: Không đồ - cơ bản - full tất cả (tuỳ ý khách hàng lựa chọn).

* Cam kết.
- Tìm căn hộ tốt nhất cho khách thuê.

- Miễn 100% phí môi giới cho khách thuê.

- Thực hiện các giao dịch của mình với tất cả uy tín, trách nhiệm.

- Thủ tục nhanh gọn, hiệu quả và minh bạch.

- Hỗ trợ xem nhà miễn phí 24/7.', 1, 0, 1, 1, 14000, 13000, CAST(250000 AS Decimal(18, 0)), 1)
INSERT [dbo].[REAL_ESTATE_DETAIL] ([Id], [RealEstateId], [Title], [Price], [Acreage], [RoomNumber], [Description], [HasPrivateWC], [HasMezzanine], [AllowCook], [FreeTime], [WaterPrice], [ElectronicPrice], [WifiPrice], [SecurityCamera]) VALUES (33, 33, N'CHUYÊN QUẢN LÝ CHO THUÊ CĂN HỘ ECO GREEN SG Q7', CAST(12000000 AS Decimal(18, 0)), 70, 2, N'Nhà nội thất cơ bản: Máy lạnh, bếp, máy nước nóng, tủ đồ âm tường.
- 2 phòng ngủ, 1 toilet: 12 triệu/tháng.
- 2 phòng ngủ, 2 toilet: 13 triệu/tháng.
- 3 phòng ngủ, 2 toilet: 15 - 17 triệu/tháng.

Nhà full nội thất.
- 1 phòng ngủ, 1 toilet: 13 - 14 triệu/tháng.
- 2 phòng ngủ, 1 toilet: 14 - 15 triệu/tháng.
- 2 phòng ngủ, 2 toilet: 15 - 18 triệu/tháng.
- 3 phòng ngủ, 2 toilet: 18 - 25 triệu/tháng.

Ngoài cho thuê dài hạn, đặc biệt công ty chúng tôi còn cho thuê căn hộ ngắn hạn theo ngày, tuần, tháng với mức giá cực kỳ ưu đãi, hấp dẫn.

Siêu tiện ích tiện lợi 3 tầng trung tâm thương mại - gym, hồ bơi, khu vui chơi trẻ em, game, Family mart 24h, Vinmart, Pharmacity, Coffee Bách Hoá Xanh,... Trường học mầm non, trường tiểu học,....', 1, 0, 1, 0, 14000, 13000, CAST(250000 AS Decimal(18, 0)), 1)
INSERT [dbo].[REAL_ESTATE_DETAIL] ([Id], [RealEstateId], [Title], [Price], [Acreage], [RoomNumber], [Description], [HasPrivateWC], [HasMezzanine], [AllowCook], [FreeTime], [WaterPrice], [ElectronicPrice], [WifiPrice], [SecurityCamera]) VALUES (34, 34, N'Cho Thuê Căn hộ 50m2 Sát ngay shophouse Nguyễn Phước Lan', CAST(4500000 AS Decimal(18, 0)), 50, 1, N'Căn studio cho thuê ngày và tháng - Ban công - bếp - máy giặt, thang máy... sát ngay ngã tư Minh Mạng và đường Nguyễn Phước Lan. 5-7 phút lái xe vào trung tâm củng như ra biển.
Không gian yên tĩnh.
Full Nội thất hiện đại.
Bàn làm việc lý tưởng.
Ban công, cửa sổ thoáng mát.
Điện nước trả theo đồng hồ.
Chợ, trường học, siêu thị, bệnh viện củng rất gần, đặc biết chỉ 1 phút là lại công viên Đầm sen rất lớn và đông vui dành cho nguời lớn và trẻ em vui đùa..
Đường lớn, vỉa hè rộng tha hồ đậu ô tô, thang máy, camera giám sát 24/24, không chung chủ.
Ngại gì không thử, hãy đến để ở và cảm nhận.', 1, 0, 1, 1, 14000, 13000, CAST(250000 AS Decimal(18, 0)), 1)
INSERT [dbo].[REAL_ESTATE_DETAIL] ([Id], [RealEstateId], [Title], [Price], [Acreage], [RoomNumber], [Description], [HasPrivateWC], [HasMezzanine], [AllowCook], [FreeTime], [WaterPrice], [ElectronicPrice], [WifiPrice], [SecurityCamera]) VALUES (35, 35, N'Bcons Plaza cho thuê ưu đãi cho khách HĐ 1 năm giá 4tr', CAST(4000000 AS Decimal(18, 0)), 55, 2, N'Dự án Bcons Plaza Bình Dương tọa lạc ngay mặt tiền đường Thống Nhất lộ giới 32m.
Căn hộ 2PN - 2WC giá thuê: 4tr/th DT: 55m².
Tiện ích ngoại khu: Trung tâm hành chính, tổ hợp phố thời trang, hệ thống nhà hàng ăn uống của các thương hiệu lớn, siêu thị Vincom liền kề, rạp chiếu phim, trung tâm thể dục, phòng gym; nhà trẻ, trường học.
Tiện ích nội khu: Hồ bơi tràn bờ chuẩn Olympic, vườn nướng BBQ, công viên nội khu, sân thể thao, Phòng Gym.', 1, 0, 1, 1, 14000, 13000, CAST(250000 AS Decimal(18, 0)), 1)
INSERT [dbo].[REAL_ESTATE_DETAIL] ([Id], [RealEstateId], [Title], [Price], [Acreage], [RoomNumber], [Description], [HasPrivateWC], [HasMezzanine], [AllowCook], [FreeTime], [WaterPrice], [ElectronicPrice], [WifiPrice], [SecurityCamera]) VALUES (38, 38, N'adadadsd', CAST(20000000 AS Decimal(18, 0)), 23, 2, N'<p>adsdsdsad</p>', 0, 0, 0, 1, 13000, 14000, CAST(200000 AS Decimal(18, 0)), 1)
INSERT [dbo].[REAL_ESTATE_DETAIL] ([Id], [RealEstateId], [Title], [Price], [Acreage], [RoomNumber], [Description], [HasPrivateWC], [HasMezzanine], [AllowCook], [FreeTime], [WaterPrice], [ElectronicPrice], [WifiPrice], [SecurityCamera]) VALUES (49, 49, N'Thêm bài đăng_95661277', CAST(10000001 AS Decimal(18, 0)), 1001, 51, N'<p>Mô tả chi tiết Ngày đăng: 05/Aug/2023</p><p><p></p><p></p><p></p><p></p></p>', 0, 0, 0, 0, 10001, 10001, CAST(2001 AS Decimal(18, 0)), 0)
INSERT [dbo].[REAL_ESTATE_DETAIL] ([Id], [RealEstateId], [Title], [Price], [Acreage], [RoomNumber], [Description], [HasPrivateWC], [HasMezzanine], [AllowCook], [FreeTime], [WaterPrice], [ElectronicPrice], [WifiPrice], [SecurityCamera]) VALUES (50, 50, N'Thêm bài đăng_26918710', CAST(1000000 AS Decimal(18, 0)), 100, 5, N'<p>Mô tả chi tiết Ngày đăng: 05/Aug/2023 11:44:10</p><p><p></p></p>', 1, 1, 1, 1, 1000, 1000, CAST(200 AS Decimal(18, 0)), 1)
INSERT [dbo].[REAL_ESTATE_DETAIL] ([Id], [RealEstateId], [Title], [Price], [Acreage], [RoomNumber], [Description], [HasPrivateWC], [HasMezzanine], [AllowCook], [FreeTime], [WaterPrice], [ElectronicPrice], [WifiPrice], [SecurityCamera]) VALUES (51, 51, N'Thêm bài đăng_15292266', CAST(1000000 AS Decimal(18, 0)), 100, 5, N'<p>Mô tả chi tiết Ngày đăng: 05/Aug/2023 11:44:31</p><p><p></p></p>', 1, 1, 1, 1, 1000, 1000, CAST(200 AS Decimal(18, 0)), 1)
INSERT [dbo].[REAL_ESTATE_DETAIL] ([Id], [RealEstateId], [Title], [Price], [Acreage], [RoomNumber], [Description], [HasPrivateWC], [HasMezzanine], [AllowCook], [FreeTime], [WaterPrice], [ElectronicPrice], [WifiPrice], [SecurityCamera]) VALUES (52, 52, N'Thêm bài đăng_69831322', CAST(1000000 AS Decimal(18, 0)), 100, 5, N'<p>Mô tả chi tiết Ngày đăng: 05/Aug/2023 11:44:47</p><p><p></p></p>', 1, 1, 1, 1, 1000, 1000, CAST(200 AS Decimal(18, 0)), 1)
INSERT [dbo].[REAL_ESTATE_DETAIL] ([Id], [RealEstateId], [Title], [Price], [Acreage], [RoomNumber], [Description], [HasPrivateWC], [HasMezzanine], [AllowCook], [FreeTime], [WaterPrice], [ElectronicPrice], [WifiPrice], [SecurityCamera]) VALUES (53, 53, N'Thêm bài đăng_96094628', CAST(1000000 AS Decimal(18, 0)), 100, 5, N'<p>Mô tả chi tiết Ngày đăng: 05/Aug/2023 11:45:05</p><p><p></p></p>', 1, 1, 1, 1, 1000, 1000, CAST(200 AS Decimal(18, 0)), 1)
INSERT [dbo].[REAL_ESTATE_DETAIL] ([Id], [RealEstateId], [Title], [Price], [Acreage], [RoomNumber], [Description], [HasPrivateWC], [HasMezzanine], [AllowCook], [FreeTime], [WaterPrice], [ElectronicPrice], [WifiPrice], [SecurityCamera]) VALUES (54, 54, N'Thêm bài đăng_72159233', CAST(1000000 AS Decimal(18, 0)), 100, 5, N'<p>Mô tả chi tiết Ngày đăng: 05/Aug/2023 11:45:29</p><p><p></p></p>', 1, 1, 1, 1, 1000, 1000, CAST(200 AS Decimal(18, 0)), 1)
INSERT [dbo].[REAL_ESTATE_DETAIL] ([Id], [RealEstateId], [Title], [Price], [Acreage], [RoomNumber], [Description], [HasPrivateWC], [HasMezzanine], [AllowCook], [FreeTime], [WaterPrice], [ElectronicPrice], [WifiPrice], [SecurityCamera]) VALUES (55, 55, N'Thêm bài đăng_4951940', CAST(1000000 AS Decimal(18, 0)), 100, 5, N'<p>Mô tả chi tiết Ngày đăng: 05/Aug/2023 11:46:03</p><p><p></p></p>', 1, 1, 1, 1, 1000, 1000, CAST(200 AS Decimal(18, 0)), 1)
INSERT [dbo].[REAL_ESTATE_DETAIL] ([Id], [RealEstateId], [Title], [Price], [Acreage], [RoomNumber], [Description], [HasPrivateWC], [HasMezzanine], [AllowCook], [FreeTime], [WaterPrice], [ElectronicPrice], [WifiPrice], [SecurityCamera]) VALUES (56, 56, N'Thêm bài đăng_79184897', CAST(1000000 AS Decimal(18, 0)), 100, 5, N'<p>Mô tả chi tiết Ngày đăng: 05/Aug/2023 11:48:08</p><p><p></p></p>', 1, 1, 1, 1, 1000, 1000, CAST(200 AS Decimal(18, 0)), 1)
INSERT [dbo].[REAL_ESTATE_DETAIL] ([Id], [RealEstateId], [Title], [Price], [Acreage], [RoomNumber], [Description], [HasPrivateWC], [HasMezzanine], [AllowCook], [FreeTime], [WaterPrice], [ElectronicPrice], [WifiPrice], [SecurityCamera]) VALUES (59, 59, N'Thêm bài đăng_59350522', CAST(1000000 AS Decimal(18, 0)), 100, 5, N'<p>Mô tả chi tiết Ngày đăng: 06/Aug/2023</p><p><p></p></p>', 1, 1, 1, 1, 1000, 1000, CAST(200 AS Decimal(18, 0)), 1)
SET IDENTITY_INSERT [dbo].[REAL_ESTATE_DETAIL] OFF
GO
SET IDENTITY_INSERT [dbo].[REAL_ESTATE_TYPE] ON 

INSERT [dbo].[REAL_ESTATE_TYPE] ([Id], [RealEstateTypeName]) VALUES (1, N'Chung cư mini')
INSERT [dbo].[REAL_ESTATE_TYPE] ([Id], [RealEstateTypeName]) VALUES (2, N'Kí túc xá')
INSERT [dbo].[REAL_ESTATE_TYPE] ([Id], [RealEstateTypeName]) VALUES (3, N'Nhà trọ')
INSERT [dbo].[REAL_ESTATE_TYPE] ([Id], [RealEstateTypeName]) VALUES (4, N'Nhà đất')
INSERT [dbo].[REAL_ESTATE_TYPE] ([Id], [RealEstateTypeName]) VALUES (5, N'ssss')
INSERT [dbo].[REAL_ESTATE_TYPE] ([Id], [RealEstateTypeName]) VALUES (8, N'Demo')
INSERT [dbo].[REAL_ESTATE_TYPE] ([Id], [RealEstateTypeName]) VALUES (9, N'Demo')
INSERT [dbo].[REAL_ESTATE_TYPE] ([Id], [RealEstateTypeName]) VALUES (10, N'Demo')
INSERT [dbo].[REAL_ESTATE_TYPE] ([Id], [RealEstateTypeName]) VALUES (11, N'Demo')
SET IDENTITY_INSERT [dbo].[REAL_ESTATE_TYPE] OFF
GO
SET IDENTITY_INSERT [dbo].[Wishlist] ON 

INSERT [dbo].[Wishlist] ([Id], [AgentId], [RealEstateId], [CreatedAt]) VALUES (9, 6, 29, CAST(N'2023-07-22' AS Date))
INSERT [dbo].[Wishlist] ([Id], [AgentId], [RealEstateId], [CreatedAt]) VALUES (10, 5, 35, CAST(N'2023-08-02' AS Date))
INSERT [dbo].[Wishlist] ([Id], [AgentId], [RealEstateId], [CreatedAt]) VALUES (19, 21, 35, CAST(N'2023-08-06' AS Date))
SET IDENTITY_INSERT [dbo].[Wishlist] OFF
GO
/****** Object:  Index [UQ__MAP__C037863412A81036]    Script Date: 8/7/2023 12:07:25 AM ******/
ALTER TABLE [dbo].[MAP] ADD  CONSTRAINT [UQ__MAP__C037863412A81036] UNIQUE NONCLUSTERED 
(
	[RealEstateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__MAP__C03786347F48CB15]    Script Date: 8/7/2023 12:07:25 AM ******/
ALTER TABLE [dbo].[MAP] ADD  CONSTRAINT [UQ__MAP__C03786347F48CB15] UNIQUE NONCLUSTERED 
(
	[RealEstateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__REAL_EST__C0378634AD386268]    Script Date: 8/7/2023 12:07:25 AM ******/
ALTER TABLE [dbo].[REAL_ESTATE_DETAIL] ADD UNIQUE NONCLUSTERED 
(
	[RealEstateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__REAL_EST__C0378634C99F8473]    Script Date: 8/7/2023 12:07:25 AM ******/
ALTER TABLE [dbo].[REAL_ESTATE_DETAIL] ADD UNIQUE NONCLUSTERED 
(
	[RealEstateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AGENT] ADD  DEFAULT (CONVERT([bit],(0))) FOR [ConfirmPhoneNumber]
GO
ALTER TABLE [dbo].[PICTURE] ADD  DEFAULT ((0)) FOR [NativeHeight]
GO
ALTER TABLE [dbo].[PICTURE] ADD  DEFAULT ((0)) FOR [NativeWidth]
GO
ALTER TABLE [dbo].[REAL_ESTATE] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsConfirm]
GO
ALTER TABLE [dbo].[REAL_ESTATE] ADD  DEFAULT ('2019-12-21T00:00:00.0000000') FOR [BeginTime]
GO
ALTER TABLE [dbo].[REAL_ESTATE] ADD  DEFAULT ((0)) FOR [ConfirmStatus]
GO
ALTER TABLE [dbo].[REAL_ESTATE] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsAvaiable]
GO
ALTER TABLE [dbo].[REAL_ESTATE_DETAIL] ADD  DEFAULT (CONVERT([bit],(0))) FOR [SecurityCamera]
GO
ALTER TABLE [dbo].[AGENT]  WITH CHECK ADD FOREIGN KEY([LevelId])
REFERENCES [dbo].[LEVEL] ([Id])
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_AGENT] FOREIGN KEY([AgentId])
REFERENCES [dbo].[AGENT] ([Id])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_AGENT]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Forum] FOREIGN KEY([ForumId])
REFERENCES [dbo].[Forum] ([Id])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Forum]
GO
ALTER TABLE [dbo].[DISTRICT]  WITH CHECK ADD  CONSTRAINT [FK_DISTRICT_CITY] FOREIGN KEY([CityId])
REFERENCES [dbo].[CITY] ([Id])
GO
ALTER TABLE [dbo].[DISTRICT] CHECK CONSTRAINT [FK_DISTRICT_CITY]
GO
ALTER TABLE [dbo].[Forum]  WITH CHECK ADD  CONSTRAINT [FK_Forum_AGENT] FOREIGN KEY([AgentId])
REFERENCES [dbo].[AGENT] ([Id])
GO
ALTER TABLE [dbo].[Forum] CHECK CONSTRAINT [FK_Forum_AGENT]
GO
ALTER TABLE [dbo].[HistoryPayment]  WITH CHECK ADD FOREIGN KEY([AgentID])
REFERENCES [dbo].[AGENT] ([Id])
GO
ALTER TABLE [dbo].[Like]  WITH CHECK ADD  CONSTRAINT [FK_Like_AGENT] FOREIGN KEY([AgentId])
REFERENCES [dbo].[AGENT] ([Id])
GO
ALTER TABLE [dbo].[Like] CHECK CONSTRAINT [FK_Like_AGENT]
GO
ALTER TABLE [dbo].[Like]  WITH CHECK ADD  CONSTRAINT [FK_Like_Forum] FOREIGN KEY([ForumId])
REFERENCES [dbo].[Forum] ([Id])
GO
ALTER TABLE [dbo].[Like] CHECK CONSTRAINT [FK_Like_Forum]
GO
ALTER TABLE [dbo].[MAP]  WITH CHECK ADD  CONSTRAINT [FK__MAP__CityId__04E4BC85] FOREIGN KEY([CityId])
REFERENCES [dbo].[CITY] ([Id])
GO
ALTER TABLE [dbo].[MAP] CHECK CONSTRAINT [FK__MAP__CityId__04E4BC85]
GO
ALTER TABLE [dbo].[MAP]  WITH CHECK ADD  CONSTRAINT [FK__MAP__DistrictId__07C12930] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[DISTRICT] ([Id])
GO
ALTER TABLE [dbo].[MAP] CHECK CONSTRAINT [FK__MAP__DistrictId__07C12930]
GO
ALTER TABLE [dbo].[MAP]  WITH CHECK ADD  CONSTRAINT [FK__MAP__RealEstateI__49C3F6B7] FOREIGN KEY([RealEstateId])
REFERENCES [dbo].[REAL_ESTATE] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MAP] CHECK CONSTRAINT [FK__MAP__RealEstateI__49C3F6B7]
GO
ALTER TABLE [dbo].[MAP]  WITH CHECK ADD  CONSTRAINT [FK__MAP__WardId__0A9D95DB] FOREIGN KEY([WardId])
REFERENCES [dbo].[WARD] ([Id])
GO
ALTER TABLE [dbo].[MAP] CHECK CONSTRAINT [FK__MAP__WardId__0A9D95DB]
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK_News_AGENT] FOREIGN KEY([AgentId])
REFERENCES [dbo].[AGENT] ([Id])
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK_News_AGENT]
GO
ALTER TABLE [dbo].[NEWSPICTURE]  WITH CHECK ADD  CONSTRAINT [FK_NEWSPICTURE_News] FOREIGN KEY([NewsID])
REFERENCES [dbo].[News] ([id])
GO
ALTER TABLE [dbo].[NEWSPICTURE] CHECK CONSTRAINT [FK_NEWSPICTURE_News]
GO
ALTER TABLE [dbo].[PICTURE]  WITH CHECK ADD  CONSTRAINT [FK__PICTURE__RealEst__4CA06362] FOREIGN KEY([RealEstateId])
REFERENCES [dbo].[REAL_ESTATE] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PICTURE] CHECK CONSTRAINT [FK__PICTURE__RealEst__4CA06362]
GO
ALTER TABLE [dbo].[RATING]  WITH CHECK ADD FOREIGN KEY([RealEstateId])
REFERENCES [dbo].[REAL_ESTATE] ([Id])
GO
ALTER TABLE [dbo].[REAL_ESTATE]  WITH CHECK ADD  CONSTRAINT [FK__REAL_ESTA__Agent__3F466844] FOREIGN KEY([AgentId])
REFERENCES [dbo].[AGENT] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[REAL_ESTATE] CHECK CONSTRAINT [FK__REAL_ESTA__Agent__3F466844]
GO
ALTER TABLE [dbo].[REAL_ESTATE]  WITH CHECK ADD  CONSTRAINT [FK__REAL_ESTA__ReaEs__3E52440B] FOREIGN KEY([RealEstateTypeId])
REFERENCES [dbo].[REAL_ESTATE_TYPE] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[REAL_ESTATE] CHECK CONSTRAINT [FK__REAL_ESTA__ReaEs__3E52440B]
GO
ALTER TABLE [dbo].[REAL_ESTATE_DETAIL]  WITH CHECK ADD  CONSTRAINT [FK__REAL_ESTA__RealE__5629CD9C] FOREIGN KEY([RealEstateId])
REFERENCES [dbo].[REAL_ESTATE] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[REAL_ESTATE_DETAIL] CHECK CONSTRAINT [FK__REAL_ESTA__RealE__5629CD9C]
GO
ALTER TABLE [dbo].[SOCIAL_LOGIN]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[AGENT] ([Id])
GO
ALTER TABLE [dbo].[WARD]  WITH CHECK ADD  CONSTRAINT [FK__WARD__DistrictId__1332DBDC] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[DISTRICT] ([Id])
GO
ALTER TABLE [dbo].[WARD] CHECK CONSTRAINT [FK__WARD__DistrictId__1332DBDC]
GO
ALTER TABLE [dbo].[Wishlist]  WITH CHECK ADD  CONSTRAINT [FK_Wishlist_AGENT] FOREIGN KEY([AgentId])
REFERENCES [dbo].[AGENT] ([Id])
GO
ALTER TABLE [dbo].[Wishlist] CHECK CONSTRAINT [FK_Wishlist_AGENT]
GO
ALTER TABLE [dbo].[Wishlist]  WITH CHECK ADD  CONSTRAINT [FK_Wishlist_REAL_ESTATE] FOREIGN KEY([RealEstateId])
REFERENCES [dbo].[REAL_ESTATE] ([Id])
GO
ALTER TABLE [dbo].[Wishlist] CHECK CONSTRAINT [FK_Wishlist_REAL_ESTATE]
GO
USE [master]
GO
ALTER DATABASE [RAS_final] SET  READ_WRITE 
GO
