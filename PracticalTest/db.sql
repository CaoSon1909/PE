USE [master]
GO
/****** Object:  Database [PracticalTest]    Script Date: 11/9/2020 2:41:21 PM ******/
CREATE DATABASE [PracticalTest]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PracticalTest', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS1\MSSQL\DATA\PracticalTest.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PracticalTest_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS1\MSSQL\DATA\PracticalTest_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PracticalTest] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PracticalTest].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PracticalTest] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PracticalTest] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PracticalTest] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PracticalTest] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PracticalTest] SET ARITHABORT OFF 
GO
ALTER DATABASE [PracticalTest] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PracticalTest] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PracticalTest] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PracticalTest] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PracticalTest] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PracticalTest] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PracticalTest] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PracticalTest] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PracticalTest] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PracticalTest] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PracticalTest] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PracticalTest] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PracticalTest] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PracticalTest] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PracticalTest] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PracticalTest] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PracticalTest] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PracticalTest] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PracticalTest] SET  MULTI_USER 
GO
ALTER DATABASE [PracticalTest] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PracticalTest] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PracticalTest] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PracticalTest] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PracticalTest] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PracticalTest] SET QUERY_STORE = OFF
GO
USE [PracticalTest]
GO
/****** Object:  Table [dbo].[tbl_Achivement]    Script Date: 11/9/2020 2:41:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Achivement](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[year] [int] NOT NULL,
	[typeOfChampion] [varchar](30) NOT NULL,
	[clubid] [varchar](10) NOT NULL,
 CONSTRAINT [PK_tbl_Achivement] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Club]    Script Date: 11/9/2020 2:41:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Club](
	[id] [varchar](10) NOT NULL,
	[clubName] [nvarchar](50) NOT NULL,
	[noOfChampion] [varchar](30) NOT NULL,
	[country] [varchar](100) NOT NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_User]    Script Date: 11/9/2020 2:41:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_User](
	[userId] [varchar](30) NOT NULL,
	[password] [varchar](20) NOT NULL,
	[fullName] [varchar](50) NOT NULL,
	[isManager] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_Achivement] ON 

INSERT [dbo].[tbl_Achivement] ([id], [year], [typeOfChampion], [clubid]) VALUES (1, 2010, N'championLeague', N'club1')
INSERT [dbo].[tbl_Achivement] ([id], [year], [typeOfChampion], [clubid]) VALUES (2, 2012, N'europa leage', N'club2')
INSERT [dbo].[tbl_Achivement] ([id], [year], [typeOfChampion], [clubid]) VALUES (3, 2014, N'worldcup', N'club3')
INSERT [dbo].[tbl_Achivement] ([id], [year], [typeOfChampion], [clubid]) VALUES (4, 2013, N'europa league', N'club1')
INSERT [dbo].[tbl_Achivement] ([id], [year], [typeOfChampion], [clubid]) VALUES (5, 2014, N'vietnamleague', N'club2')
INSERT [dbo].[tbl_Achivement] ([id], [year], [typeOfChampion], [clubid]) VALUES (6, 2017, N'vo dich bong da', N'club2')
INSERT [dbo].[tbl_Achivement] ([id], [year], [typeOfChampion], [clubid]) VALUES (7, 2018, N'dondw', N'club2')
INSERT [dbo].[tbl_Achivement] ([id], [year], [typeOfChampion], [clubid]) VALUES (23, 1234, N'12', N'club1')
INSERT [dbo].[tbl_Achivement] ([id], [year], [typeOfChampion], [clubid]) VALUES (25, 1234, N'abcwinning', N'club1')
INSERT [dbo].[tbl_Achivement] ([id], [year], [typeOfChampion], [clubid]) VALUES (28, 1234, N'abcwinning', N'club1')
INSERT [dbo].[tbl_Achivement] ([id], [year], [typeOfChampion], [clubid]) VALUES (31, 2020, N'laala', N'club1')
SET IDENTITY_INSERT [dbo].[tbl_Achivement] OFF
GO
INSERT [dbo].[tbl_Club] ([id], [clubName], [noOfChampion], [country], [status]) VALUES (N'club1', N'clubname1', N'2', N'hanoi', 1)
INSERT [dbo].[tbl_Club] ([id], [clubName], [noOfChampion], [country], [status]) VALUES (N'club2', N'clubname2', N'3', N'hcm', 0)
INSERT [dbo].[tbl_Club] ([id], [clubName], [noOfChampion], [country], [status]) VALUES (N'club3', N'clubname3', N'2', N'vungtau', 1)
GO
INSERT [dbo].[tbl_User] ([userId], [password], [fullName], [isManager]) VALUES (N'admin', N'admin', N'admindeptrai', 1)
INSERT [dbo].[tbl_User] ([userId], [password], [fullName], [isManager]) VALUES (N'khanhkt', N'123', N'thay khanh dep trai', 0)
INSERT [dbo].[tbl_User] ([userId], [password], [fullName], [isManager]) VALUES (N'sonpc', N'123', N'sonpcdeptrai', 0)
GO
ALTER TABLE [dbo].[tbl_Achivement]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Achivement_tbl_Club] FOREIGN KEY([clubid])
REFERENCES [dbo].[tbl_Club] ([id])
GO
ALTER TABLE [dbo].[tbl_Achivement] CHECK CONSTRAINT [FK_tbl_Achivement_tbl_Club]
GO
USE [master]
GO
ALTER DATABASE [PracticalTest] SET  READ_WRITE 
GO
