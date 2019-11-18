USE [master]
GO
/****** Object:  Database [TestDataBase]    Script Date: 19/11/2019 10:32:58 AM ******/
CREATE DATABASE [TestDataBase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TestDataBase', FILENAME = N'C:\Users\Milad.Katebi\TestDataBase.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TestDataBase_log', FILENAME = N'C:\Users\Milad.Katebi\TestDataBase_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [TestDataBase] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TestDataBase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TestDataBase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TestDataBase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TestDataBase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TestDataBase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TestDataBase] SET ARITHABORT OFF 
GO
ALTER DATABASE [TestDataBase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TestDataBase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TestDataBase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TestDataBase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TestDataBase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TestDataBase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TestDataBase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TestDataBase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TestDataBase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TestDataBase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TestDataBase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TestDataBase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TestDataBase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TestDataBase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TestDataBase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TestDataBase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TestDataBase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TestDataBase] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TestDataBase] SET  MULTI_USER 
GO
ALTER DATABASE [TestDataBase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TestDataBase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TestDataBase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TestDataBase] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TestDataBase] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TestDataBase] SET QUERY_STORE = OFF
GO
USE [TestDataBase]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [TestDataBase]
GO
/****** Object:  Table [dbo].[TestTable]    Script Date: 19/11/2019 10:32:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestTable](
	[ID] [int] NOT NULL,
	[Name] [nchar](10) NULL,
 CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TestTable] ([ID], [Name]) VALUES (1, N'something ')
INSERT [dbo].[TestTable] ([ID], [Name]) VALUES (2, N'thing     ')
USE [master]
GO
ALTER DATABASE [TestDataBase] SET  READ_WRITE 
GO
