USE [master]
GO
/****** Object:  Database [UniGrading]    Script Date: 8/4/2023 6:57:36 PM ******/
CREATE DATABASE [UniGrading]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'UniGrading', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\UniGrading.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'UniGrading_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\UniGrading_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [UniGrading] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UniGrading].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UniGrading] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [UniGrading] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [UniGrading] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [UniGrading] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [UniGrading] SET ARITHABORT OFF 
GO
ALTER DATABASE [UniGrading] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [UniGrading] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [UniGrading] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [UniGrading] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [UniGrading] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [UniGrading] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [UniGrading] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [UniGrading] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [UniGrading] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [UniGrading] SET  DISABLE_BROKER 
GO
ALTER DATABASE [UniGrading] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [UniGrading] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [UniGrading] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [UniGrading] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [UniGrading] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [UniGrading] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [UniGrading] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [UniGrading] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [UniGrading] SET  MULTI_USER 
GO
ALTER DATABASE [UniGrading] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UniGrading] SET DB_CHAINING OFF 
GO
ALTER DATABASE [UniGrading] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [UniGrading] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [UniGrading] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [UniGrading] SET QUERY_STORE = OFF
GO
USE [UniGrading]
GO
/****** Object:  Table [dbo].[addmission_tbl]    Script Date: 8/4/2023 6:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[addmission_tbl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[studentName] [varchar](50) NULL,
	[date] [varchar](50) NULL,
	[grade] [varchar](50) NULL,
	[address] [varchar](250) NULL,
	[contect] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[parentName] [varchar](50) NULL,
	[parentContect] [varchar](50) NULL,
	[fee] [varchar](50) NULL,
 CONSTRAINT [PK_addmission_tbl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[assignment_tbl]    Script Date: 8/4/2023 6:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[assignment_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[AssignmentTitle] [varchar](50) NULL,
	[AssignmentType] [varchar](50) NULL,
	[MaxScore] [varchar](50) NULL,
	[DueDate] [varchar](50) NULL,
	[Course] [varchar](50) NULL,
	[AdditionalNotes] [varchar](200) NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_assignment_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 8/4/2023 6:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[AttendanceID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NOT NULL,
	[StudentID] [int] NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[AttendanceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Events]    Script Date: 8/4/2023 6:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NULL,
	[Date] [varchar](50) NULL,
	[StartTime] [varchar](50) NULL,
	[EndTime] [varchar](50) NULL,
	[Location] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[grading_scheme_tbl]    Script Date: 8/4/2023 6:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grading_scheme_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[class] [nvarchar](100) NULL,
	[subject] [nvarchar](100) NULL,
	[assessmentType] [nvarchar](50) NULL,
	[totalMarks] [nvarchar](50) NULL,
	[passingMarks] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Result_tbl]    Script Date: 8/4/2023 6:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Result_tbl](
	[RID] [int] IDENTITY(1,1) NOT NULL,
	[date] [varchar](50) NULL,
	[rollNo] [varchar](50) NULL,
	[tMarks] [varchar](50) NULL,
	[oMarks] [varchar](50) NULL,
	[grade] [varchar](50) NULL,
	[status] [varchar](50) NULL,
	[StudentID] [int] NULL,
 CONSTRAINT [PK_Result_tbl] PRIMARY KEY CLUSTERED 
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_tbl]    Script Date: 8/4/2023 6:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_tbl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Age] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[DOB] [varchar](50) NULL,
	[Address] [varchar](200) NULL,
	[Gender] [varchar](50) NULL,
 CONSTRAINT [PK_Student_tbl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher_tbl]    Script Date: 8/4/2023 6:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher_tbl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Subject] [varchar](50) NULL,
	[Age] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[DOB] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
 CONSTRAINT [PK_Teacher_tbl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Time_tbl]    Script Date: 8/4/2023 6:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Time_tbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[day] [varchar](50) NULL,
	[fromTime] [varchar](50) NULL,
	[toTime] [varchar](50) NULL,
	[course] [varchar](50) NULL,
	[class] [varchar](50) NULL,
	[teacher] [varchar](50) NULL,
	[location] [varchar](50) NULL,
	[details] [varchar](50) NULL,
 CONSTRAINT [PK_Time_tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[uni_tbl]    Script Date: 8/4/2023 6:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[uni_tbl](
	[uid] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[details] [nvarchar](50) NULL,
	[image] [nvarchar](50) NULL,
 CONSTRAINT [PK_uni_tbl] PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student_tbl] ([ID])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Student]
GO
ALTER TABLE [dbo].[Result_tbl]  WITH CHECK ADD  CONSTRAINT [FK_Result_tbl_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student_tbl] ([ID])
GO
ALTER TABLE [dbo].[Result_tbl] CHECK CONSTRAINT [FK_Result_tbl_Student]
GO
USE [master]
GO
ALTER DATABASE [UniGrading] SET  READ_WRITE 
GO
