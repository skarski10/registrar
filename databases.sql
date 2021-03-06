USE [master]
GO
/****** Object:  Database [registrar]    Script Date: 2/28/2017 4:17:25 PM ******/
CREATE DATABASE [registrar]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'registrar', FILENAME = N'C:\Users\epicodus\registrar.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'registrar_log', FILENAME = N'C:\Users\epicodus\registrar_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [registrar] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [registrar].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [registrar] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [registrar] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [registrar] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [registrar] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [registrar] SET ARITHABORT OFF 
GO
ALTER DATABASE [registrar] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [registrar] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [registrar] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [registrar] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [registrar] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [registrar] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [registrar] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [registrar] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [registrar] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [registrar] SET  ENABLE_BROKER 
GO
ALTER DATABASE [registrar] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [registrar] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [registrar] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [registrar] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [registrar] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [registrar] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [registrar] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [registrar] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [registrar] SET  MULTI_USER 
GO
ALTER DATABASE [registrar] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [registrar] SET DB_CHAINING OFF 
GO
ALTER DATABASE [registrar] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [registrar] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [registrar] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [registrar] SET QUERY_STORE = OFF
GO
USE [registrar]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [registrar]
GO
/****** Object:  Table [dbo].[courses]    Script Date: 2/28/2017 4:17:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[courses](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[course] [varchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[departments]    Script Date: 2/28/2017 4:17:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[departments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[department] [varchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[departments_courses]    Script Date: 2/28/2017 4:17:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[departments_courses](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[department_id] [int] NULL,
	[course_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[students]    Script Date: 2/28/2017 4:17:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[students](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[students_courses]    Script Date: 2/28/2017 4:17:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[students_courses](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NULL,
	[course_id] [int] NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[courses] ON 

INSERT [dbo].[courses] ([id], [course]) VALUES (1, N'Math')
INSERT [dbo].[courses] ([id], [course]) VALUES (2, N'English')
INSERT [dbo].[courses] ([id], [course]) VALUES (3, N'P.E.')
INSERT [dbo].[courses] ([id], [course]) VALUES (4, N'Science')
SET IDENTITY_INSERT [dbo].[courses] OFF
SET IDENTITY_INSERT [dbo].[students] ON 

INSERT [dbo].[students] ([id], [name]) VALUES (1, N'Kory')
INSERT [dbo].[students] ([id], [name]) VALUES (2, N'Nicole')
INSERT [dbo].[students] ([id], [name]) VALUES (3, N'John')
INSERT [dbo].[students] ([id], [name]) VALUES (4, N'Charlie')
INSERT [dbo].[students] ([id], [name]) VALUES (5, N'Stella')
SET IDENTITY_INSERT [dbo].[students] OFF
SET IDENTITY_INSERT [dbo].[students_courses] ON 

INSERT [dbo].[students_courses] ([id], [student_id], [course_id]) VALUES (1, 2, 3)
INSERT [dbo].[students_courses] ([id], [student_id], [course_id]) VALUES (2, 2, 3)
INSERT [dbo].[students_courses] ([id], [student_id], [course_id]) VALUES (3, 2, 1)
INSERT [dbo].[students_courses] ([id], [student_id], [course_id]) VALUES (4, 1, 2)
INSERT [dbo].[students_courses] ([id], [student_id], [course_id]) VALUES (5, 1, 1)
INSERT [dbo].[students_courses] ([id], [student_id], [course_id]) VALUES (6, 4, 3)
INSERT [dbo].[students_courses] ([id], [student_id], [course_id]) VALUES (7, 4, 3)
INSERT [dbo].[students_courses] ([id], [student_id], [course_id]) VALUES (8, 4, 1)
SET IDENTITY_INSERT [dbo].[students_courses] OFF
USE [master]
GO
ALTER DATABASE [registrar] SET  READ_WRITE 
GO
