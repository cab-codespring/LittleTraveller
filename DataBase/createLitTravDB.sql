USE [master]
GO
/****** Object:  Database [LittleTravellersDB]    Script Date: 10/17/2011 17:11:33 ******/
CREATE DATABASE [LittleTravellersDB] ON  PRIMARY 
( NAME = N'LittleTravellersDB', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\LittleTravellersDB.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LittleTravellersDB_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\LittleTravellersDB_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LittleTravellersDB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LittleTravellersDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LittleTravellersDB] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [LittleTravellersDB] SET ANSI_NULLS OFF
GO
ALTER DATABASE [LittleTravellersDB] SET ANSI_PADDING OFF
GO
ALTER DATABASE [LittleTravellersDB] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [LittleTravellersDB] SET ARITHABORT OFF
GO
ALTER DATABASE [LittleTravellersDB] SET AUTO_CLOSE ON
GO
ALTER DATABASE [LittleTravellersDB] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [LittleTravellersDB] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [LittleTravellersDB] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [LittleTravellersDB] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [LittleTravellersDB] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [LittleTravellersDB] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [LittleTravellersDB] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [LittleTravellersDB] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [LittleTravellersDB] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [LittleTravellersDB] SET  ENABLE_BROKER
GO
ALTER DATABASE [LittleTravellersDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [LittleTravellersDB] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [LittleTravellersDB] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [LittleTravellersDB] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [LittleTravellersDB] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [LittleTravellersDB] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [LittleTravellersDB] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [LittleTravellersDB] SET  READ_WRITE
GO
ALTER DATABASE [LittleTravellersDB] SET RECOVERY SIMPLE
GO
ALTER DATABASE [LittleTravellersDB] SET  MULTI_USER
GO
ALTER DATABASE [LittleTravellersDB] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [LittleTravellersDB] SET DB_CHAINING OFF
GO
USE [LittleTravellersDB]
GO
/****** Object:  Table [dbo].[StyleType]    Script Date: 10/17/2011 17:11:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StyleType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DESC] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[states]    Script Date: 10/17/2011 17:11:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[states](
	[name] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SizeType]    Script Date: 10/17/2011 17:11:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SizeType](
	[sizeTypeName] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 10/17/2011 17:11:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[sizeTypeName] [nvarchar](50) NULL,
	[sizeVal] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Season]    Script Date: 10/17/2011 17:11:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Season](
	[SeasonCode] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 10/17/2011 17:11:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[sku] [nvarchar](50) NOT NULL,
	[seasonID] [nchar](10) NULL,
	[colorID] [nchar](10) NULL,
	[color2ID] [nchar](10) NULL,
	[color3ID] [nchar](10) NULL,
	[sizeType] [nchar](10) NULL,
	[size] [nchar](10) NULL,
	[styleTypeID] [nchar](10) NULL,
	[designID] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Design]    Script Date: 10/17/2011 17:11:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Design](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[desc] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 10/17/2011 17:11:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerNum] [smallint] NOT NULL,
	[CompanyName] [nvarchar](50) NOT NULL,
	[BillToAddr1] [nvarchar](50) NOT NULL,
	[BillToAddr2] [nvarchar](50) NULL,
	[BillToCity] [nvarchar](50) NOT NULL,
	[BillToState] [nchar](10) NOT NULL,
	[BillToZip5] [nchar](10) NOT NULL,
	[BillToZip4] [nchar](10) NULL,
	[BillToPhone] [nvarchar](50) NULL,
	[BillToFax] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[ShipToAddr1] [nvarchar](50) NULL,
	[ShipToAddr2] [nvarchar](50) NULL,
	[ShipToCity] [nvarchar](50) NULL,
	[ShipToState] [nchar](10) NULL,
	[ShipToZip5] [nchar](10) NULL,
	[ShipToZip4] [nchar](10) NULL,
	[ShipToPhone] [nvarchar](50) NULL,
	[ShipToFax] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 10/17/2011 17:11:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[colorCode] [nchar](10) NULL
) ON [PRIMARY]
GO
