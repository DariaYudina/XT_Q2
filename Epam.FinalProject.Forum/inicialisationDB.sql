USE [master]
GO

/****** Object:  Database [Forum]    Script Date: 15.10.2019 12:54:33 ******/
CREATE DATABASE [Forum]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Forum', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Forum.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Forum_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Forum_log.ldf' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [Forum] SET COMPATIBILITY_LEVEL = 120
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Forum].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Forum] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Forum] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Forum] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Forum] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Forum] SET ARITHABORT OFF 
GO

ALTER DATABASE [Forum] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Forum] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Forum] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Forum] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Forum] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Forum] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Forum] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Forum] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Forum] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Forum] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Forum] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Forum] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Forum] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Forum] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Forum] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Forum] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Forum] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Forum] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [Forum] SET  MULTI_USER 
GO

ALTER DATABASE [Forum] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Forum] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Forum] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Forum] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [Forum] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [Forum] SET  READ_WRITE 
GO

