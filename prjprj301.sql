USE [master]
GO
/****** Object:  Database [prjprj301]    Script Date: 3/20/2023 12:43:11 AM ******/
CREATE DATABASE [prjprj301]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'prjprj301', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\prjprj301.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'prjprj301_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\prjprj301_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [prjprj301] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [prjprj301].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [prjprj301] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [prjprj301] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [prjprj301] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [prjprj301] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [prjprj301] SET ARITHABORT OFF 
GO
ALTER DATABASE [prjprj301] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [prjprj301] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [prjprj301] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [prjprj301] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [prjprj301] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [prjprj301] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [prjprj301] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [prjprj301] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [prjprj301] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [prjprj301] SET  DISABLE_BROKER 
GO
ALTER DATABASE [prjprj301] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [prjprj301] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [prjprj301] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [prjprj301] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [prjprj301] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [prjprj301] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [prjprj301] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [prjprj301] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [prjprj301] SET  MULTI_USER 
GO
ALTER DATABASE [prjprj301] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [prjprj301] SET DB_CHAINING OFF 
GO
ALTER DATABASE [prjprj301] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [prjprj301] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [prjprj301] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [prjprj301] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [prjprj301] SET QUERY_STORE = OFF
GO
USE [prjprj301]
GO
/****** Object:  User [sos]    Script Date: 3/20/2023 12:43:11 AM ******/
CREATE USER [sos] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [qwer]    Script Date: 3/20/2023 12:43:11 AM ******/
CREATE USER [qwer] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 3/20/2023 12:43:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[aid] [varchar](50) NOT NULL,
	[sid] [varchar](50) NULL,
	[sessionid] [varchar](50) NULL,
	[status] [varchar](50) NULL,
	[description] [varchar](50) NULL,
 CONSTRAINT [PK_Attendance] PRIMARY KEY CLUSTERED 
(
	[aid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 3/20/2023 12:43:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[cid] [varchar](50) NOT NULL,
	[cname] [varchar](50) NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 3/20/2023 12:43:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[gid] [varchar](50) NOT NULL,
	[gname] [varchar](50) NULL,
	[cid] [varchar](50) NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecturer]    Script Date: 3/20/2023 12:43:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecturer](
	[lid] [varchar](50) NOT NULL,
	[lname] [varchar](50) NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
 CONSTRAINT [PK_Lecturer] PRIMARY KEY CLUSTERED 
(
	[lid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 3/20/2023 12:43:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[rid] [varchar](50) NOT NULL,
	[rname] [varchar](50) NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 3/20/2023 12:43:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[sessionid] [varchar](50) NOT NULL,
	[gid] [varchar](50) NULL,
	[rid] [varchar](50) NULL,
	[tid] [varchar](50) NULL,
	[lid] [varchar](50) NULL,
	[date] [varchar](50) NULL,
	[status] [varchar](50) NULL,
 CONSTRAINT [PK_Session] PRIMARY KEY CLUSTERED 
(
	[sessionid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 3/20/2023 12:43:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[sid] [varchar](50) NOT NULL,
	[sname] [varchar](50) NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student Group]    Script Date: 3/20/2023 12:43:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student Group](
	[sid] [varchar](50) NULL,
	[gid] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Student Group] PRIMARY KEY CLUSTERED 
(
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSlot]    Script Date: 3/20/2023 12:43:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSlot](
	[tid] [varchar](50) NOT NULL,
	[description] [varchar](50) NULL,
 CONSTRAINT [PK_TimeSlot] PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Course] ([cid], [cname]) VALUES (N'HSK', N'HSK')
INSERT [dbo].[Course] ([cid], [cname]) VALUES (N'ielts', N'IELTS')
INSERT [dbo].[Course] ([cid], [cname]) VALUES (N'jlpt', N'JLPT')
INSERT [dbo].[Course] ([cid], [cname]) VALUES (N'klpt', N'KLPT')
GO
INSERT [dbo].[Group] ([gid], [gname], [cid]) VALUES (N'hska1', N'HSK A1', N'hsk')
INSERT [dbo].[Group] ([gid], [gname], [cid]) VALUES (N'hskb1', N'HSK B1', N'hsk')
INSERT [dbo].[Group] ([gid], [gname], [cid]) VALUES (N'hskb2', N'HSK B2', N'hsk')
INSERT [dbo].[Group] ([gid], [gname], [cid]) VALUES (N'hskc1', N'HSK C1', N'hsk')
INSERT [dbo].[Group] ([gid], [gname], [cid]) VALUES (N'hskc2', N'HSK C2', N'hsk')
INSERT [dbo].[Group] ([gid], [gname], [cid]) VALUES (N'ieltsa1', N'IELTS A1', N'ielts')
INSERT [dbo].[Group] ([gid], [gname], [cid]) VALUES (N'ieltsb1', N'IELTS B1', N'ielts')
INSERT [dbo].[Group] ([gid], [gname], [cid]) VALUES (N'ieltsb2', N'IELTS B2', N'ielts')
INSERT [dbo].[Group] ([gid], [gname], [cid]) VALUES (N'ieltsc1', N'IELTS C1', N'ielts')
INSERT [dbo].[Group] ([gid], [gname], [cid]) VALUES (N'ieltsc2', N'IELTS C2', N'ielts')
INSERT [dbo].[Group] ([gid], [gname], [cid]) VALUES (N'jlpta1', N'JLPT A1', N'jlpt')
INSERT [dbo].[Group] ([gid], [gname], [cid]) VALUES (N'jlptb1', N'JLPT B1', N'jlpt')
INSERT [dbo].[Group] ([gid], [gname], [cid]) VALUES (N'jlptb2', N'JLPT B2', N'jlpt')
INSERT [dbo].[Group] ([gid], [gname], [cid]) VALUES (N'jlptc1', N'JLPT C1', N'jlpt')
INSERT [dbo].[Group] ([gid], [gname], [cid]) VALUES (N'jlptc2', N'JLPT C2', N'jlpt')
INSERT [dbo].[Group] ([gid], [gname], [cid]) VALUES (N'klpta1', N'KLPT A1', N'klpt')
INSERT [dbo].[Group] ([gid], [gname], [cid]) VALUES (N'klptb1', N'KLPT B1', N'klpt')
INSERT [dbo].[Group] ([gid], [gname], [cid]) VALUES (N'klptb2', N'KLPT B2', N'klpt')
INSERT [dbo].[Group] ([gid], [gname], [cid]) VALUES (N'klptc1', N'KLPT C1', N'klpt')
INSERT [dbo].[Group] ([gid], [gname], [cid]) VALUES (N'klptc2', N'KLPT C2', N'klpt')
GO
INSERT [dbo].[Lecturer] ([lid], [lname], [username], [password]) VALUES (N'gv001', N'Nguyen Thanh Long', N'nguyenthanhlonggv001@gmail.com', N'12345')
INSERT [dbo].[Lecturer] ([lid], [lname], [username], [password]) VALUES (N'gv002', N'Bui Xuan Huan', N'buixuanhuangv002@gmail.com', N'12345')
INSERT [dbo].[Lecturer] ([lid], [lname], [username], [password]) VALUES (N'gv003', N'Ngo Ba Kha', N'ngobakhagv003@gmail.com', N'12345')
INSERT [dbo].[Lecturer] ([lid], [lname], [username], [password]) VALUES (N'gv004', N'Duong Minh Tuyen', N'duongminhtuyengv004@gmail.com', N'12345')
GO
INSERT [dbo].[Room] ([rid], [rname]) VALUES (N'hsk', N'HSK')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (N'ielts', N'IELTS')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (N'jlpt', N'JLPT')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (N'klpt', N'KLPT')
GO
INSERT [dbo].[Student] ([sid], [sname], [username], [password]) VALUES (N'HE170000', N'Cao Manh Dung', N'caomanhdunghe170000@gmail.com', N'12345')
INSERT [dbo].[Student] ([sid], [sname], [username], [password]) VALUES (N'HE170001', N'Pham Quang Thanh', N'phamquangthanhhe170001@gmail.com', N'12345')
INSERT [dbo].[Student] ([sid], [sname], [username], [password]) VALUES (N'HE170002', N'Nguyen Tien Binh', N'nguyentienbinh@gmail.com', N'12345')
INSERT [dbo].[Student] ([sid], [sname], [username], [password]) VALUES (N'HE170003', N'Tran Thanh Hai', N'tranthanhhaihe170003@gmail.com', N'12345')
INSERT [dbo].[Student] ([sid], [sname], [username], [password]) VALUES (N'HE170004', N'Pham Minh Hai', N'phamminhhaihe170004@gmail.com', N'12345')
INSERT [dbo].[Student] ([sid], [sname], [username], [password]) VALUES (N'HE170005', N'Duong Bao Ngoc ', N'duongbaongoche170005@gmail.com', N'12345')
INSERT [dbo].[Student] ([sid], [sname], [username], [password]) VALUES (N'HE170006', N'Vu Ngoc Linh', N'vungoclinhhe170006@gmail.com', N'12345')
INSERT [dbo].[Student] ([sid], [sname], [username], [password]) VALUES (N'HE170007', N'Nguyen The Phung Long', N'nguyenthephunglonghe170007@gmail.com', N'12345')
INSERT [dbo].[Student] ([sid], [sname], [username], [password]) VALUES (N'HE170008', N'Nguyen Quang Quy', N'nguyenquangquyhe170008@gmail.com', N'12345')
INSERT [dbo].[Student] ([sid], [sname], [username], [password]) VALUES (N'HE170009', N'Nguyen Duc Hieu', N'nguyenduchieuhe170009@gmail.com', N'12345')
INSERT [dbo].[Student] ([sid], [sname], [username], [password]) VALUES (N'HE170010', N'Bui Thi Thuy Linh', N'buithithuylinhhe170010', N'12345')
INSERT [dbo].[Student] ([sid], [sname], [username], [password]) VALUES (N'HE170011', N'Nguyen Thanh Tung', N'nguyenthanhtunghe170011@gmail.com', N'12345')
INSERT [dbo].[Student] ([sid], [sname], [username], [password]) VALUES (N'HE170012', N'Dinh Manh Hung', N'dinhmanhhunghe170012@gmail.com', N'12345')
GO
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (N'HE170001', N'hska1')
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (N'HE170000', N'ieltsa1')
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (N'HE170000', N'jlpta1')
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (N'HE170001', N'klpta1')
GO
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (N'14h-16h', N'2h')
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (N'16h10-16h10', N'2h')
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (N'7h30-9h30', N'2h')
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (N'9h40-11h40', N'2h')
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Session] FOREIGN KEY([sessionid])
REFERENCES [dbo].[Session] ([sessionid])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Session]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Student] FOREIGN KEY([sid])
REFERENCES [dbo].[Student] ([sid])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Student]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Group] FOREIGN KEY([gid])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Group]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Lecturer] FOREIGN KEY([lid])
REFERENCES [dbo].[Lecturer] ([lid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Lecturer]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Room] FOREIGN KEY([rid])
REFERENCES [dbo].[Room] ([rid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Room]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_TimeSlot] FOREIGN KEY([tid])
REFERENCES [dbo].[TimeSlot] ([tid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_TimeSlot]
GO
ALTER TABLE [dbo].[Student Group]  WITH CHECK ADD  CONSTRAINT [FK_Student Group_Group] FOREIGN KEY([gid])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[Student Group] CHECK CONSTRAINT [FK_Student Group_Group]
GO
ALTER TABLE [dbo].[Student Group]  WITH CHECK ADD  CONSTRAINT [FK_Student Group_Student] FOREIGN KEY([sid])
REFERENCES [dbo].[Student] ([sid])
GO
ALTER TABLE [dbo].[Student Group] CHECK CONSTRAINT [FK_Student Group_Student]
GO
USE [master]
GO
ALTER DATABASE [prjprj301] SET  READ_WRITE 
GO
