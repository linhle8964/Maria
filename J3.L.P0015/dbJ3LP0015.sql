USE [master]
GO
/****** Object:  Database [J3LP0015]    Script Date: 05/18/2018 11:22:00 ******/
CREATE DATABASE [J3LP0015] ON  PRIMARY 
( NAME = N'J3LP0015', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\J3LP0015.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'J3LP0015_log', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\J3LP0015_log.LDF' , SIZE = 504KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [J3LP0015] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [J3LP0015].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [J3LP0015] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [J3LP0015] SET ANSI_NULLS OFF
GO
ALTER DATABASE [J3LP0015] SET ANSI_PADDING OFF
GO
ALTER DATABASE [J3LP0015] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [J3LP0015] SET ARITHABORT OFF
GO
ALTER DATABASE [J3LP0015] SET AUTO_CLOSE ON
GO
ALTER DATABASE [J3LP0015] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [J3LP0015] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [J3LP0015] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [J3LP0015] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [J3LP0015] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [J3LP0015] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [J3LP0015] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [J3LP0015] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [J3LP0015] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [J3LP0015] SET  ENABLE_BROKER
GO
ALTER DATABASE [J3LP0015] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [J3LP0015] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [J3LP0015] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [J3LP0015] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [J3LP0015] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [J3LP0015] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [J3LP0015] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [J3LP0015] SET  READ_WRITE
GO
ALTER DATABASE [J3LP0015] SET RECOVERY SIMPLE
GO
ALTER DATABASE [J3LP0015] SET  MULTI_USER
GO
ALTER DATABASE [J3LP0015] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [J3LP0015] SET DB_CHAINING OFF
GO
USE [J3LP0015]
GO
/****** Object:  Table [dbo].[HomePage]    Script Date: 05/18/2018 11:22:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HomePage](
	[Title] [varchar](200) NULL,
	[context] [ntext] NULL,
	[picture] [varchar](100) NULL,
	[sign1] [varchar](100) NULL,
	[sign2] [varchar](100) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[HomePage] ([Title], [context], [picture], [sign1], [sign2]) VALUES (N'Maria''s Cosy Cafe', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', N'avata.jpg', N'Kind regards', N'Maria Bagnarelli')
/****** Object:  Table [dbo].[FindCafe]    Script Date: 05/18/2018 11:22:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FindCafe](
	[addres] [varchar](200) NOT NULL,
	[tel] [int] NOT NULL,
	[email] [varchar](200) NOT NULL,
	[closed] [varchar](100) NULL,
	[opened1] [varchar](100) NULL,
	[opened2] [varchar](100) NULL,
	[pictureMap] [varchar](100) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[FindCafe] ([addres], [tel], [email], [closed], [opened1], [opened2], [pictureMap]) VALUES (N'Copenhagen, Denmark', 123456, N'your-email@your-email.com', N'Monday: Closed', N'Tuesday - Friday: 10:00 - 20:00', N'Saturday and Sunday: 11.00 - 21:00', N'map.png')
/****** Object:  Table [dbo].[Cake]    Script Date: 05/18/2018 11:22:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cake](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](200) NULL,
	[price] [float] NULL,
	[sortContent] [ntext] NULL,
	[Content] [ntext] NULL,
	[picture] [varchar](200) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Cake] ON
INSERT [dbo].[Cake] ([id], [Title], [price], [sortContent], [Content], [picture]) VALUES (1, N'In the Afternoon', 9500, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', N'cake1.jpg')
INSERT [dbo].[Cake] ([id], [Title], [price], [sortContent], [Content], [picture]) VALUES (2, N'Traditional Cakes', 10500, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', N'cake2.jpg')
INSERT [dbo].[Cake] ([id], [Title], [price], [sortContent], [Content], [picture]) VALUES (3, N'About my Cakes', 5500, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', N'cake.jpg')
INSERT [dbo].[Cake] ([id], [Title], [price], [sortContent], [Content], [picture]) VALUES (4, N'In the Afternoon', 9500, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', N'cake1.jpg')
INSERT [dbo].[Cake] ([id], [Title], [price], [sortContent], [Content], [picture]) VALUES (5, N'Traditional Cakes', 10500, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', N'cake2.jpg')
INSERT [dbo].[Cake] ([id], [Title], [price], [sortContent], [Content], [picture]) VALUES (6, N'About my Cakes', 5500, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', N'cake.jpg')
INSERT [dbo].[Cake] ([id], [Title], [price], [sortContent], [Content], [picture]) VALUES (7, N'In the Afternoon', 9500, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', N'cake1.jpg')
INSERT [dbo].[Cake] ([id], [Title], [price], [sortContent], [Content], [picture]) VALUES (8, N'Traditional Cakes', 10500, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', N'cake2.jpg')
SET IDENTITY_INSERT [dbo].[Cake] OFF
