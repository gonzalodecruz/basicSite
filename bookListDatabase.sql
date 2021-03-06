USE [master]
GO
/****** Object:  Database [BookListDatabase]    Script Date: 5/25/2020 10:18:14 PM ******/
CREATE DATABASE [BookListDatabase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BookListDatabase', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MARKET\MSSQL\DATA\BookListDatabase.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BookListDatabase_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MARKET\MSSQL\DATA\BookListDatabase_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BookListDatabase] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BookListDatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BookListDatabase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BookListDatabase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BookListDatabase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BookListDatabase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BookListDatabase] SET ARITHABORT OFF 
GO
ALTER DATABASE [BookListDatabase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BookListDatabase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BookListDatabase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BookListDatabase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BookListDatabase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BookListDatabase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BookListDatabase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BookListDatabase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BookListDatabase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BookListDatabase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BookListDatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BookListDatabase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BookListDatabase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BookListDatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BookListDatabase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BookListDatabase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BookListDatabase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BookListDatabase] SET RECOVERY FULL 
GO
ALTER DATABASE [BookListDatabase] SET  MULTI_USER 
GO
ALTER DATABASE [BookListDatabase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BookListDatabase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BookListDatabase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BookListDatabase] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BookListDatabase] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BookListDatabase', N'ON'
GO
ALTER DATABASE [BookListDatabase] SET QUERY_STORE = OFF
GO
USE [BookListDatabase]
GO
/****** Object:  Table [dbo].[BookList]    Script Date: 5/25/2020 10:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookList](
	[Id] [uniqueidentifier] NOT NULL,
	[Status] [varchar](5000) NULL,
	[Title] [varchar](5000) NULL,
	[PublicationDate] [varchar](max) NULL,
	[PublishingHouse] [varchar](5000) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventLog]    Script Date: 5/25/2020 10:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventLog](
	[EventCount] [int] NOT NULL,
	[LastEventRan] [varchar](200) NOT NULL,
	[LastEvent] [datetime] NOT NULL,
	[ID] [int] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[BookList] ([Id], [Status], [Title], [PublicationDate], [PublishingHouse]) VALUES (N'aedeef32-0af3-4685-9d17-39656e1a2f96', N'Active', N'The Fellowship Of the Ring', N'7/29/1954 12:00:00 AM', N'Unwin & Allen')
INSERT [dbo].[BookList] ([Id], [Status], [Title], [PublicationDate], [PublishingHouse]) VALUES (N'1a36ece6-07c4-45ea-bed0-7ed99f00733d', N'Active', N'The Two Towers', N'11/11/1954 12:00:00 AM', N'Unwin & Allen')
INSERT [dbo].[BookList] ([Id], [Status], [Title], [PublicationDate], [PublishingHouse]) VALUES (N'd7bc6d19-6708-43f4-9a3f-df1b187538b0', N'Active', N'The Retun of the King', N'10/20/1955 12:00:00 AM', N'Unwin & Allen')
INSERT [dbo].[BookList] ([Id], [Status], [Title], [PublicationDate], [PublishingHouse]) VALUES (N'd7bc6d19-6708-43f4-9a3f-df1b187538b1', N'Closed', N'The Retun of the Ring', N'10/20/1955 12:00:00 AM', N'Unwin & Allen')
GO
INSERT [dbo].[EventLog] ([EventCount], [LastEventRan], [LastEvent], [ID]) VALUES (0, N'UserAggregate.Morkaleb', CAST(N'2020-05-22T17:35:31.000' AS DateTime), 1)
GO
USE [master]
GO
ALTER DATABASE [BookListDatabase] SET  READ_WRITE 
GO
