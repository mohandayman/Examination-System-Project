USE [Examination_DB]
GO
/****** Object:  Table [dbo].[Choice]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Choice](
	[Q_Id] [int] NOT NULL,
	[Choice_Content] [varchar](150) NOT NULL,
	[Correct_Ans] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Q_Id] ASC,
	[Choice_Content] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[Cr_Id] [int] IDENTITY(1,1) NOT NULL,
	[Cr_Name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cr_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[Dept_Id] [int] IDENTITY(1,1) NOT NULL,
	[Dept_Name] [varchar](50) NOT NULL,
	[Manager_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Dept_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam](
	[Ex_Num] [int] IDENTITY(1,1) NOT NULL,
	[Cr_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Ex_Num] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exam_Questions]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam_Questions](
	[Exam_Num] [int] NOT NULL,
	[Q_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Exam_Num] ASC,
	[Q_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ins_Dept_Cr]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ins_Dept_Cr](
	[Ins_Id] [int] NOT NULL,
	[Dept_id] [int] NOT NULL,
	[Cr_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Ins_Id] ASC,
	[Dept_id] ASC,
	[Cr_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[Ins_Id] [int] IDENTITY(1,1) NOT NULL,
	[Ins_Name] [varchar](50) NOT NULL,
	[Ins_Email] [varchar](50) NOT NULL,
	[Ins_Password] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Ins_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[Q_Id] [int] IDENTITY(1,1) NOT NULL,
	[Q_Content] [varchar](1000) NOT NULL,
	[type] [varchar](10) NOT NULL,
	[Topic_Name] [varchar](100) NULL,
	[Cr_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Q_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stu_Courses]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stu_Courses](
	[St_Id] [int] NOT NULL,
	[Cr_Id] [int] NOT NULL,
	[Cr_grade] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[St_Id] ASC,
	[Cr_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stu_Exam_Question]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stu_Exam_Question](
	[St_Id] [int] NULL,
	[Exam_Num] [int] NULL,
	[Q_Id] [int] NULL,
	[Answer] [varchar](400) NULL,
	[Grade] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[St_Id] [int] IDENTITY(1,1) NOT NULL,
	[St_Name] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Dept_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[St_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TF]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TF](
	[Q_Id] [int] NULL,
	[Correct_Ans] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Topic]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topic](
	[Cr_Id] [int] NOT NULL,
	[Topic_Name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Cr_Id_Topic_Name] PRIMARY KEY CLUSTERED 
(
	[Cr_Id] ASC,
	[Topic_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (1, N'align-items', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (1, N'flex-direction', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (1, N'flex-wrap', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (1, N'justify-content', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (2, N'center', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (2, N'flex-end', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (2, N'flex-start', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (2, N'space-around', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (3, N'flex-basis', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (3, N'flex-grow', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (3, N'flex-wrap', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (3, N'margin', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (4, N'align-items', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (4, N'align-self', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (4, N'flex-wrap', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (4, N'justify-content', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (5, N'align-items', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (5, N'flex-direction', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (5, N'flex-wrap', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (5, N'justify-content', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (6, N'center', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (6, N'flex-end', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (6, N'space-around', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (6, N'space-between', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (7, N'flex-basis', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (7, N'flex-grow', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (7, N'flex-wrap', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (7, N'margin', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (8, N'align-content', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (8, N'align-items', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (8, N'flex-wrap', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (8, N'justify-content', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (9, N'column', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (9, N'column-reverse', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (9, N'row', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (9, N'row-reverse', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (10, N'align-content', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (10, N'align-items', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (10, N'flex-wrap', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (10, N'justify-content', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (21, N'all of the above', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (21, N'print', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (21, N'screen', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (21, N'speech', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (22, N'device-width', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (22, N'max-width', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (22, N'min-width', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (22, N'width', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (23, N'device-height', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (23, N'height', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (23, N'max-height', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (23, N'min-height', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (24, N'all of the above', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (24, N'and', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (24, N'not', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (24, N'only', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (25, N'all of the above', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (25, N'print and (max-width: 480px)', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (25, N'screen and (min-width: 768px)', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (25, N'speech and (orientation: portrait)', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (26, N'@media print and (max-width: 480px)', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (26, N'@media screen and (min-width: 768px)', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (26, N'@media speech and (orientation: portrait)', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (26, N'all of the above', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (27, N'device-independent', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (27, N'device-oriented', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (27, N'device-related', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (27, N'device-specific', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (28, N'aspect-height', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (28, N'aspect-ratio', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (28, N'aspect-size', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (28, N'aspect-width', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (29, N'aspect-ratio', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (29, N'device-width', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (29, N'font-size', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (29, N'height', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (30, N'@media (max-width: 768px)', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (30, N'@media (min-width: 768px)', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (30, N'@media (width <= 768px)', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (30, N'@media (width >= 768px)', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (41, N'cd', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (41, N'ls', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (41, N'mkdir', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (41, N'rm', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (42, N'cd', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (42, N'ls', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (42, N'mkdir', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (42, N'mv', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (43, N'cd .', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (43, N'cd ..', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (43, N'cd /', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (43, N'cd ~', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (44, N'cp', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (44, N'ls', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (44, N'mv', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (44, N'rm', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (45, N'cp', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (45, N'ls', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (45, N'mv', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (45, N'rm', 0)
GO
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (46, N'cp', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (46, N'ls', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (46, N'mv', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (46, N'rm', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (47, N'cat', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (47, N'cp', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (47, N'mv', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (47, N'rm', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (48, N'cd', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (48, N'find', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (48, N'grep', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (48, N'ls', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (49, N'chgrp', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (49, N'chmod', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (49, N'chown', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (49, N'rm', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (50, N'gz', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (50, N'tar', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (50, N'unzip', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (50, N'zip', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (61, N'apt-get', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (61, N'dnf', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (61, N'pacman', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (61, N'zypper', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (62, N'apt-cache search', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (62, N'dnf search', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (62, N'pacman -Ss', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (62, N'yum search', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (63, N'apt-get', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (63, N'dnf', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (63, N'pacman', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (63, N'zypper', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (64, N'apt-get', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (64, N'dnf', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (64, N'pacman', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (64, N'zypper', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (65, N'apt-get install', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (65, N'dnf install', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (65, N'pacman -S', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (65, N'zypper install', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (66, N'apt-get', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (66, N'dnf', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (66, N'pacman', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (66, N'zypper', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (67, N'apt-get update', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (67, N'dnf update', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (67, N'pacman -Syu', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (67, N'yum update', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (68, N'apt-get', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (68, N'dnf', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (68, N'pacman', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (68, N'zypper', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (69, N'apt-get remove', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (69, N'dnf remove', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (69, N'pacman -R', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (69, N'zypper remove', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (70, N'apt-get', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (70, N'dnf', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (70, N'pacman', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (70, N'zypper', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (81, N'To allow users to access, modify and distribute the source code', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (81, N'To ensure software is developed in a secure environment', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (81, N'To make software free of charge', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (81, N'To restrict the use of software to a particular group of users', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (82, N'Apache license', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (82, N'BSD license', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (82, N'GNU General Public License (GPL)', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (82, N'MIT license', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (83, N'Apache license', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (83, N'Creative Commons license', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (83, N'GNU General Public License (GPL)', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (83, N'MIT license', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (84, N'Apache license', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (84, N'BSD license', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (84, N'GNU General Public License (GPL)', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (84, N'MIT license', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (85, N'BSD license', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (85, N'GNU Lesser General Public License (LGPL)', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (85, N'MIT license', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (85, N'Mozilla Public License', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (86, N'Apache license', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (86, N'BSD license', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (86, N'GNU Lesser General Public License (LGPL)', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (86, N'MIT license', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (87, N'Apache license', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (87, N'BSD license', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (87, N'GNU General Public License (GPL)', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (87, N'MIT license', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (88, N'Apache license', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (88, N'BSD license', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (88, N'Eclipse Public License', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (88, N'MIT license', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (89, N'Creative Commons license', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (89, N'GNU General Public License (GPL)', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (89, N'MIT license', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (89, N'Mozilla Public License', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (90, N'Creative Commons license', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (90, N'GNU General Public License (GPL)', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (90, N'GNU Lesser General Public License (LGPL)', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (90, N'Mozilla Public License', 0)
GO
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (101, N'Create a pull request', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (101, N'Fork the project', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (101, N'Join the projects mailing list', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (101, N'Submit a bug report', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (102, N'Both A and B', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (102, N'Donating money', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (102, N'None of the above', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (102, N'Writing code', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (103, N'All of the above', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (103, N'Ask friends for recommendations', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (103, N'Read programming books', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (103, N'Search GitHub for projects related to your interests', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (104, N'A request to create a new project', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (104, N'A request to delete a project', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (104, N'A request to fork a project', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (104, N'A request to merge changes into a project', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (105, N'Communication', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (105, N'Marketing', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (105, N'Patience', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (105, N'Programming', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (106, N'All of the above', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (106, N'Building your resume', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (106, N'Helping improve software that you use', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (106, N'Learning new skills', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (107, N'The process of creating a new project', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (107, N'The process of forking a project', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (107, N'The process of reviewing code changes before they are merged', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (107, N'The process of submitting code changes', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (108, N'Donating money', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (108, N'Submitting bug reports', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (108, N'Testing software', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (108, N'Writing documentation', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (109, N'Building a portfolio', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (109, N'Improving software that you use', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (109, N'Learning new skills', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (109, N'Making money', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (110, N'All of the above', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (110, N'Creating a new project from scratch', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (110, N'Forking a project and making small changes', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (110, N'Submitting bug reports without making code changes', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (121, N'The process of copying an entire repository', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (121, N'The process of creating a new line of development within a repository', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (121, N'The process of deleting a repository', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (121, N'The process of renaming a repository', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (122, N'A clone of a repository', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (122, N'A label assigned to a commit', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (122, N'A separate line of development within a repository', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (122, N'A single file within a repository', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (123, N'The process of combining two or more branches into one', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (123, N'The process of copying a branch to another repository', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (123, N'The process of deleting a branch', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (123, N'The process of renaming a branch', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (124, N'A situation where Git is unable to automatically merge changes from different branches', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (124, N'A situation where two or more branches have the same name', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (124, N'A situation where two or more commits have the same message', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (124, N'A situation where two or more developers try to modify the same file at the same time', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (125, N'A merge that combines changes from two or more branches in a linear way', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (125, N'A merge that deletes a branch after merging', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (125, N'A merge that requires a specific command to execute', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (125, N'A merge that requires manual resolution of conflicts', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (126, N'A merge that combines changes from three or more branches', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (126, N'A merge that creates a new branch after merging', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (126, N'A merge that requires manual resolution of conflicts', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (126, N'A merge that uses a common ancestor to combine changes from different branches', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (127, N'To create a new branch from an existing branch', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (127, N'To delete a branch', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (127, N'To merge changes from two or more branches', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (127, N'To save changes temporarily without committing them', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (128, N'The process of creating a new branch from an existing branch', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (128, N'The process of deleting a branch', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (128, N'The process of merging two or more branches', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (128, N'The process of selecting specific commits to apply to another branch', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (129, N'The process of creating a new branch from an existing branch', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (129, N'The process of deleting a branch', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (129, N'The process of merging changes from one branch to another', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (129, N'The process of rewriting the history of a branch', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (130, N'A request to create a new branch', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (130, N'A request to delete a branch', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (130, N'A request to merge changes from one branch to another', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (130, N'A request to rename a branch', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (141, N'Centralized workflow', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (141, N'Decentralized workflow', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (141, N'Feature branch workflow', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (141, N'Forking workflow', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (142, N'It allows developers to work on separate features in isolation', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (142, N'It enables multiple teams to work on the same project simultaneously', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (142, N'It provides a clear audit trail of changes made to the codebase', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (142, N'It simplifies the process of merging changes back into the main branch', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (143, N'git clone', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (143, N'git commit', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (143, N'git fetch', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (143, N'git pull', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (144, N'To alert developers when changes made in separate branches conflict with each other', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (144, N'To enforce a specific Git workflow on all team members', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (144, N'To ensure that all changes to the codebase are approved by a project manager', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (144, N'To prevent two or more people from editing the same file at the same time', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (145, N'git branch', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (145, N'git checkout', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (145, N'git merge', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (145, N'git push', 0)
GO
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (146, N'To create a backup copy of the codebase in case of data loss or corruption', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (146, N'To ensure that all code changes adhere to a specific coding style or standard', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (146, N'To keep track of the changes made to the codebase over time', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (146, N'To request that other developers review and approve your changes before they are merged into the main branch', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (147, N'git clone', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (147, N'git fetch', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (147, N'git merge', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (147, N'git push', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (148, N'To combine multiple commits into a single commit for easier management', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (148, N'To create a new branch that includes changes made in multiple existing branches', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (148, N'To merge changes from one branch into another while preserving the history of both branches', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (148, N'To update your local branch with the changes made in a remote repository', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (149, N'git blame', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (149, N'git diff', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (149, N'git log', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (149, N'git status', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (150, N'To assign a unique identifier to each commit in a repository', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (150, N'To create a backup copy of the entire repository in case of data loss or corruption', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (150, N'To mark a specific point in the commit history of a repository', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (150, N'To track changes made to specific files or directories in a repository', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (181, N'HyperText Managing Language', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (181, N'HyperText Markup Language', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (181, N'HyperText Modeling Language', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (181, N'HyperText Modular Language', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (182, N'<a>', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (182, N'<h1>', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (182, N'<img>', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (182, N'<p>', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (183, N'<div>', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (183, N'<h1>', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (183, N'<p>', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (183, N'<span>', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (184, N'<dl>', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (184, N'<li>', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (184, N'<ol>', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (184, N'<ul>', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (185, N'alt', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (185, N'href', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (185, N'src', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (185, N'title', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (186, N'<table>', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (186, N'<td>', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (186, N'<th>', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (186, N'<tr>', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (187, N'alt', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (187, N'href', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (187, N'src', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (187, N'title', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (188, N'<div>', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (188, N'<h1> to <h6>', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (188, N'<p>', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (188, N'<span>', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (189, N'<a>', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (189, N'<br>', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (189, N'<hr>', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (189, N'<p>', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (190, N'<button>', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (190, N'<form>', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (190, N'<input>', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (190, N'<select>', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (201, N'Boolean', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (201, N'Integer', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (201, N'String', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (201, N'Symbol', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (202, N'function = myFunction()', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (202, N'function myFunction()', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (202, N'myFunction = function()', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (202, N'myFunction: function()', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (203, N'Data Object Model', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (203, N'Digital Output Module', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (203, N'Direct Output Mapping', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (203, N'Document Object Model', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (204, N'The "==" operator checks for equality, but performs type coercion if the types of the operands are different.', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (204, N'The "===" operator checks for equality without performing type coercion.', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (204, N'The "===" operator checks for equality, but performs type coercion if the types of the operands are different.', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (204, N'There is no difference between "==" and "===" in JavaScript.', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (205, N'An event is a function in JavaScript that is called when an error occurs.', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (205, N'An event is a loop in JavaScript that runs continuously.', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (205, N'An event is an action or occurrence that happens in the browser, such as a user clicking a button.', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (205, N'There is no such thing as an event in JavaScript.', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (206, N'Null and undefined are the same thing in JavaScript.', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (206, N'Null is a value that represents no value or an empty value, whereas undefined is a value that has not been assigned.', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (206, N'There is no difference between null and undefined in JavaScript.', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (206, N'Undefined is a value that represents no value or an empty value, whereas null is a value that has not been assigned.', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (207, N'The "this" keyword has no purpose in JavaScript.', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (207, N'The "this" keyword refers to the global object in JavaScript.', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (207, N'The "this" keyword refers to the object that the function is a method of.', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (207, N'The "this" keyword refers to the parent object of the object that the function is a method of.', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (208, N'"let" is used for declaring global variables, while "var" is used for declaring local variables.', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (208, N'"var" is used for declaring global variables, while "let" is used for declaring local variables.', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (208, N'The main difference between "let" and "var" is that "let" is block-scoped, while "var" is function-scoped.', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (208, N'There is no difference between "let" and "var" in JavaScript.', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (209, N'A closure is a function that has access to variables in its outer function scope.', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (209, N'A closure is a function that is only defined within another function.', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (209, N'A closure is a function that returns another function.', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (209, N'A closure is a function that takes another function as an argument.', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (210, N'let variables can be reassigned, while var variables cannot.', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (210, N'let variables have function scope, while var variables have block scope.', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (210, N'var variables can be reassigned, while let variables cannot.', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (210, N'var variables have function scope, while let variables have block scope.', 0)
GO
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (222, N'getElementByClass', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (222, N'getElementById', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (222, N'getElementsByTag', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (222, N'querySelector', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (223, N'addElement()', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (223, N'appendChild()', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (223, N'createElement()', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (223, N'createNode()', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (224, N'To get all elements with a specific class name', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (224, N'To get all elements with a specific ID', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (224, N'To get all elements with a specific tag name', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (224, N'To get the first element with a specific class name', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (225, N'parentContainer', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (225, N'parentElement', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (225, N'parentNode', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (225, N'parentTag', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (226, N'document.addNewElement()', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (226, N'document.appendNewElement()', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (226, N'document.createElement()', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (226, N'document.createNode()', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (227, N'deleteChild()', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (227, N'deleteNode()', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (227, N'removeChild()', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (227, N'removeNode()', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (228, N'replaceChild()', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (228, N'replaceElement()', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (228, N'replaceNode()', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (228, N'switchElement()', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (229, N'childNodes', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (229, N'children', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (229, N'descendants', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (229, N'siblings', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (230, N'cloneNode()', 1)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (230, N'copy()', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (230, N'duplicate()', 0)
INSERT [dbo].[Choice] ([Q_Id], [Choice_Content], [Correct_Ans]) VALUES (230, N'replicate()', 0)
GO
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([Cr_Id], [Cr_Name]) VALUES (1, N'HTML and CSS')
INSERT [dbo].[Course] ([Cr_Id], [Cr_Name]) VALUES (2, N'JavaScript Fundamentals')
INSERT [dbo].[Course] ([Cr_Id], [Cr_Name]) VALUES (4, N'Linux Essentials')
INSERT [dbo].[Course] ([Cr_Id], [Cr_Name]) VALUES (5, N'Open Source Software')
INSERT [dbo].[Course] ([Cr_Id], [Cr_Name]) VALUES (3, N'Responsive Web Design')
INSERT [dbo].[Course] ([Cr_Id], [Cr_Name]) VALUES (6, N'Version Control with Git')
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([Dept_Id], [Dept_Name], [Manager_Id]) VALUES (1, N'Professional Web Development', 1)
INSERT [dbo].[Department] ([Dept_Id], [Dept_Name], [Manager_Id]) VALUES (2, N'Open Source Applications', 2)
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
INSERT [dbo].[Ins_Dept_Cr] ([Ins_Id], [Dept_id], [Cr_Id]) VALUES (1, 1, 1)
INSERT [dbo].[Ins_Dept_Cr] ([Ins_Id], [Dept_id], [Cr_Id]) VALUES (2, 2, 4)
INSERT [dbo].[Ins_Dept_Cr] ([Ins_Id], [Dept_id], [Cr_Id]) VALUES (3, 1, 2)
INSERT [dbo].[Ins_Dept_Cr] ([Ins_Id], [Dept_id], [Cr_Id]) VALUES (4, 1, 3)
INSERT [dbo].[Ins_Dept_Cr] ([Ins_Id], [Dept_id], [Cr_Id]) VALUES (5, 2, 5)
INSERT [dbo].[Ins_Dept_Cr] ([Ins_Id], [Dept_id], [Cr_Id]) VALUES (6, 2, 6)
GO
SET IDENTITY_INSERT [dbo].[Instructor] ON 

INSERT [dbo].[Instructor] ([Ins_Id], [Ins_Name], [Ins_Email], [Ins_Password]) VALUES (1, N'Ali Abdullah', N'ali.abdullah@example.com', N'password1')
INSERT [dbo].[Instructor] ([Ins_Id], [Ins_Name], [Ins_Email], [Ins_Password]) VALUES (2, N'Fatima Ahmed', N'fatima.ahmed@example.com', N'password2')
INSERT [dbo].[Instructor] ([Ins_Id], [Ins_Name], [Ins_Email], [Ins_Password]) VALUES (3, N'Hassan Ibrahim', N'hassan.ibrahim@example.com', N'password3')
INSERT [dbo].[Instructor] ([Ins_Id], [Ins_Name], [Ins_Email], [Ins_Password]) VALUES (4, N'Sara Khalid', N'sara.khalid@example.com', N'password4')
INSERT [dbo].[Instructor] ([Ins_Id], [Ins_Name], [Ins_Email], [Ins_Password]) VALUES (5, N'Mona Hamza', N'mona.hamza@example.com', N'password5')
INSERT [dbo].[Instructor] ([Ins_Id], [Ins_Name], [Ins_Email], [Ins_Password]) VALUES (6, N'Ahmed Hassan', N'ahmed.hassan@example.com', N'password6')
SET IDENTITY_INSERT [dbo].[Instructor] OFF
GO
SET IDENTITY_INSERT [dbo].[Question] ON 

INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (1, N'Which of the following properties is used to specify the direction in which flex items are placed within a flex container?', N'MCQ', N'Flexbox Layout', 3)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (2, N'Which of the following values of the justify-content property is used to align flex items along the center of the main axis?', N'MCQ', N'Flexbox Layout', 3)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (3, N'Which of the following properties is used to specify the amount of space between flex items?', N'MCQ', N'Flexbox Layout', 3)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (4, N'Which of the following values of the align-items property is used to align flex items along the cross axis at the bottom of the container?', N'MCQ', N'Flexbox Layout', 3)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (5, N'Which of the following properties is used to specify the order in which flex items are displayed within a flex container?', N'MCQ', N'Flexbox Layout', 3)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (6, N'Which of the following properties is used to specify the size of a flex item along the main axis?', N'MCQ', N'Flexbox Layout', 3)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (7, N'Which of the following values of the flex-wrap property is used to force all flex items to appear on a single line?', N'MCQ', N'Flexbox Layout', 3)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (8, N'Which of the following properties is used to specify the alignment of flex items along the cross axis when they do not take up all the available space?', N'MCQ', N'Flexbox Layout', 3)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (9, N'Which of the following values of the flex-direction property is used to reverse the order of flex items within a flex container?', N'MCQ', N'Flexbox Layout', 3)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (10, N'Which of the following properties is used to specify the distribution of extra space along the main axis?', N'MCQ', N'Flexbox Layout', 3)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (11, N'The flex-wrap property is used to specify whether flex items should be wrapped onto multiple lines or not.', N'TF', N'Flexbox Layout', 3)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (12, N'The align-items property is used to align flex items along the main axis.', N'TF', N'Flexbox Layout', 3)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (13, N'Flexbox layout is only useful for creating simple, one-dimensional layouts.', N'TF', N'Flexbox Layout', 3)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (14, N'The flex-grow property is used to specify the amount by which a flex item should grow relative to other flex items in the container.', N'TF', N'Flexbox Layout', 3)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (15, N'The flex-shrink property is used to specify the amount by which a flex item should shrink relative to other flex items in the container.', N'TF', N'Flexbox Layout', 3)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (16, N'The order property is used to specify the order in which flex items are displayed within a flex container.', N'TF', N'Flexbox Layout', 3)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (17, N'The justify-content property is used to align flex items along the cross axis.', N'TF', N'Flexbox Layout', 3)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (18, N'The align-content property is used to align flex items along the cross axis when they do not take up all the available space.', N'TF', N'Flexbox Layout', 3)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (19, N'The flex-basis property is used to specify the size of a flex item along the main axis.', N'TF', N'Flexbox Layout', 3)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (20, N'The flex-direction property is used to reverse the order of flex items within a flex container.', N'TF', N'Flexbox Layout', 3)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (21, N'Which of the following is the correct syntax for defining a media query?', N'MCQ', N'Media Queries', 3)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (22, N'Media queries are used to apply different styles based on which of the following?', N'MCQ', N'Media Queries', 3)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (23, N'What is the default width of the viewport in CSS?', N'MCQ', N'Media Queries', 3)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (24, N'Which of the following media queries will apply styles only to devices with a maximum width of 600 pixels?', N'MCQ', N'Media Queries', 3)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (25, N'Which of the following media queries will apply styles only to devices with a screen resolution greater than 144 dpi?', N'MCQ', N'Media Queries', 3)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (26, N'Which of the following media queries will apply styles only to devices with a screen resolution less than 96 dpi?', N'MCQ', N'Media Queries', 3)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (27, N'Which of the following is the correct syntax for defining a media query that targets devices with a screen resolution greater than 72 dpi?', N'MCQ', N'Media Queries', 3)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (28, N'Which of the following is the correct syntax for defining a media query that targets devices with a screen resolution less than 72 dpi?', N'MCQ', N'Media Queries', 3)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (29, N'Which of the following media queries will apply styles only to devices with a screen width greater than or equal to 768 pixels and less than or equal to 1024 pixels?', N'MCQ', N'Media Queries', 3)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (30, N'Which of the following media queries will apply styles only to devices with a screen width less than 768 pixels or greater than 1024 pixels?', N'MCQ', N'Media Queries', 3)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (31, N'The @media rule is used to define which of the following?', N'TF', N'Media Queries', 3)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (32, N'Media queries can be used to target specific devices based on their screen size.', N'TF', N'Media Queries', 3)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (33, N'Media queries can be used to target specific devices based on their orientation.', N'TF', N'Media Queries', 3)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (34, N'Media queries can be used to target specific devices based on their pixel density.', N'TF', N'Media Queries', 3)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (35, N'Media queries can be used to target specific devices based on their browser type.', N'TF', N'Media Queries', 3)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (36, N'Media queries can be used to apply different styles to a webpage based on the size of the browser window.', N'TF', N'Media Queries', 3)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (37, N'The min-width property is used to specify the minimum width of a device that a media query should apply to.', N'TF', N'Media Queries', 3)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (38, N'Media queries are only used to apply styles to mobile devices.', N'TF', N'Media Queries', 3)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (39, N'Media queries can be used to apply different styles to a webpage based on the devices screen resolution.', N'TF', N'Media Queries', 3)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (40, N'Media queries can be used to apply different styles to a webpage based on the devices color scheme.', N'TF', N'Media Queries', 3)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (41, N'What is the command used to create a new directory in the command line?', N'MCQ', N'Command Line Basics', 4)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (42, N'Which command is used to display the contents of a directory?', N'MCQ', N'Command Line Basics', 4)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (43, N'What command is used to move up one directory level?', N'MCQ', N'Command Line Basics', 4)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (44, N'What command is used to remove a directory?', N'MCQ', N'Command Line Basics', 4)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (45, N'Which command is used to create a new file?', N'MCQ', N'Command Line Basics', 4)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (46, N'Which command is used to rename a file?', N'MCQ', N'Command Line Basics', 4)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (47, N'What is the command used to copy a file?', N'MCQ', N'Command Line Basics', 4)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (48, N'What is the command used to move a file?', N'MCQ', N'Command Line Basics', 4)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (49, N'Which command is used to delete a file?', N'MCQ', N'Command Line Basics', 4)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (50, N'What is the command used to display the manual pages for a command?', N'MCQ', N'Command Line Basics', 4)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (51, N'The command "ls" is used to list the contents of a directory. ', N'TF', N'Command Line Basics', 4)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (52, N'The command "mkdir" is used to remove a directory. ', N'TF', N'Command Line Basics', 4)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (53, N'The command "cd" is used to change the working directory. ', N'TF', N'Command Line Basics', 4)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (54, N'The command "rm" is used to remove files and directories. ', N'TF', N'Command Line Basics', 4)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (55, N'The command "mv" is used to move files or directories from one location to another. ', N'TF', N'Command Line Basics', 4)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (56, N'The command "cp" is used to copy files or directories. ', N'TF', N'Command Line Basics', 4)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (57, N'The command "pwd" is used to print the current working directory. ', N'TF', N'Command Line Basics', 4)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (58, N'The command "cat" is used to concatenate files and print the output to the console. ', N'TF', N'Command Line Basics', 4)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (59, N'The command "grep" is used to search for specific text within files. ', N'TF', N'Command Line Basics', 4)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (60, N'The command "chmod" is used to change the permissions of files and directories. ', N'TF', N'Command Line Basics', 4)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (61, N'What is the command used to install a package in npm?', N'MCQ', N'Package Management', 4)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (62, N'What is the command used to uninstall a package in npm?', N'MCQ', N'Package Management', 4)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (63, N'What is the purpose of package.json file in npm?', N'MCQ', N'Package Management', 4)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (64, N'Which command is used to update all the packages to their latest version in npm?', N'MCQ', N'Package Management', 4)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (65, N'What is the command used to install a package globally in npm?', N'MCQ', N'Package Management', 4)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (66, N'Which command is used to list all the globally installed packages in npm?', N'MCQ', N'Package Management', 4)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (67, N'What is the command used to view the details of a specific package in npm?', N'MCQ', N'Package Management', 4)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (68, N'What is the command used to install a specific version of a package in npm?', N'MCQ', N'Package Management', 4)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (69, N'What is the command used to search for a package in npm?', N'MCQ', N'Package Management', 4)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (70, N'What is the command used to initialize a new npm package?', N'MCQ', N'Package Management', 4)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (71, N'Package management is a way to automate the process of installing, updating, and removing software packages.', N'TF', N'Package Management', 4)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (72, N'RPM is a package manager used in Debian-based Linux distributions.', N'TF', N'Package Management', 4)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (73, N'The apt-get command is used to search for packages in Debian-based Linux distributions.', N'TF', N'Package Management', 4)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (74, N'The yum package manager is commonly used in Red Hat-based Linux distributions.', N'TF', N'Package Management', 4)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (75, N'The dpkg command is used to install packages in Debian-based Linux distributions.', N'TF', N'Package Management', 4)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (76, N'The pacman command is used to search for packages in Arch Linux.', N'TF', N'Package Management', 4)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (77, N'Zypper is a package manager used in Fedora Linux.', N'TF', N'Package Management', 4)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (78, N'The dnf command is used to update packages in Red Hat-based Linux distributions.', N'TF', N'Package Management', 4)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (79, N'The rpm command is used to remove packages in Red Hat-based Linux distributions.', N'TF', N'Package Management', 4)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (80, N'The zypper package manager is commonly used in openSUSE Linux distributions.', N'TF', N'Package Management', 4)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (81, N'What is the primary goal of open source licensing?', N'MCQ', N'Open Source Licensing', 5)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (82, N'Which open source license requires that any software derived from the original source code be released under the same license?', N'MCQ', N'Open Source Licensing', 5)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (83, N'Which open source license allows for the creation of proprietary, closed-source software using open source components?', N'MCQ', N'Open Source Licensing', 5)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (84, N'Which open source license is most commonly used for projects related to the Linux kernel?', N'MCQ', N'Open Source Licensing', 5)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (85, N'Which open source license requires that the original copyright notice and disclaimer be included in all copies or substantial portions of the software?', N'MCQ', N'Open Source Licensing', 5)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (86, N'Which open source license is notable for requiring that any changes to the software be distributed under the same license?', N'MCQ', N'Open Source Licensing', 5)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (87, N'Which open source license is used by the majority of projects hosted on GitHub?', N'MCQ', N'Open Source Licensing', 5)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (88, N'Which open source license is designed to be compatible with both the GNU General Public License (GPL) and proprietary software licenses?', N'MCQ', N'Open Source Licensing', 5)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (89, N'Which open source license permits the use of the licensed software for any purpose, including commercial use, but disclaims any warranties or liability for damages?', N'MCQ', N'Open Source Licensing', 5)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (90, N'Which open source license permits the creation of derivative works, but requires that they be released under the same license as the original software?', N'MCQ', N'Open Source Licensing', 5)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (91, N'The primary benefit of using open source software is cost savings', N'TF', N'Open Source Licensing', 5)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (92, N'Proprietary software can be modified and redistributed by anyone', N'TF', N'Open Source Licensing', 5)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (93, N'The GPL is a permissive open source license.', N'TF', N'Open Source Licensing', 5)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (94, N'Copyleft licenses require that any derivative works also be licensed under the same license.', N'TF', N'Open Source Licensing', 5)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (95, N'The Apache license allows for more freedom than the GPL.', N'TF', N'Open Source Licensing', 5)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (96, N'Open source software is always available for free.', N'TF', N'Open Source Licensing', 5)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (97, N'The MIT license is a copyleft license.', N'TF', N'Open Source Licensing', 5)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (98, N'Open source licenses allow for greater flexibility in software development.', N'TF', N'Open Source Licensing', 5)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (99, N'The Free Software Foundation is responsible for creating and maintaining the most widely used open source licenses.', N'TF', N'Open Source Licensing', 5)
GO
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (100, N'The Creative Commons license is an example of an open source license used for creative works such as music and writing.', N'TF', N'Open Source Licensing', 5)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (101, N'What is the first step to contributing to an open source project?', N'MCQ', N'Contributing to Open Source Projects', 5)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (102, N'Which of the following is a common way to contribute to an open source project?', N'MCQ', N'Contributing to Open Source Projects', 5)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (103, N'Which of the following is a good way to find open source projects to contribute to?', N'MCQ', N'Contributing to Open Source Projects', 5)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (104, N'What is a pull request?', N'MCQ', N'Contributing to Open Source Projects', 5)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (105, N'Which of the following is not an important skill for contributing to open source projects?', N'MCQ', N'Contributing to Open Source Projects', 5)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (106, N'What is the benefit of contributing to open source projects?', N'MCQ', N'Contributing to Open Source Projects', 5)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (107, N'What is code review?', N'MCQ', N'Contributing to Open Source Projects', 5)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (108, N'Which of the following is not a common type of contribution to open source projects?', N'MCQ', N'Contributing to Open Source Projects', 5)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (109, N'Which of the following is not a common reason for contributing to open source projects?', N'MCQ', N'Contributing to Open Source Projects', 5)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (110, N'What is a good way to get started contributing to open source projects?', N'MCQ', N'Contributing to Open Source Projects', 5)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (111, N'Contributing to an open source project can help improve your coding skills.', N'TF', N'Contributing to Open Source Projects', 5)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (112, N'In order to contribute to an open source project, you need to be an expert in the programming language used by the project.', N'TF', N'Contributing to Open Source Projects', 5)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (113, N'Contributing to an open source project is only beneficial for people who want to become professional software developers.', N'TF', N'Contributing to Open Source Projects', 5)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (114, N'It is not necessary to read the projects contribution guidelines before making a contribution', N'TF', N'Contributing to Open Source Projects', 5)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (115, N'Open source projects do not welcome contributions from beginners or people with limited experience', N'TF', N'Contributing to Open Source Projects', 5)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (116, N'Contributing to an open source project is a good way to build your professional network and make new connections', N'TF', N'Contributing to Open Source Projects', 5)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (117, N'Contributing to an open source project requires a significant amount of time commitment', N'TF', N'Contributing to Open Source Projects', 5)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (118, N'Contributing to an open source project can help you gain recognition and enhance your reputation in the software development community', N'TF', N'Contributing to Open Source Projects', 5)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (119, N'Contributing to an open source project is only useful for people who are looking for paid job opportunities in software development', N'TF', N'Contributing to Open Source Projects', 5)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (120, N'Open source projects only accept contributions in the form of code, and do not welcome other types of contributions such as documentation or testing', N'TF', N'Contributing to Open Source Projects', 5)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (121, N'What is branching in Git?', N'MCQ', N'Branching and Merging', 6)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (122, N'What is a branch in Git?', N'MCQ', N'Branching and Merging', 6)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (123, N'What is merging in Git?', N'MCQ', N'Branching and Merging', 6)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (124, N'What is a merge conflict in Git?', N'MCQ', N'Branching and Merging', 6)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (125, N'What is a fast-forward merge in Git?', N'MCQ', N'Branching and Merging', 6)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (126, N'What is a three-way merge in Git?', N'MCQ', N'Branching and Merging', 6)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (127, N'What is the purpose of Git stash?', N'MCQ', N'Branching and Merging', 6)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (128, N'What is cherry-picking in Git?', N'MCQ', N'Branching and Merging', 6)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (129, N'What is rebasing in Git?', N'MCQ', N'Branching and Merging', 6)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (130, N'What is a pull request in Git?', N'MCQ', N'Branching and Merging', 6)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (131, N'Branching allows developers to work on multiple versions of the code simultaneously.', N'TF', N'Branching and Merging', 6)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (132, N'Merging combines multiple versions of code into a single codebase.', N'TF', N'Branching and Merging', 6)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (133, N'Branching and merging are only necessary for large-scale software projects.', N'TF', N'Branching and Merging', 6)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (134, N'Git automatically resolves all merge conflicts.', N'TF', N'Branching and Merging', 6)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (135, N'A "merge commit" is created when Git merges two branches.', N'TF', N'Branching and Merging', 6)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (136, N'Git only allows merging between two branches.', N'TF', N'Branching and Merging', 6)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (137, N'Branches in Git can be merged multiple times.', N'TF', N'Branching and Merging', 6)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (138, N'Branching and merging are only useful for distributed version control systems.', N'TF', N'Branching and Merging', 6)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (139, N'Git provides tools for visualizing the history of branches and merges.', N'TF', N'Branching and Merging', 6)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (140, N'The "rebase" command in Git is an alternative to merging.', N'TF', N'Branching and Merging', 6)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (141, N'Which of the following is NOT a common Git workflow?', N'MCQ', N'Git Workflow', 6)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (142, N'What is the main advantage of using a feature branch workflow in Git?', N'MCQ', N'Git Workflow', 6)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (143, N'Which Git command is used to download a remote repository to your local machine?', N'MCQ', N'Git Workflow', 6)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (144, N'What is the purpose of a merge conflict in Git?', N'MCQ', N'Git Workflow', 6)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (145, N'Which Git command is used to create a new branch?', N'MCQ', N'Git Workflow', 6)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (146, N'What is the purpose of a pull request in Git?', N'MCQ', N'Git Workflow', 6)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (147, N'Which Git command is used to merge changes from one branch into another?', N'MCQ', N'Git Workflow', 6)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (148, N'What is the purpose of rebasing in Git?', N'MCQ', N'Git Workflow', 6)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (149, N'Which Git command is used to view the commit history of a repository?', N'MCQ', N'Git Workflow', 6)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (150, N'What is the purpose of a Git tag?', N'MCQ', N'Git Workflow', 6)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (151, N'In Git Workflow, the master branch should be updated frequently.', N'TF', N'Git Workflow', 6)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (152, N'Git Workflow includes only one branch.', N'TF', N'Git Workflow', 6)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (153, N'In Git Workflow, feature branches are created for new features or bug fixes.', N'TF', N'Git Workflow', 6)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (154, N'The only way to merge changes into a branch is by using a pull request.', N'TF', N'Git Workflow', 6)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (155, N'Git Workflow allows for multiple developers to work on the same branch at the same time.', N'TF', N'Git Workflow', 6)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (156, N'In Git Workflow, code reviews are conducted before merging changes into the main branch.', N'TF', N'Git Workflow', 6)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (157, N'In Git Workflow, hotfix branches are created to fix critical bugs.', N'TF', N'Git Workflow', 6)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (158, N'Rebasing is used in Git Workflow to combine changes from different branches.', N'TF', N'Git Workflow', 6)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (159, N'In Git Workflow, the development branch should be kept stable at all times.', N'TF', N'Git Workflow', 6)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (160, N'Git Workflow is only used by small teams.', N'TF', N'Git Workflow', 6)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (161, N'What does CSS stand for?', N'mcq', N'CSS Styling', 1)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (162, N'Which CSS property is used to set the background color of an element?', N'mcq', N'CSS Styling', 1)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (163, N'Which of the following is NOT a valid CSS length unit?', N'mcq', N'CSS Styling', 1)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (164, N'Which CSS property is used to set the font family of an element?', N'mcq', N'CSS Styling', 1)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (165, N'Which of the following is NOT a valid CSS positioning property?', N'mcq', N'CSS Styling', 1)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (166, N'Which CSS property is used to set the width of an element?', N'mcq', N'CSS Styling', 1)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (167, N'Which CSS property is used to control the amount of space between lines of text?', N'mcq', N'CSS Styling', 1)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (168, N'Which CSS property is used to set the text alignment of an element?', N'mcq', N'CSS Styling', 1)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (169, N'Which of the following is NOT a valid CSS box model property?', N'mcq', N'CSS Styling', 1)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (170, N'Which CSS property is used to set the opacity of an element?', N'mcq', N'CSS Styling', 1)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (171, N'CSS stands for Cascading Style Sheets.', N'tf', N'CSS Styling', 1)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (172, N'The color property is used to set the background color of an element in CSS.', N'tf', N'CSS Styling', 1)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (173, N'The font-family property is used to set the font of an element in CSS.', N'tf', N'CSS Styling', 1)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (174, N'The margin property is used to control the amount of space between an element''s border and the surrounding elements.', N'tf', N'CSS Styling', 1)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (175, N'The line-height property is used to set the height of an element in CSS.', N'tf', N'CSS Styling', 1)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (176, N'The text-align property is used to set the horizontal alignment of text in an element.', N'tf', N'CSS Styling', 1)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (177, N'The padding property is used to control the amount of space between an element''s content and its border.', N'tf', N'CSS Styling', 1)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (178, N'The border-radius property is used to set the shape of an element''s border.', N'tf', N'CSS Styling', 1)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (179, N'The position property is used to control the position of an element on a web page.', N'tf', N'CSS Styling', 1)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (180, N'The opacity property is used to control the transparency of an element in CSS.', N'tf', N'CSS Styling', 1)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (181, N'What does HTML stand for?', N'mcq', N'HTML Basics', 1)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (182, N'Which tag is used to define a hyperlink in HTML?', N'mcq', N'HTML Basics', 1)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (183, N'Which tag is used to define a paragraph in HTML?', N'mcq', N'HTML Basics', 1)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (184, N'Which tag is used to define an unordered list in HTML?', N'mcq', N'HTML Basics', 1)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (185, N'Which attribute is used to specify the URL of the image in HTML?', N'mcq', N'HTML Basics', 1)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (186, N'Which tag is used to define a table in HTML?', N'mcq', N'HTML Basics', 1)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (187, N'Which attribute is used to specify the alternate text for an image in HTML?', N'mcq', N'HTML Basics', 1)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (188, N'Which tag is used to define a heading in HTML?', N'mcq', N'HTML Basics', 1)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (189, N'Which tag is used to define a line break in HTML?', N'mcq', N'HTML Basics', 1)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (190, N'Which tag is used to define a form in HTML?', N'mcq', N'HTML Basics', 1)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (191, N'HTML is a programming language.', N'tf', N'HTML Basics', 1)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (192, N'The <title> tag is used to define the title of a web page in HTML.', N'tf', N'HTML Basics', 1)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (193, N'The <body> tag is used to define the main content of a web page in HTML.', N'tf', N'HTML Basics', 1)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (194, N'The <ul> tag is used to define an ordered list in HTML.', N'tf', N'HTML Basics', 1)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (195, N'The <img> tag is used to display images in HTML.', N'tf', N'HTML Basics', 1)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (196, N'The <th> tag is used to define table cells in HTML.', N'tf', N'HTML Basics', 1)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (197, N'The <a> tag is used to define hyperlinks in HTML.', N'tf', N'HTML Basics', 1)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (198, N'The <input> tag is used to create a text input field in HTML.', N'tf', N'HTML Basics', 1)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (199, N'The <head> tag is used to define the header section of a web page in HTML.', N'tf', N'HTML Basics', 1)
GO
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (200, N'The <button> tag is used to create clickable buttons in HTML.', N'tf', N'HTML Basics', 1)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (201, N'Which of the following is NOT a primitive data type in JavaScript?', N'mcq', N'JavaScript Syntax', 2)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (202, N'What is the correct way to declare a function in JavaScript?', N'mcq', N'JavaScript Syntax', 2)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (203, N'What does DOM stand for in the context of JavaScript?', N'mcq', N'JavaScript Syntax', 2)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (204, N'What is the difference between "==" and "===" in JavaScript?', N'mcq', N'JavaScript Syntax', 2)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (205, N'What is an event in JavaScript?', N'mcq', N'JavaScript Syntax', 2)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (206, N'What is the purpose of the "use strict" statement in JavaScript?', N'mcq', N'JavaScript Syntax', 2)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (207, N'What is the difference between null and undefined in JavaScript?', N'mcq', N'JavaScript Syntax', 2)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (208, N'What is the purpose of the "this" keyword in JavaScript?', N'mcq', N'JavaScript Syntax', 2)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (209, N'What is a closure in JavaScript?', N'mcq', N'JavaScript Syntax', 2)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (210, N'What is the difference between let and var in JavaScript?', N'mcq', N'JavaScript Syntax', 2)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (211, N'In JavaScript, variable names are not case-sensitive.', N'TF', N'JavaScript Syntax', 2)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (212, N'In JavaScript, the "===!" operator checks if two values are equal, including their data types.', N'TF', N'JavaScript Syntax', 2)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (213, N'JavaScript code can be embedded directly into HTML pages using the <script> tag.', N'TF', N'JavaScript Syntax', 2)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (214, N'In JavaScript, a variable can be declared without assigning a value to it.', N'TF', N'JavaScript Syntax', 2)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (215, N'In JavaScript, the "++" operator increments a number by 1.', N'TF', N'JavaScript Syntax', 2)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (216, N'In JavaScript, the "&&" operator performs a logical OR operation.', N'TF', N'JavaScript Syntax', 2)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (217, N'In JavaScript, a string can be enclosed in either single quotes or double quotes.', N'TF', N'JavaScript Syntax', 2)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (218, N'In JavaScript, the "typeof" operator returns the data type of a value.', N'TF', N'JavaScript Syntax', 2)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (219, N'In JavaScript, the "!" operator is used to negate a boolean value.', N'TF', N'JavaScript Syntax', 2)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (220, N'In JavaScript, the "var" keyword is used to declare a variable.', N'TF', N'JavaScript Syntax', 2)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (221, N'What does DOM stand for?', N'MCQ', N'DOM Manipulation', 2)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (222, N'Which property is used to access an element in the DOM by its ID?', N'MCQ', N'DOM Manipulation', 2)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (223, N'Which method is used to add a new element to the DOM?', N'MCQ', N'DOM Manipulation', 2)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (224, N'What is the use of getElementsByClassName() method in JavaScript?', N'MCQ', N'DOM Manipulation', 2)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (225, N'Which property returns the parent node of an element?', N'MCQ', N'DOM Manipulation', 2)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (226, N'How to create an HTML element dynamically using JavaScript?', N'MCQ', N'DOM Manipulation', 2)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (227, N'Which method is used to remove an element from the DOM?', N'MCQ', N'DOM Manipulation', 2)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (228, N'Which method is used to replace an element in the DOM?', N'MCQ', N'DOM Manipulation', 2)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (229, N'Which property returns a collection of all child nodes of an element?', N'MCQ', N'DOM Manipulation', 2)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (230, N'Which method is used to clone an element in the DOM?', N'MCQ', N'DOM Manipulation', 2)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (231, N'In DOM manipulation, the getElementsByTagName() method returns a collection of elements with a specified tag name.', N'TF', N'DOM Manipulation', 2)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (232, N'In DOM manipulation, the appendChild() method is used to add a new child node to an element.', N'TF', N'DOM Manipulation', 2)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (233, N'In DOM manipulation, the innerHTML property can be used to set the HTML content of an element.', N'TF', N'DOM Manipulation', 2)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (234, N'In DOM manipulation, the createElement() method is used to create a new HTML element.', N'TF', N'DOM Manipulation', 2)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (235, N'In DOM manipulation, the removeChild() method is used to remove an element from the DOM.', N'TF', N'DOM Manipulation', 2)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (236, N'In DOM manipulation, the replaceChild() method is used to replace an existing child node with a new one.', N'TF', N'DOM Manipulation', 2)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (237, N'In DOM manipulation, the parentNode property returns the parent node of an element.', N'TF', N'DOM Manipulation', 2)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (238, N'In DOM manipulation, the getElementsByClassName() method returns a collection of elements with a specified class name.', N'TF', N'DOM Manipulation', 2)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (239, N'In DOM manipulation, the cloneNode() method creates a copy of an element, including its child nodes.', N'TF', N'DOM Manipulation', 2)
INSERT [dbo].[Question] ([Q_Id], [Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (240, N'In DOM manipulation, the firstChild property returns the first child node of an element.', N'TF', N'DOM Manipulation', 2)
SET IDENTITY_INSERT [dbo].[Question] OFF
GO
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (5, 1, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (5, 2, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (5, 3, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (6, 4, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (6, 5, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (6, 6, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (7, 1, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (7, 2, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (7, 3, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (8, 4, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (8, 5, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (8, 6, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (9, 1, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (9, 2, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (9, 3, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (10, 1, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (10, 2, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (10, 3, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (11, 4, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (11, 5, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (11, 6, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (12, 4, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (12, 5, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (12, 6, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (13, 1, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (13, 2, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (13, 3, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (14, 4, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (14, 5, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (14, 6, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (15, 1, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (15, 2, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (15, 3, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (16, 4, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (16, 5, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (16, 6, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (17, 1, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (17, 2, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (17, 3, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (18, 4, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (18, 5, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (18, 6, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (19, 4, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (19, 5, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (19, 6, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (20, 1, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (20, 2, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (20, 3, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (21, 4, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (21, 5, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (21, 6, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (22, 1, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (22, 2, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (22, 3, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (23, 1, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (23, 2, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (23, 3, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (24, 1, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (24, 2, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (24, 3, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (25, 4, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (25, 5, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (25, 6, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (26, 4, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (26, 5, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (26, 6, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (27, 4, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (27, 5, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (27, 6, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (28, 1, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (28, 2, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (28, 3, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (29, 1, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (29, 2, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (29, 3, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (30, 4, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (30, 5, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (30, 6, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (31, 1, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (31, 2, NULL)
INSERT [dbo].[Stu_Courses] ([St_Id], [Cr_Id], [Cr_grade]) VALUES (31, 3, NULL)
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([St_Id], [St_Name], [Email], [Password], [Dept_Id]) VALUES (5, N'Ahmad Ali', N'ahmad.ali@example.com', N'password123', 1)
INSERT [dbo].[Student] ([St_Id], [St_Name], [Email], [Password], [Dept_Id]) VALUES (6, N'Sara Ahmed', N'sara.ahmed@example.com', N'password123', 2)
INSERT [dbo].[Student] ([St_Id], [St_Name], [Email], [Password], [Dept_Id]) VALUES (7, N'Mohamed Hassan', N'mohamed.hassan@example.com', N'password123', 1)
INSERT [dbo].[Student] ([St_Id], [St_Name], [Email], [Password], [Dept_Id]) VALUES (8, N'Fatima Khalid', N'fatima.khalid@example.com', N'password123', 2)
INSERT [dbo].[Student] ([St_Id], [St_Name], [Email], [Password], [Dept_Id]) VALUES (9, N'Yousef Khalil', N'yousef.khalil@example.com', N'password123', 1)
INSERT [dbo].[Student] ([St_Id], [St_Name], [Email], [Password], [Dept_Id]) VALUES (10, N'Mariam Hamed', N'mariam.hamed@example.com', N'password123', 1)
INSERT [dbo].[Student] ([St_Id], [St_Name], [Email], [Password], [Dept_Id]) VALUES (11, N'Omar Samir', N'omar.samir@example.com', N'password123', 2)
INSERT [dbo].[Student] ([St_Id], [St_Name], [Email], [Password], [Dept_Id]) VALUES (12, N'Aisha Reda', N'aisha.reda@example.com', N'password123', 2)
INSERT [dbo].[Student] ([St_Id], [St_Name], [Email], [Password], [Dept_Id]) VALUES (13, N'Ali Mahmoud', N'ali.mahmoud@example.com', N'password123', 1)
INSERT [dbo].[Student] ([St_Id], [St_Name], [Email], [Password], [Dept_Id]) VALUES (14, N'Nour Mohamed', N'nour.mohamed@example.com', N'password123', 2)
INSERT [dbo].[Student] ([St_Id], [St_Name], [Email], [Password], [Dept_Id]) VALUES (15, N'Hassan Sami', N'hassan.sami@example.com', N'password123', 1)
INSERT [dbo].[Student] ([St_Id], [St_Name], [Email], [Password], [Dept_Id]) VALUES (16, N'Hoda Nasser', N'hoda.nasser@example.com', N'password123', 2)
INSERT [dbo].[Student] ([St_Id], [St_Name], [Email], [Password], [Dept_Id]) VALUES (17, N'Salma Tarek', N'salma.tarek@example.com', N'password123', 1)
INSERT [dbo].[Student] ([St_Id], [St_Name], [Email], [Password], [Dept_Id]) VALUES (18, N'Khaled Yahya', N'khaled.yahya@example.com', N'password123', 2)
INSERT [dbo].[Student] ([St_Id], [St_Name], [Email], [Password], [Dept_Id]) VALUES (19, N'Jana Ahmed', N'jana.ahmed@example.com', N'password123', 2)
INSERT [dbo].[Student] ([St_Id], [St_Name], [Email], [Password], [Dept_Id]) VALUES (20, N'Omar Farouk', N'omar.farouk@example.com', N'password123', 1)
INSERT [dbo].[Student] ([St_Id], [St_Name], [Email], [Password], [Dept_Id]) VALUES (21, N'Maha Samir', N'maha.samir@example.com', N'password123', 2)
INSERT [dbo].[Student] ([St_Id], [St_Name], [Email], [Password], [Dept_Id]) VALUES (22, N'Khalid Mohamed', N'khalid.mohamed@example.com', N'password123', 1)
INSERT [dbo].[Student] ([St_Id], [St_Name], [Email], [Password], [Dept_Id]) VALUES (23, N'Youssef Ali', N'youssef.ali@example.com', N'password123', 1)
INSERT [dbo].[Student] ([St_Id], [St_Name], [Email], [Password], [Dept_Id]) VALUES (24, N'Hossam Khalil', N'hossam.khalil@example.com', N'password123', 1)
INSERT [dbo].[Student] ([St_Id], [St_Name], [Email], [Password], [Dept_Id]) VALUES (25, N'Mona Salem', N'mona.salem@example.com', N'password123', 2)
INSERT [dbo].[Student] ([St_Id], [St_Name], [Email], [Password], [Dept_Id]) VALUES (26, N'Noura Mahmoud', N'noura.mahmoud@example.com', N'password123', 2)
INSERT [dbo].[Student] ([St_Id], [St_Name], [Email], [Password], [Dept_Id]) VALUES (27, N'Mahmoud Mohamed', N'mahmoud.mohamed@example.com', N'password123', 2)
INSERT [dbo].[Student] ([St_Id], [St_Name], [Email], [Password], [Dept_Id]) VALUES (28, N'Laila Ahmed', N'laila.ahmed@example.com', N'password123', 1)
INSERT [dbo].[Student] ([St_Id], [St_Name], [Email], [Password], [Dept_Id]) VALUES (29, N'Yara Hassan', N'yara.hassan@example.com', N'password123', 1)
INSERT [dbo].[Student] ([St_Id], [St_Name], [Email], [Password], [Dept_Id]) VALUES (30, N'Saeed Ali', N'saeed.ali@example.com', N'password123', 2)
INSERT [dbo].[Student] ([St_Id], [St_Name], [Email], [Password], [Dept_Id]) VALUES (31, N'Ola Tarek', N'ola.tarek@example.com', N'password123', 1)
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (51, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (52, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (53, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (54, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (55, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (56, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (57, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (58, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (59, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (60, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (71, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (72, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (73, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (74, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (75, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (76, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (77, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (78, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (79, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (80, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (11, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (12, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (13, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (14, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (15, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (16, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (17, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (18, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (19, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (20, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (31, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (32, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (33, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (34, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (35, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (36, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (37, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (38, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (39, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (40, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (191, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (192, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (193, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (194, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (195, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (196, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (197, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (198, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (199, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (200, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (211, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (212, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (213, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (214, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (215, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (216, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (217, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (218, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (219, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (220, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (231, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (232, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (233, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (234, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (235, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (236, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (237, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (238, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (239, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (230, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (151, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (152, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (153, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (154, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (155, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (156, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (157, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (158, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (159, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (160, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (131, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (132, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (133, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (134, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (135, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (136, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (137, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (138, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (139, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (140, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (111, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (112, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (113, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (114, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (115, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (116, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (117, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (118, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (119, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (120, 0)
GO
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (91, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (92, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (93, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (94, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (95, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (96, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (97, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (98, 1)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (99, 0)
INSERT [dbo].[TF] ([Q_Id], [Correct_Ans]) VALUES (100, 1)
GO
INSERT [dbo].[Topic] ([Cr_Id], [Topic_Name]) VALUES (1, N'CSS Styling')
INSERT [dbo].[Topic] ([Cr_Id], [Topic_Name]) VALUES (1, N'HTML Basics')
INSERT [dbo].[Topic] ([Cr_Id], [Topic_Name]) VALUES (2, N'DOM Manipulation')
INSERT [dbo].[Topic] ([Cr_Id], [Topic_Name]) VALUES (2, N'JavaScript Syntax')
INSERT [dbo].[Topic] ([Cr_Id], [Topic_Name]) VALUES (3, N'Flexbox Layout')
INSERT [dbo].[Topic] ([Cr_Id], [Topic_Name]) VALUES (3, N'Media Queries')
INSERT [dbo].[Topic] ([Cr_Id], [Topic_Name]) VALUES (4, N'Command Line Basics')
INSERT [dbo].[Topic] ([Cr_Id], [Topic_Name]) VALUES (4, N'Package Management')
INSERT [dbo].[Topic] ([Cr_Id], [Topic_Name]) VALUES (5, N'Contributing to Open Source Projects')
INSERT [dbo].[Topic] ([Cr_Id], [Topic_Name]) VALUES (5, N'Open Source Licensing')
INSERT [dbo].[Topic] ([Cr_Id], [Topic_Name]) VALUES (6, N'Branching and Merging')
INSERT [dbo].[Topic] ([Cr_Id], [Topic_Name]) VALUES (6, N'Git Workflow')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Course__14DB1F31F5479044]    Script Date: 3/24/2023 10:12:46 PM ******/
ALTER TABLE [dbo].[Course] ADD UNIQUE NONCLUSTERED 
(
	[Cr_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Departme__B744FF0FA4B6E3E0]    Script Date: 3/24/2023 10:12:46 PM ******/
ALTER TABLE [dbo].[Department] ADD UNIQUE NONCLUSTERED 
(
	[Dept_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Instruct__844BB17FD2305F7F]    Script Date: 3/24/2023 10:12:46 PM ******/
ALTER TABLE [dbo].[Instructor] ADD UNIQUE NONCLUSTERED 
(
	[Ins_Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Student__A9D10534CD3B1149]    Script Date: 3/24/2023 10:12:46 PM ******/
ALTER TABLE [dbo].[Student] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Choice]  WITH CHECK ADD FOREIGN KEY([Q_Id])
REFERENCES [dbo].[Question] ([Q_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [Fk_dept_Ins] FOREIGN KEY([Manager_Id])
REFERENCES [dbo].[Instructor] ([Ins_Id])
ON UPDATE SET NULL
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [Fk_dept_Ins]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD FOREIGN KEY([Cr_Id])
REFERENCES [dbo].[Course] ([Cr_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Exam_Questions]  WITH CHECK ADD FOREIGN KEY([Exam_Num])
REFERENCES [dbo].[Exam] ([Ex_Num])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Exam_Questions]  WITH CHECK ADD FOREIGN KEY([Q_Id])
REFERENCES [dbo].[Question] ([Q_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ins_Dept_Cr]  WITH CHECK ADD FOREIGN KEY([Cr_Id])
REFERENCES [dbo].[Course] ([Cr_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ins_Dept_Cr]  WITH CHECK ADD FOREIGN KEY([Dept_id])
REFERENCES [dbo].[Department] ([Dept_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ins_Dept_Cr]  WITH CHECK ADD FOREIGN KEY([Ins_Id])
REFERENCES [dbo].[Instructor] ([Ins_Id])
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Top_Name_Cr_Id] FOREIGN KEY([Cr_Id], [Topic_Name])
REFERENCES [dbo].[Topic] ([Cr_Id], [Topic_Name])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_Top_Name_Cr_Id]
GO
ALTER TABLE [dbo].[Stu_Courses]  WITH CHECK ADD FOREIGN KEY([Cr_Id])
REFERENCES [dbo].[Course] ([Cr_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Stu_Courses]  WITH CHECK ADD FOREIGN KEY([St_Id])
REFERENCES [dbo].[Student] ([St_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Stu_Exam_Question]  WITH CHECK ADD FOREIGN KEY([Exam_Num])
REFERENCES [dbo].[Exam] ([Ex_Num])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Stu_Exam_Question]  WITH CHECK ADD FOREIGN KEY([St_Id])
REFERENCES [dbo].[Student] ([St_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Stu_Exam_Question]  WITH CHECK ADD FOREIGN KEY([Q_Id])
REFERENCES [dbo].[Question] ([Q_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([Dept_Id])
REFERENCES [dbo].[Department] ([Dept_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TF]  WITH CHECK ADD FOREIGN KEY([Q_Id])
REFERENCES [dbo].[Question] ([Q_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Topic]  WITH CHECK ADD FOREIGN KEY([Cr_Id])
REFERENCES [dbo].[Course] ([Cr_Id])
GO
/****** Object:  StoredProcedure [dbo].[AddChoice]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[AddChoice] @QuestionId VARCHAR(4)
	,@ChoiceContent VARCHAR(800)
	,@IsCorrect VARCHAR(1)
AS
BEGIN
	DECLARE @sql NVARCHAR(MAX)

	SET @sql = 'INSERT INTO Choice VALUES (' + @QuestionId + ', ' + QUOTENAME(@ChoiceContent, '''') + ', ' + @IsCorrect + ')'

	EXEC (@sql)
END 
GO
/****** Object:  StoredProcedure [dbo].[AuthInstructor]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[AuthInstructor] @email varchar(50),@pass varchar(50) 
as
declare @InsEmail varchar(50),@InsPass varchar(50)
		select @InsEmail=Ins_Email,@InsPass=Ins_Password from Instructor
		where Ins_Email=@email

if(@InsEmail is null)
	begin
		select 'Email not registered'
	end
else
	begin
		if(@InsPass = @pass)
			begin
				select 'Login Successful'					--replace with 1?
			end
		else
			begin
				select 'Login Failed'						--replace with 0?
			end
	end
GO
/****** Object:  StoredProcedure [dbo].[AuthStudent]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[AuthStudent] @email varchar(50),@pass varchar(50) 
as
declare @InsEmail varchar(50),@InsPass varchar(50)
		select @InsEmail=Email,@InsPass=[Password] from Student
		where Email=@email

if(@InsEmail is null)
	begin
		select 'Email not registered'
	end
else
	begin
		if(@InsPass = @pass)
			begin
				select 'Login Successful'					--replace with 1?
			end
		else
			begin
				select 'Login Failed'						--replace with 0?
			end
	end
GO
/****** Object:  StoredProcedure [dbo].[Delete_answered_Question_By_St_Id_Exma_Num]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[Delete_answered_Question_By_St_Id_Exma_Num] @St_Id VARCHAR(4)
	,@Exam_Num VARCHAR(4)
AS
DECLARE @sql NVARCHAR(MAX)

BEGIN
	SET @sql = 'delete  Stu_Exam_Question   WHERE St_Id = ' + @St_Id + ' AND Exam_Num =  ' + @Exam_Num;
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteChoice]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DeleteChoice] @QuestionId VARCHAR(100)
	,@ChoiceContent VARCHAR(700)
AS
DECLARE @sql NVARCHAR(MAX)

BEGIN
	SET @sql = 'delete  Choice   WHERE Q_Id = ' + @QuestionId + ' AND Choice_Content =  ''' + @ChoiceContent + '''';
END

EXEC(@sql)
GO
/****** Object:  StoredProcedure [dbo].[DeleteChoiceByQ_ID]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DeleteChoiceByQ_ID] @QuestionId VARCHAR(100)
	
AS
DECLARE @sql NVARCHAR(MAX)

BEGIN
	SET @sql = 'delete  Choice   WHERE Q_Id = ' + @QuestionId 
END

EXEC(@sql)
GO
/****** Object:  StoredProcedure [dbo].[DeleteCourseByID]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[DeleteCourseByID] @CourseID INT
AS
	BEGIN
		BEGIN TRY
			IF NOT EXISTS(SELECT * FROM [dbo].[Course] WHERE [Cr_Id] = @CourseID)
			BEGIN
				SELECT 'Not Available'
			END
			ELSE
			BEGIN
				DELETE FROM [dbo].[Course] WHERE [Cr_Id] = @CourseID
			END
		END TRY
		BEGIN CATCH
			SELECT 'Delete Failed!'
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[DeleteCourseByName]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[DeleteCourseByName] @CourseName VARCHAR(50)
AS
	BEGIN
		BEGIN TRY
			IF NOT EXISTS(SELECT * FROM [dbo].[Course] WHERE [Cr_Name] = @CourseName)
			BEGIN
				SELECT 'Not Available'
			END
			ELSE
			BEGIN
				DELETE FROM [dbo].[Course] WHERE [Cr_Name] = @CourseName
			END
		END TRY
		BEGIN CATCH
			SELECT 'Delete Failed!'
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[DeleteDepartmentById]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DeleteDepartmentById] @id int
as
if exists (select * from Department where Dept_Id=@id)
	delete from Department where Dept_Id=@id
else
	select 'Invalid department ID'
GO
/****** Object:  StoredProcedure [dbo].[DeleteDepartmentByName]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DeleteDepartmentByName] @name varchar(50)			
as
if exists (select * from Department where Dept_Name=@name)
	delete from Department where Dept_Name=@name
else
	select 'Invalid department Name'
GO
/****** Object:  StoredProcedure [dbo].[DeleteExam]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[DeleteExam] @ExamID INT
AS
	BEGIN
		BEGIN TRY
			IF NOT EXISTS(SELECT * FROM [dbo].[Exam] WHERE [Ex_Num] = @ExamID)
			BEGIN
				SELECT 'Not Available'
			END
			ELSE
			BEGIN
				DELETE FROM [dbo].[Exam] WHERE [Ex_Num] = @ExamID
			END
		END TRY
		BEGIN CATCH
			SELECT 'Delete Failed!'
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[DeleteInsDepCrRelationByDep]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- DeleteInsDepCrRelationByIns 4
-----------------------------------------------------------------------------------------------------------------------
create proc [dbo].[DeleteInsDepCrRelationByDep] @DepId int
as
if exists(select * from Ins_Dept_Cr where Dept_id=@DepId)
	delete from Ins_Dept_Cr where Dept_id=@DepId
else
	select 'no department with this id in the record'
GO
/****** Object:  StoredProcedure [dbo].[DeleteInsDepCrRelationByIns]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- UpdateInsDepCrRelationByCr 2,4,2
-----------------------------------------------------------------------------------------------------------------------
create proc [dbo].[DeleteInsDepCrRelationByIns] @InsId int
as
if exists(select * from Ins_Dept_Cr where Ins_Id=@InsId)
	delete from Ins_Dept_Cr where Ins_Id=@InsId
else
	select 'no instructor with this id in the record'
GO
/****** Object:  StoredProcedure [dbo].[DeleteInstructorById]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DeleteInstructorById] @id int
as
if exists (select * from Instructor where Ins_Id=@id)
	begin
		declare @MId int
		select @MId=Manager_ID from Department where @id=Manager_ID

		if(@MId is not null)
			begin
				update Department set Manager_Id = null where Manager_Id = @id
			end
		delete from Ins_Dept_Cr where Ins_Id = @id
		delete from Instructor where Ins_Id=@id
	end
else
	select 'ID does not exist'
GO
/****** Object:  StoredProcedure [dbo].[DeleteInstructorByName]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DeleteInstructorByName] @name varchar(50)
as
if exists (select * from Instructor where Ins_Name=@name)
	begin
		declare @MId int,@ID int
		select @MId=Manager_ID from Department join Instructor on Ins_Id=Manager_ID
		where  Ins_Name=@name

		select @ID=Ins_Id from Instructor where Ins_Name=@name

		if(@MId is not null)
			begin
				update Department set Manager_Id = null where Manager_Id = @MId
			end
		delete from Ins_Dept_Cr where Ins_Id = @ID
		delete from Instructor where Ins_Id = @ID
	end
else
	select 'Name does not exist'
GO
/****** Object:  StoredProcedure [dbo].[deleteQuestionfromExam]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[deleteQuestionfromExam]
	@Q_Id VARCHAR(5),
    @ExamNum VARCHAR(50)
AS
delete from Exam_Questions where Q_Id = @Q_Id and Exam_Num = @ExamNum
GO
/****** Object:  StoredProcedure [dbo].[DeleteStuCrRelation]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DeleteStuCrRelation] @StuId int,@CrId int
as
if exists(select * from Stu_Courses where Cr_Id=@CrId and St_Id=@StuId)
	delete from Stu_Courses where Cr_Id=@CrId and St_Id=@StuId
else
	select'Invalid data'
GO
/****** Object:  StoredProcedure [dbo].[DeleteStuCrRelationByCr]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- DeleteInsDepCrRelationByIns 4
-----------------------------------------------------------------------------------------------------------------------
create proc [dbo].[DeleteStuCrRelationByCr] @CrId int
as
if exists(select * from Stu_Courses where Cr_Id=@CrId)
	delete from Stu_Courses where Cr_Id=@CrId
else
	select'Invalid student id'
GO
/****** Object:  StoredProcedure [dbo].[DeleteStuCrRelationByStu]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- UpdateGrade 8,5,2
-----------------------------------------------------------------------------------------------------------------------
create proc [dbo].[DeleteStuCrRelationByStu] @StuId int
as
if exists(select * from Stu_Courses where St_Id=@StuId)
	delete from Stu_Courses where St_Id=@StuId
else
	select'Invalid student id'

GO
/****** Object:  StoredProcedure [dbo].[DeleteStudentByID]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[DeleteStudentByID] @StudentID INT
AS
	BEGIN
		BEGIN TRY
			IF NOT EXISTS(SELECT * FROM [dbo].[Student] WHERE [St_Id] = @StudentId)
			BEGIN
				SELECT 'Not Available'
			END
			ELSE
			BEGIN
				DELETE FROM [dbo].[Student] WHERE [St_Id] = @StudentID
			END
		END TRY
		BEGIN CATCH
			SELECT 'Delete Failed!'
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[DeleteStudentByName]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[DeleteStudentByName] @StudentName VARCHAR(50)
AS
	BEGIN
		BEGIN TRY
			IF NOT EXISTS(SELECT * FROM [dbo].[Student] WHERE [St_Name] = @StudentName)
			BEGIN
				SELECT 'Not Available'
			END
			ELSE
			BEGIN
				DELETE FROM [dbo].[Student] WHERE [St_Name] = @StudentName
			END
		END TRY
		BEGIN CATCH
			SELECT 'Delete Failed!'
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[DeleteTF]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DeleteTF] @QuestionId VARCHAR(4)
	,@IsTrue VARCHAR(1)
AS
DECLARE @sql NVARCHAR(MAX)

BEGIN
	SET @sql = 'delete  TF   WHERE Q_Id = ' + @QuestionId + ' AND Correct_Ans =  ' + @IsTrue;
END

EXEC (@sql)
GO
/****** Object:  StoredProcedure [dbo].[DeleteTF_By_Id]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[DeleteTF_By_Id] 
    @QuestionId VARCHAR(4)
	
AS
DECLARE @sql NVARCHAR(MAX)

BEGIN
	SET @sql = 'delete  TF   WHERE Q_Id = ' + @QuestionId ;
END

EXEC (@sql)
GO
/****** Object:  StoredProcedure [dbo].[DeleteTopicByCrIDTopName]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[DeleteTopicByCrIDTopName] @CourseID INT, @TopicName VARCHAR(50)
AS
	BEGIN
		BEGIN TRY
			IF NOT EXISTS(SELECT * FROM [dbo].[Topic] WHERE [Cr_Id] = @CourseID AND [Topic_Name] = @TopicName)
			BEGIN
				SELECT 'Not Available'
			END
			ELSE
			BEGIN
				DELETE FROM [dbo].[Topic] WHERE [Cr_Id] = @CourseID AND [Topic_Name] = @TopicName
			END
		END TRY
		BEGIN CATCH
			SELECT 'Delete Failed!'
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[DeleteTopicByName]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[DeleteTopicByName] @TopicName VARCHAR(50)
AS
	BEGIN
		BEGIN TRY
			IF NOT EXISTS(SELECT * FROM [dbo].[Topic] WHERE [Topic_Name] = @TopicName)
			BEGIN
				SELECT 'Not Available'
			END
			ELSE
			BEGIN
				DELETE FROM [dbo].[Topic] WHERE [Topic_Name] = @TopicName
			END
		END TRY
		BEGIN CATCH
			SELECT 'Delete Failed!'
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[ExamCorrection]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ExamCorrection] @StId int , @ExNum int
as

declare c1 cursor
for
select Q_Id,Answer from Stu_Exam_Question where St_Id=@StId and Exam_Num=@ExNum
for update

declare @QId int,@Ans varchar(400)
open c1
fetch c1 into @QId,@Ans
while @@FETCH_STATUS=0
	begin
		DECLARE @QType varchar(10) = (select [type] from Question where Q_Id = @QId)

		if(@QType='TF')
			begin
				DECLARE @Correct bit = (select Correct_Ans from TF where Q_Id = @QId)
				if((@Ans='1' and @Correct = 1) or (@Ans='0' and @Correct = 0))
					update Stu_Exam_Question set Grade = 1 where St_Id=@StId and Exam_Num=@ExNum and Q_Id = @QId and Answer = @Ans

				else 
					update Stu_Exam_Question set Grade = 0 where St_Id=@StId and Exam_Num=@ExNum and Q_Id = @QId and Answer = @Ans
			
			end

		else if (@QType='MCQ')
			begin
				DECLARE @Corect bit = 0
				if exists (select Correct_Ans from Choice where Q_Id = @QId and Choice_Content = @Ans)
						set @Corect = 1
				update Stu_Exam_Question set Grade = @Corect where St_Id=@StId and Exam_Num=@ExNum and Q_Id = @QId and Answer = @Ans
			end

	fetch c1 into @QId,@Ans
	end
close c1
deallocate c1

DECLARE @TotGrade int = (select sum(grade) from Stu_Exam_Question where St_Id=@StId and Exam_Num=@ExNum)
DECLARE @CrNum int = (select Cr_Id from Exam where Ex_Num=@ExNum)

--insert into Stu_Courses values(@StId,@CrNum,@TotGrade)


update Stu_Courses set Cr_grade=@TotGrade where St_Id=@StId and Cr_Id=@CrNum
GO
/****** Object:  StoredProcedure [dbo].[GenerateExam]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GenerateExam]
    @MCQ_Num VARCHAR(3)
	,@TF_Num VARCHAR(3)
	,@Course_Name VARCHAR(40)
	,@Exam_Num INT OUTPUT
AS
DECLARE @Counter INT = 0
DECLARE @Course_Id VARCHAR(3)
DECLARE @Exam_Questions TABLE (
	Exam_Num INT
	,Q_Id INT
	)
DECLARE @Return_Exam TABLE (
	Q_Id INT
	,[Q_Content] VARCHAR(500)
	,[type] VARCHAR(7)
	,[Topic_Name] VARCHAR(100)
	,[Cr_Id] INT
	)
DECLARE @Question_Exam_Ids TABLE (Q_Id INT)

------------------------
SELECT @Course_Id = convert(VARCHAR(3), Cr_Id)
FROM Course
WHERE Cr_Name = @Course_Name -- initialize the coure Id 

-------
SELECT @Exam_Num = IDENT_CURRENT('Exam') + 1 
FROM Exam

INSERT INTO Exam
VALUES (@Course_Id) -- new Exam in Table Exam
	-------

-----	Add Questions To Exam ---------
INSERT INTO @Return_Exam
EXEC Select_Question_For_Exam 'MCQ'
	,@MCQ_Num
	,@Course_Id

INSERT INTO @Return_Exam
EXEC Select_Question_For_Exam 'TF'
	,@TF_Num
	,@Course_Id

--select  @Question_Exam_Ids = Q_Id from @Return_Exam
INSERT INTO Exam_Questions (
	Exam_Num
	,Q_Id
	)
SELECT @Exam_Num
	,Q_Id
FROM @Return_Exam

SELECT *
FROM @Return_Exam
GO
/****** Object:  StoredProcedure [dbo].[GetCoursesAndCount]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--	Report that takes the instructor ID and returns the name of the courses that he teaches and the number of student per course
create proc [dbo].[GetCoursesAndCount] @InsId int
as
select Cr_Name as [Course Name],COUNT(St_Id) as [Student Count] from Ins_Dept_Cr as i ,Course as c,Stu_Courses as s
where
c.Cr_Id=i.Cr_Id and
c.Cr_Id=s.Cr_Id and
i.Ins_Id=@InsId
group by(Cr_Name)

GO
/****** Object:  StoredProcedure [dbo].[GetExamQuestionsAndChoices]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[GetExamQuestionsAndChoices] @Exam_Num int
AS
	DECLARE @QID int, @QContent varchar(1000),@QType varchar(10) ,@choice1 varchar(150),@choice2 varchar(150),@choice3 varchar(150),@choice4 varchar(150)
	DECLARE Question_cursor CURSOR FOR
		select q.Q_Id,Q_Content,[type] from Exam_Questions as eq , Question as q
		where
		eq.Q_Id = q.Q_Id and
		Exam_Num = @Exam_Num

	OPEN Question_cursor
	FETCH Question_cursor INTO @QID,@QContent,@QType

	while @@FETCH_STATUS=0
		begin
		select 'ended'
			if (@QType='MCQ')
				begin
					
					DECLARE choice_cursor CURSOR FOR
					select Choice_Content from Choice where Q_Id=@QID

					declare @choice varchar(150)
					open choice_cursor
					
					FETCH NEXT FROM choice_cursor INTO @choice

					IF @@FETCH_STATUS = 0
						SET @choice1 = @choice;

					FETCH NEXT FROM choice_cursor INTO @choice

					IF @@FETCH_STATUS = 0
						SET @choice2 = @choice;

					FETCH NEXT FROM choice_cursor INTO @choice

					IF @@FETCH_STATUS = 0
						SET @choice3 = @choice;

					FETCH NEXT FROM choice_cursor INTO @choice

					IF @@FETCH_STATUS = 0
						SET @choice4 = @choice;

					close choice_cursor
					deallocate choice_cursor

					select @QContent,@choice1,@choice2,@choice3,@choice4
				end

			else if(@QType='TF')
				begin
					set @choice1='True'
					set @choice2='False'

					select @QContent,@choice1,@choice2
				end

			FETCH Question_cursor INTO @QID,@QContent,@QType
		end

	close Question_cursor
	deallocate Question_cursor
GO
/****** Object:  StoredProcedure [dbo].[GetGradePer]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--	Report that takes the student ID and returns the grades of the student in all courses "%"
create proc [dbo].[GetGradePer] @StId int
as
select sum(Cr_grade)/(COUNT(*)*10) as [Grade Percentage] from Stu_Courses
where St_Id = @StId

GO
/****** Object:  StoredProcedure [dbo].[GetStudentCourses]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[GetStudentCourses] @StuId int
as
select Cr_Name from Course as c, Stu_Courses as s
where  s.St_Id=@StuId and c.cr_id= s.cr_id
GO
/****** Object:  StoredProcedure [dbo].[Insert_Answerd_Question]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[Insert_Answerd_Question] @student_Id VARCHAR(10)
	,@Exam_Num VARCHAR(10)
	,@Q_Id VARCHAR(10)
	,@Answer VARCHAR(300)
    ,@Grade int 
AS
BEGIN
	DECLARE @sql NVARCHAR(MAX)

	SET @sql = 'INSERT INTO Stu_Exam_Question VALUES (' + @student_Id + ', ' + @Exam_Num + ', ' + @Q_Id + ', ' + QUOTENAME(@Answer, '''') + ', ' +CONVERT(varchar(2),@Grade)  + ')'

	EXEC (@sql)
END
GO
/****** Object:  StoredProcedure [dbo].[Insert_Course]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create Proc [dbo].[Insert_Course] @Name VARCHAR(50)=NULL
AS
	
			INSERT INTO [dbo].[Course] ([Cr_Name]) 
			VALUES(@Name)
GO
/****** Object:  StoredProcedure [dbo].[InsertDepartment]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[InsertDepartment]  @name varchar(50), @MngrId int = NULL
as
if not exists (select * from Department where Dept_Name=@name)
	begin
		declare @MId int
		select @MId=Ins_Id from Instructor where @MngrId=Ins_Id

		if(@MId is not null)
	
			begin
				insert into Department values(@name,@MngrId)
			end
		else
			select 'Invalid Manager ID'
	end
else
	select 'the department already exists'
GO
/****** Object:  StoredProcedure [dbo].[InsertInsDepCrRelation]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
----------------------------------------------------------------------------------------------------------------------
create proc [dbo].[InsertInsDepCrRelation] @InsId int ,@DepId int ,@CrId int
as
if (exists(select * from Instructor where Ins_Id=@InsId) and exists(select * from Department where Dept_Id=@DepId) and exists(select * from Course where Cr_Id=@CrId) )
	begin
		if not exists(select * from Ins_Dept_Cr where Ins_Id=@InsId and Cr_Id=@CrId and Dept_Id=@DepId)
			insert into Ins_Dept_Cr values(@InsId,@DepId,@CrId)
		else
			select 'duplicate data'
	end
else
	select 'not valid data' 

GO
/****** Object:  StoredProcedure [dbo].[InsertInstructor]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[InsertInstructor]  @name varchar(50), @email varchar(50),@pass varchar(50)
as
if((@name is not NULL or @name != '')and(@email is not NULL or @email != '')and(@pass is not NULL or @pass != ''))
	begin
		insert into Instructor values(@name,@email,@pass)
	end
else 
	select 'empty parameter'
GO
/****** Object:  StoredProcedure [dbo].[InsertNewCourse]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[InsertNewCourse] @Name VARCHAR(50)=NULL
AS
	BEGIN
		BEGIN TRY
			INSERT INTO [dbo].[Course] ([Cr_Name]) 
			VALUES(@Name)
		END TRY
		BEGIN CATCH
			SELECT 'Insert failed .. Fill all the data, Please!'
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[InsertNewExamToCourse]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[InsertNewExamToCourse] @CourseID INT=NULL
AS
	BEGIN
		BEGIN TRY
			INSERT INTO [dbo].[Exam] ([Cr_Id]) 
			VALUES(@CourseID)
		END TRY
		BEGIN CATCH
			SELECT 'Insert failed .. Fill all the data, Please!'
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[InsertNewStudent]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[InsertNewStudent] @Name VARCHAR(50)=NULL, @DepartmentID INT=NULL, @Email VARCHAR(50)=NULL, @Password VARCHAR(50)=NULL
AS
	BEGIN
		BEGIN TRY
			INSERT INTO [dbo].[Student] ([St_Name], [Email], [Password], [Dept_Id]) 
			VALUES(@Name, @Email, @Password, @DepartmentID)
		END TRY
		BEGIN CATCH
			SELECT 'Insert failed .. Make sure its valid information, Please!'
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[InsertNewTopic]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[InsertNewTopic] @TopicName VARCHAR(50)=NULL, @CourseID INT=NULL
AS
	BEGIN
		BEGIN TRY
			INSERT INTO [dbo].[Topic] 
			VALUES(@CourseID, @TopicName)
		END TRY
		BEGIN CATCH
			SELECT 'Insert failed .. Fill all the data, Please!'
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[InsertQuestion]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertQuestion]
	@QuestionContent VARCHAR(500)
	,@Type VARCHAR(20)
	,@TopicName VARCHAR(50)
	,@Course_Id VARCHAR(4)
    
AS
BEGIN
	DECLARE @sql NVARCHAR(MAX)

	SET @sql = 'INSERT INTO Question VALUES (' 
    + QUOTENAME(@QuestionContent, '''') 
    + ', ' + QUOTENAME(@Type, '''') 
    + ', ' + QUOTENAME(@TopicName, '''')
    + ', ' + @Course_Id 
    +')'

	EXEC (@sql)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertQuestionToExam]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertQuestionToExam]
	@QuestionContent VARCHAR(500),
	@Type VARCHAR(20),
	@TopicName VARCHAR(50),
	@Course_Id VARCHAR(4), 
    @ExamNum VARCHAR(50)
AS
BEGIN
    declare @Q_Id  int
	DECLARE @sql NVARCHAR(MAX)

	SET @sql = 'INSERT INTO Question ([Q_Content], [type], [Topic_Name], [Cr_Id]) VALUES (' 
		+ QUOTENAME(@QuestionContent, '''') + ', ' 
		+ QUOTENAME(@Type, '''') + ', ' 
		+ QUOTENAME(@TopicName, '''') + ', '
		+ QUOTENAME(@Course_Id, '''') + ')'

	EXEC (@sql)
SELECT @Q_Id = IDENT_CURRENT('Question') 


insert into Exam_Questions values  (@ExamNum , @Q_Id)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertStuCrRelation]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[InsertStuCrRelation] @StuId int,@CrId int,@grade int = null
as

if (exists(select * from Student where St_Id=@StuId))and(exists(select * from Course where Cr_Id=@CrId))
	begin
	if not exists(select * from Stu_Courses where St_Id=@StuId and Cr_Id=@CrId)
		insert into Stu_Courses values(@StuId,@CrId,@grade)
	else
		select 'duplicate data'
	end
else
	select 'not valid data' 
GO
/****** Object:  StoredProcedure [dbo].[QuestionDelete]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[QuestionDelete] @ColumnName VARCHAR(50)
	,@ColumnValue VARCHAR(700)
AS
DECLARE @sql VARCHAR(max)
declare @Q_Id varchar (3)

IF (ISNUMERIC(@ColumnValue) = 1)
BEGIN
    select @Q_Id = Q_Id from Question where @ColumnName = @ColumnValue                    ----------- NOT Completed  Must Select Q_Id 
	SET @sql = 'delete from Question where ' + @ColumnName + ' = ' + @ColumnValue;          ----------- then Delete Choice
    exec DeleteChoiceByQ_ID
END
ELSE
BEGIN
	SET @sql = 'delete from Question where ' + @ColumnName + ' =  ''' + @ColumnName + ''' ';
        
END
GO
/****** Object:  StoredProcedure [dbo].[QuestionDelete_By_Id]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [dbo].[QuestionDelete_By_Id] @Q_Id  VARCHAR(5)
	
AS
declare @type varchar (10)
DECLARE @sql VARCHAR(max)
select @type = [type] from Question where Q_Id = @Q_Id
if(@type = 'MCQ')
begin
        exec DeleteChoiceByQ_ID @Q_Id
End
else
begin
exec DeleteTF_By_Id @Q_Id
end
	SET @sql = 'delete from Question where Q_Id = ' + @Q_Id;
EXEC (@sql) 
GO
/****** Object:  StoredProcedure [dbo].[returnChoices]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[returnChoices] @Q_Id varchar(20)
    as 
    declare @choices table (choice1 varchar (500))
    declare @type varchar(100)
    insert into @choices select Choice_Content from Question Q inner join Choice C on Q.Q_Id = C.Q_Id where Q.Q_Id= @Q_Id
    select *from @choices
GO
/****** Object:  StoredProcedure [dbo].[SelecForInstructorForm]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-----------------------------
-- Get Instructor Course names by Inctrucotr ID:
-----------------------------
CREATE Proc [dbo].[SelecForInstructorForm] @id INT
AS

IF EXISTS(select * from Ins_Dept_Cr where Ins_Id=@id)
BEGIN
	SELECT IDS.[Cr_Id] AS ID, C.[Cr_Name] AS [Course Name] , [Topic_Name] AS [Topic Name]
	FROM [dbo].[Ins_Dept_Cr] IDS, [dbo].[Course] C, [dbo].[Topic] T
	WHERE	IDS.Ins_Id = @id
		AND C.[Cr_Id] = IDS.[Cr_Id]
		AND IDS.[Cr_Id] = T.[Cr_Id]

END
ELSE
	SELECT 'No data!'

GO
/****** Object:  StoredProcedure [dbo].[Select_Quest_By_Stu_Exam]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [dbo].[Select_Quest_By_Stu_Exam] @Exam_Num VARCHAR(10)
	,@Stu_Id VARCHAR(20)
AS
DECLARE @sql NVARCHAR(MAX)

SET @sql = 'SELECT * FROM Stu_Exam_Question   WHERE St_Id = ' + @Stu_Id + ' AND Exam_Num =  ' + @Exam_Num;

EXEC (@sql) 
GO
/****** Object:  StoredProcedure [dbo].[Select_Quest_By_Stu_Exam_Quest]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [dbo].[Select_Quest_By_Stu_Exam_Quest]
	@Stu_Id VARCHAR(20)
   , @Exam_Num VARCHAR(10)
    ,@Q_Id VARCHAR(20)

AS
DECLARE @sql NVARCHAR(MAX)

SET @sql = 'SELECT * FROM Stu_Exam_Question   WHERE St_Id = ' + @Stu_Id + ' AND Exam_Num =  ' + @Exam_Num +'And Q_Id = ' + @Q_Id

EXEC (@sql) 
GO
/****** Object:  StoredProcedure [dbo].[Select_Quest_Exam_Stu]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Select_Quest_Exam_Stu] @columnName VARCHAR(50)
	,@columnValue VARCHAR(24)
AS
DECLARE @sql NVARCHAR(MAX)

IF (ISNUMERIC(@columnValue) = 1)
BEGIN
	SET @sql = 'SELECT * FROM Stu_Exam_Question WHERE ' + @columnName + ' = ' + @columnValue
END
ELSE
BEGIN
	SET @sql = 'SELECT * FROM Stu_Exam_Question WHERE ' + @columnName + ' = ''' + @columnValue + '''';
END
GO
/****** Object:  StoredProcedure [dbo].[Select_Question]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Select_Question] 
                    @columnName VARCHAR(50)
	               ,@columnValue VARCHAR(700)
AS
DECLARE @sql NVARCHAR(MAX)

IF (ISNUMERIC(@columnValue) = 1)
BEGIN
	SET @sql = 'SELECT * FROM Question WHERE ' + @columnName + ' = ' + @columnValue
END
ELSE
BEGIN
	SET @sql = 'SELECT * FROM Question WHERE ' + @columnName + ' = ''' + @columnValue + '''';
END

EXEC (@sql)
GO
/****** Object:  StoredProcedure [dbo].[Select_Question_By_Id]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [dbo].[Select_Question_By_Id] 
     @Q_Id VARCHAR(3)
	
AS
DECLARE @sql NVARCHAR(MAX)

	SET @sql = 'SELECT * FROM Question WHERE Q_Id = '   + @Q_Id

EXEC (@sql)
GO
/****** Object:  StoredProcedure [dbo].[Select_Question_For_Exam]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Select_Question_For_Exam] @type VARCHAR(5)
	,@Num_Of_Questions VARCHAR(2)
	,@Course_Id VARCHAR(3)
AS
DECLARE @sql NVARCHAR(MAX)

SET @sql = 'SELECT top(' + @Num_Of_Questions + ') * FROM Question WHERE Cr_Id  = ' + @Course_Id + ' AND [type] = ''' + @type + ''' order by NEWID()'

EXEC (@sql)
GO
/****** Object:  StoredProcedure [dbo].[Select_QuestionsByCr]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Select_QuestionsByCr] @CrId int
AS
select Q_ID,Q_Content  from Question where Cr_Id=@CrId
GO
/****** Object:  StoredProcedure [dbo].[Select_Student_Answer]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[Select_Student_Answer] @Student_Id varchar(4) , @Exam_Num varchar(3)
 as 
 declare @Exam_Ansewrs table (answer varchar(700) , Question_Type varchar (30)) 
 insert into @Exam_Ansewrs (answer,Question_Type) select a.Answer , Q.[type] from  Stu_Exam_Question  a inner join Question Q on Q.Q_Id = a.Q_Id
 where a.St_Id = @Student_Id and a.Exam_Num = @Exam_Num
 -- cursor for Updating the Answer to True or False 
 Declare Answer_Cursor Cursor 
 for select answer , Question_Type from @Exam_Ansewrs 
 declare @ans varchar(300) ,@Q_Type varchar(30)
 open Answer_Cursor
 fetch Next from Answer_Cursor into @ans , @Q_Type
 while @@FETCH_STATUS=0
	begin
 if @ans = '1' and @Q_Type = 'TF'
 begin 
update  @Exam_Ansewrs set answer = 'True' where current of Answer_Cursor
 end
  if @ans = '0' and @Q_Type = 'TF'
 begin 
update  @Exam_Ansewrs set answer = 'False' where current of Answer_Cursor
 end
 fetch Answer_Cursor into  @ans , @Q_Type		
	end
 
close Answer_Cursor
deallocate Answer_Cursor
 select * from @Exam_Ansewrs
GO
/****** Object:  StoredProcedure [dbo].[SelectAllCourses]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SelectAllCourses]
AS
	BEGIN
		BEGIN TRY
			IF EXISTS(SELECT * FROM   [dbo].[Course])
			BEGIN
				SELECT *
				FROM   [dbo].[Course]
			END
			ELSE
			BEGIN
				SELECT 'No courses found!'
			END
		END TRY
		BEGIN CATCH
			SELECT 'No courses found!'
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SelectAllExams]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SelectAllExams]
AS
	BEGIN
		BEGIN TRY
			IF EXISTS(SELECT * FROM [dbo].[Exam])
			BEGIN
				SELECT *
				FROM   [dbo].[Exam]
			END
			ELSE
			BEGIN
				SELECT 'No exams found!'
			END  
		END TRY
		BEGIN CATCH
			SELECT 'No exams found!'
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SelectAllStudents]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SelectAllStudents] 
AS
	BEGIN
		BEGIN TRY
			IF EXISTS(SELECT * FROM [dbo].[Student])
			BEGIN
				SELECT *
				FROM   [dbo].[Student]
			END
			ELSE
			BEGIN
				SELECT 'No students found!'
			END
		END TRY
		BEGIN CATCH
			SELECT 'No students found!'
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SelectAllTopics]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SelectAllTopics]
AS
	BEGIN
		BEGIN TRY
			IF EXISTS(SELECT * FROM [dbo].[Topic])
			BEGIN
				SELECT *
				FROM   [dbo].[Topic]
			END
			ELSE
			BEGIN
				SELECT 'No topics found!'
			END 
		END TRY
		BEGIN CATCH
			SELECT 'No topics found!'
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SelectChoice]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SelectChoice] @columnName VARCHAR(50)
	,@columnValue VARCHAR(700)
AS
DECLARE @sql NVARCHAR(MAX)

IF (ISNUMERIC(@columnName) = 1)
BEGIN
	SET @sql = 'SELECT * FROM Choice WHERE ' + @columnName + ' = ' + @columnValue
END
ELSE
BEGIN
	SET @sql = 'SELECT * FROM Choice WHERE ' + @columnName + ' = ''' + @columnValue + '''';
END

EXEC (@sql) 
GO
/****** Object:  StoredProcedure [dbo].[SelectChoiceById]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SelectChoiceById]
    @Q_Id VARCHAR(5)
AS
DECLARE @sql NVARCHAR(MAX)
	SET @sql = 'SELECT * FROM Choice WHERE Q_Id = '+ @Q_Id
EXEC (@sql) 
GO
/****** Object:  StoredProcedure [dbo].[SelectChoiceById_Correct_Ans]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SelectChoiceById_Correct_Ans]
    @Q_Id VARCHAR(5)
AS
DECLARE @sql NVARCHAR(MAX)


	SET @sql = 'SELECT * FROM Choice WHERE Q_Id = '+ @Q_Id+' AND Correct_Ans = 1'
GO
/****** Object:  StoredProcedure [dbo].[SelectCourseById]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SelectCourseById] @CourseID INT 
AS
	BEGIN
		BEGIN TRY
			IF EXISTS(SELECT * FROM   [dbo].[Course] WHERE [Cr_Id] = @CourseID)
			BEGIN
				SELECT *
				FROM [dbo].[Course]
				WHERE [Cr_Id] = @CourseID
			END
			ELSE
			BEGIN
				SELECT 'No course found!'
			END
		END TRY	
		BEGIN CATCH
			SELECT 'No course found!'
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SelectCourseByName]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SelectCourseByName] @CourseName VARCHAR(50)
AS
	BEGIN
		BEGIN TRY
			IF EXISTS(SELECT * FROM   [dbo].[Course] WHERE [Cr_Name] = @CourseName)
			BEGIN
				SELECT *
				FROM [dbo].[Course]
				WHERE [Cr_Name] = @CourseName
			END
			ELSE
			BEGIN
				SELECT 'No course found!'
			END
		END TRY	
		BEGIN CATCH
			SELECT 'No course found!'
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SelectCourseExams]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SelectCourseExams] @CourseID INT 
AS
	BEGIN
		BEGIN TRY
			IF EXISTS(SELECT * FROM [dbo].[Exam] WHERE [Cr_Id] = @CourseID)
			BEGIN
				SELECT *
				FROM   [dbo].[Exam]
				WHERE [Cr_Id] = @CourseID
			END
			ELSE
			BEGIN
				SELECT 'No exams found!'
			END
		END TRY	
		BEGIN CATCH
			SELECT 'Exam not found!'
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SelectCourseIDByTopicName]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SelectCourseIDByTopicName] @TopicName VARCHAR(50)
AS
	BEGIN
		BEGIN TRY
			IF EXISTS(SELECT * FROM [dbo].[Topic] WHERE [Topic_Name] = @TopicName)
			BEGIN
				SELECT	[Cr_Id]
				FROM	[dbo].[Topic]
				WHERE	[Topic_Name] = @TopicName
			END
			ELSE
			BEGIN
				SELECT	'No course found!'
			END
		END TRY	
		BEGIN CATCH
			SELECT 'No course found!'
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SelectCourseTopics]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SelectCourseTopics] @CourseID INT
AS
	BEGIN
		BEGIN TRY
			IF EXISTS(SELECT * FROM [dbo].[Topic] WHERE [Cr_Id] = @CourseID)
			BEGIN
				SELECT	*
				FROM	[dbo].[Topic]
				WHERE	[Cr_Id] = @CourseID
			END
			ELSE
			BEGIN
				SELECT	'No topics found!'
			END
		END TRY	
		BEGIN CATCH
			SELECT 'No topics found!'
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SelectDepartmentById]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SelectDepartmentById] @id int
as
if exists (select * from Department where Dept_Id=@id)
	select * from Department where Dept_Id=@id
else
	select 'Invalid department ID'
GO
/****** Object:  StoredProcedure [dbo].[SelectDepartmentByName]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SelectDepartmentByName] @name varchar(50)
as
if exists (select * from Department where Dept_Name=@name)
	select * from Department where Dept_Name=@name
else
	select 'Invalid department Name'
GO
/****** Object:  StoredProcedure [dbo].[SelectDepartments]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SelectDepartments] 
as
select * from Department
GO
/****** Object:  StoredProcedure [dbo].[SelectExamById]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SelectExamById] @ExamID INT 
AS
	BEGIN
		BEGIN TRY
			IF EXISTS(SELECT * FROM [dbo].[Exam] WHERE [Ex_Num] = @ExamID)
			BEGIN
				SELECT *
				FROM   [dbo].[Exam]
				WHERE [Ex_Num] = @ExamID
			END
			ELSE
			BEGIN
				SELECT 'No exams found!'
			END
		END TRY	
		BEGIN CATCH
			SELECT 'Exam not found!'
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SelectInsDepCrRelationByCr]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- SelectInsDepCrRelationByDep 3
-----------------------------------------------------------------------------------------------------------------------
create proc [dbo].[SelectInsDepCrRelationByCr] @id int
as
if exists(select * from Ins_Dept_Cr where Cr_Id=@id)
	select * from Ins_Dept_Cr where Cr_Id=@id
else
	select 'data does not exist'

GO
/****** Object:  StoredProcedure [dbo].[SelectInsDepCrRelationByDep]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- SelectInsDepCrRelationByIns 1
-----------------------------------------------------------------------------------------------------------------------
create proc [dbo].[SelectInsDepCrRelationByDep] @id int
as
if exists(select * from Ins_Dept_Cr where Dept_Id=@id)
	select * from Ins_Dept_Cr where Dept_Id=@id
else
	select 'data does not exist'

GO
/****** Object:  StoredProcedure [dbo].[SelectInsDepCrRelationByIns]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- SelectInsDepCrRelations
-----------------------------------------------------------------------------------------------------------------------
create proc [dbo].[SelectInsDepCrRelationByIns] @id int
as
if exists(select * from Ins_Dept_Cr where Ins_Id=@id)
	select * from Ins_Dept_Cr where Ins_Id=@id
else
	select 'data does not exist'

GO
/****** Object:  StoredProcedure [dbo].[SelectInsDepCrRelations]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- InsertInsDepCrRelation 4,4,3
---------------------------------------------------------------------------
create proc [dbo].[SelectInsDepCrRelations]
as
select * from Ins_Dept_Cr

GO
/****** Object:  StoredProcedure [dbo].[SelectInstrucorByEmail]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SelectInstrucorByEmail] @Email VARCHAR(50)
AS
	BEGIN
		BEGIN TRY
			IF EXISTS(SELECT * FROM	[dbo].[Instrucor] WHERE [Email] = @Email)
			BEGIN
				SELECT	*
				FROM	[dbo].[Instrucor]
				WHERE	[Email] = @Email
					
			END
			ELSE
			BEGIN
				SELECT 'No Instrucors found!'
			END
		END TRY	
		BEGIN CATCH
			SELECT 'No Instrucors found!'
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SelectInstructorByEmail]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SelectInstructorByEmail] @Email VARCHAR(50)
AS
	BEGIN
		BEGIN TRY
			IF EXISTS(SELECT * FROM	[dbo].[Instructor] WHERE Ins_Email = @Email)
			BEGIN
				SELECT	*
				FROM	[dbo].[Instructor]
				WHERE	Ins_Email = @Email
					
			END
			ELSE
			BEGIN
				SELECT 'No Instrucors found!'
			END
		END TRY	
		BEGIN CATCH
			SELECT 'No Instrucors found!'
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SelectInstructorById]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SelectInstructorById] @id int
as
if exists (select * from Instructor where Ins_Id=@id)
	select * from Instructor where Ins_Id=@id
else 
	select 'ID does not exist'
GO
/****** Object:  StoredProcedure [dbo].[SelectInstructorByName]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SelectInstructorByName] @name varchar(50)
as
if exists (select * from Instructor where Ins_Name=@name)
	select * from Instructor where Ins_Name=@name
else 
	select 'Name does not exist'
GO
/****** Object:  StoredProcedure [dbo].[SelectInstructors]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SelectInstructors] 
as
select * from Instructor
GO
/****** Object:  StoredProcedure [dbo].[SelectQuestionByExam]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SelectQuestionByExam] 
                    @ExamNum VARCHAR(50)
as 

select e.Q_Id , q.Q_Content from Exam_Questions e inner join Question q on e.Q_Id = q.Q_Id where e.Exam_Num = @ExamNum
GO
/****** Object:  StoredProcedure [dbo].[SelectStuCrRelationByCr]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SelectStuCrRelationByCr] @id int
as
if exists(select * from Stu_Courses where Cr_Id=@id)
	select * from Stu_Courses where Cr_Id=@id
else
	select 'data does not exist'
GO
/****** Object:  StoredProcedure [dbo].[SelectStuCrRelationByStu]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SelectStuCrRelationByStu] @id int
as
if exists(select * from Student where St_Id=@id)
	select * from Stu_Courses where St_Id=@id
else
	select 'data does not exist'
GO
/****** Object:  StoredProcedure [dbo].[SelectStuCrRelations]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SelectStuCrRelations]
as
select * from Stu_Courses
GO
/****** Object:  StoredProcedure [dbo].[SelectStudentByEmail]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SelectStudentByEmail] @StudentEmail VARCHAR(50)
AS
	BEGIN
		BEGIN TRY
			IF EXISTS(SELECT * FROM	[dbo].[Student] WHERE [Email] = @StudentEmail)
			BEGIN
				SELECT	*
				FROM	[dbo].[Student]
				WHERE	[Email] = @StudentEmail
			END
			ELSE
			BEGIN
				SELECT 'No students found!'
			END
		END TRY	
		BEGIN CATCH
			SELECT 'No students found!'
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SelectStudentByEmPass]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SelectStudentByEmPass] @StudentEmail VARCHAR(50), @StudentPassword VARCHAR(50)
AS
	BEGIN
		BEGIN TRY
			IF EXISTS(SELECT * FROM	[dbo].[Student] WHERE [Email] = @StudentEmail AND	[Password] = @StudentPassword)
			BEGIN
				SELECT	*
				FROM	[dbo].[Student]
				WHERE	[Email] = @StudentEmail
					AND	[Password] = @StudentPassword
			END
			ELSE
			BEGIN
				SELECT 'No students found!'
			END
		END TRY	
		BEGIN CATCH
			SELECT 'No students found!'
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SelectStudentById]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SelectStudentById] @StudentId INT 
AS
	BEGIN
		BEGIN TRY
			IF EXISTS(SELECT * FROM	[dbo].[Student] WHERE	[St_Id]=@StudentId)
			BEGIN
				SELECT	*
				FROM	[dbo].[Student]
				WHERE	[St_Id]=@StudentId
			END
			ELSE
			BEGIN
				SELECT 'No students found!'
			END
		END TRY	
		BEGIN CATCH
			SELECT 'No students found!'
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SelectStudentInCourse]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-----------------------------
-- Get Number of student in Course:
-----------------------------
CREATE Proc [dbo].[SelectStudentInCourse] @id INT
AS

IF EXISTS(SELECT COUNT([St_Id]) FROM [dbo].[Stu_Courses] WHERE [Cr_Id] = @id)
BEGIN
	SELECT COUNT([St_Id]) AS Counter
	FROM	[dbo].[Stu_Courses]
	WHERE	[Cr_Id] = @id

END
ELSE
	SELECT 'No data!'

GO
/****** Object:  StoredProcedure [dbo].[SelectStudentsByDeptId]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- testing
--SelectStudentByEmPass 'ahmad.ali@example.com', 'password123' -- works well
--GO
--SelectStudentByEmPass 'ahmad.ali@example.com', 'password' -- works well
--GO
-----------------------------
-- Get student according to their Department:
-----------------------------
CREATE Proc [dbo].[SelectStudentsByDeptId] @DeptId INT 
AS
	BEGIN
		BEGIN TRY
			IF EXISTS(SELECT * FROM	[dbo].[Student] WHERE [Dept_Id] = @DeptId)
			BEGIN
				SELECT	[St_Id]		AS [Student ID]
					   ,[St_Name]	AS [Student Name]
					   ,[Email]		AS [Student Email]
				FROM	[dbo].[Student]
				WHERE	[Dept_Id] = @DeptId
				ORDER BY [St_Name]
			END
			ELSE
			BEGIN
				SELECT 'No students found!'
			END
		END TRY	
		BEGIN CATCH
			SELECT 'No students found!'
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SelectTF]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SelectTF] @columnName VARCHAR(50)
	,@columnValue VARCHAR(20)
AS
DECLARE @sql NVARCHAR(MAX)

IF (ISNUMERIC(@columnName) = 1)
BEGIN
	SET @sql = 'SELECT * FROM TF WHERE ' + @columnName + ' = ' + @columnValue
END
ELSE
BEGIN
	SET @sql = 'SELECT * FROM TF WHERE ' + @columnName + ' = ''' + @columnValue + '''';
END
GO
/****** Object:  StoredProcedure [dbo].[SelectTF_By_Id]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SelectTF_By_Id]
        @Q_Id VARCHAR(3)
	
AS
DECLARE @sql NVARCHAR(MAX)


	SET @sql = 'SELECT * FROM TF WHERE Q_Id = ' + @Q_Id
GO
/****** Object:  StoredProcedure [dbo].[StudentExamAnswers]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[StudentExamAnswers] @examID INT, @StudentID INT, @QuestionID INT, @StudendAnswer1 VARCHAR(400),
						 @StudendAnswer2 VARCHAR(400), @StudendAnswer3 VARCHAR(400), @StudendAnswer4 VARCHAR(400),
						 @StudendAnswer5 VARCHAR(400), @StudendAnswer6 VARCHAR(400), @StudendAnswer7 VARCHAR(400),
						 @StudendAnswer8 VARCHAR(400), @StudendAnswer9 VARCHAR(400), @StudendAnswer10 VARCHAR(400)
AS
	BEGIN
		DECLARE @StudentName varchar(50) = (select [St_Name] from [dbo].[Student] where [St_Id] = @StudentID)

		BEGIN TRY
			IF	(NOT EXISTS(SELECT * FROM [dbo].[Exam] WHERE [Ex_Num] = @examID) 
					OR NOT EXISTS(SELECT * FROM [dbo].[Student] WHERE [St_Id] = @StudentID) 
					OR NOT EXISTS(SELECT * FROM [dbo].[Question] WHERE [Q_Id] = @QuestionID))
			BEGIN
				SELECT 'Wrong information!'
			END
			ELSE
			BEGIN
				DECLARE @counter INT = 1
				WHILE @counter < 11
				BEGIN
					IF @counter = 1
						INSERT INTO [dbo].[Stu_Exam_Question]([Exam_Num], [St_Id], [Q_Id], [Answer])
						VALUES (@examID, @StudentID, @QuestionID, @StudendAnswer1)
					ELSE IF @counter = 2
						INSERT INTO [dbo].[Stu_Exam_Question]([Exam_Num], [St_Id], [Q_Id], [Answer])
						VALUES (@examID, @StudentID, @QuestionID, @StudendAnswer2)
					ELSE IF @counter = 3
						INSERT INTO [dbo].[Stu_Exam_Question]([Exam_Num], [St_Id], [Q_Id], [Answer])
						VALUES (@examID, @StudentID, @QuestionID, @StudendAnswer3)
					ELSE IF @counter = 4
						INSERT INTO [dbo].[Stu_Exam_Question]([Exam_Num], [St_Id], [Q_Id], [Answer])
						VALUES (@examID, @StudentID, @QuestionID, @StudendAnswer4)
					ELSE IF @counter = 5
						INSERT INTO [dbo].[Stu_Exam_Question]([Exam_Num], [St_Id], [Q_Id], [Answer])
						VALUES (@examID, @StudentID, @QuestionID, @StudendAnswer5)
					ELSE IF @counter = 6
						INSERT INTO [dbo].[Stu_Exam_Question]([Exam_Num], [St_Id], [Q_Id], [Answer])
						VALUES (@examID, @StudentID, @QuestionID, @StudendAnswer6)
					ELSE IF @counter = 7
						INSERT INTO [dbo].[Stu_Exam_Question]([Exam_Num], [St_Id], [Q_Id], [Answer])
						VALUES (@examID, @StudentID, @QuestionID, @StudendAnswer7)
					ELSE IF @counter = 8
						INSERT INTO [dbo].[Stu_Exam_Question]([Exam_Num], [St_Id], [Q_Id], [Answer])
						VALUES (@examID, @StudentID, @QuestionID, @StudendAnswer8)
					ELSE IF @counter = 9
						INSERT INTO [dbo].[Stu_Exam_Question]([Exam_Num], [St_Id], [Q_Id], [Answer])
						VALUES (@examID, @StudentID, @QuestionID, @StudendAnswer9)
					ELSE IF @counter = 10
						INSERT INTO [dbo].[Stu_Exam_Question]([Exam_Num], [St_Id], [Q_Id], [Answer])
						VALUES (@examID, @StudentID, @QuestionID, @StudendAnswer10)
    
					SET @counter = @counter + 1
				END
			END
			SELECT @StudentName + ' finished the exam ' + CAST(@examID AS VARCHAR) + ' and registration done, Good luck :)'
		END TRY
		BEGIN CATCH
			SELECT 'Failed to get your answers!'
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[Update_Answerd_Question]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[Update_Answerd_Question] @Serched_Col VARCHAR(20)
	,@Serched_Val VARCHAR(300)
	,@columnName VARCHAR(50)
	,@columnValue VARCHAR(300)
AS
DECLARE @sql NVARCHAR(MAX)

IF (ISNUMERIC(@columnValue) = 1)
BEGIN
	SET @sql = 'update  Stu_Exam_Question set ' + @columnName + ' = ' + @columnValue + '  WHERE ' + @Serched_Col + ' = ' + @Serched_Val;
END
ELSE
BEGIN
	SET @sql = 'update  Stu_Exam_Question set ' + @columnName + ' =  ''' + @columnValue + '''  WHERE ' + @Serched_Col + ' = ' + @Serched_Val;
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateChoice]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UpdateChoice] @QuestionId VARCHAR(5)
	,@ChoiceContent VARCHAR(700)
	,@columnName VARCHAR(100)
	,@columnValue VARCHAR(700)
AS
DECLARE @sql NVARCHAR(MAX)

IF (ISNUMERIC(@columnValue) = 1)
BEGIN
	SET @sql = 'update  Choice set ' + @columnName + ' = ' + @columnValue + '  WHERE Q_Id = ' + @QuestionId + ' AND Choice_Content =  ''' + @ChoiceContent + '''';
END
ELSE
BEGIN
	SET @sql = 'update  Choice set ' + @columnName + ' =  ''' + @columnValue + ''' WHERE Q_Id = ' + @QuestionId + ' AND Choice_Content =  ''' + @ChoiceContent + '''';
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateCourseIdOfExamByExamID]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[UpdateCourseIdOfExamByExamID] @NewCourseID INT, @ExamID INT
AS
	BEGIN
		BEGIN TRY
			IF NOT EXISTS(SELECT * FROM [dbo].[Exam] WHERE [Ex_Num] = @ExamID)
			BEGIN
				SELECT 'Not Available'
			END
			ELSE
			BEGIN
				UPDATE [dbo].[Exam]
				SET [Cr_Id] = ISNULL(@NewCourseID,'No Data!')
				WHERE [Ex_Num] = @ExamID;
			END
		END TRY
		BEGIN CATCH
			SELECT 'Update Failed!'
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[UpdateCourseName]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[UpdateCourseName] @CourseID INT, @Name VARCHAR(50)
AS
	
				UPDATE [dbo].[Course]
				SET [Cr_Name] = ISNULL(@Name,'No Data!')
				WHERE [Cr_Id] = @CourseID;
GO
/****** Object:  StoredProcedure [dbo].[UpdateCourseNameByID]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[UpdateCourseNameByID] @CourseID INT, @Name VARCHAR(50)
AS
	BEGIN
		BEGIN TRY
			IF NOT EXISTS(SELECT * FROM [dbo].[Course] WHERE [Cr_Id] = @CourseID)
			BEGIN
				SELECT 'Not Available'
			END
			ELSE
			BEGIN
				UPDATE [dbo].[Course]
				SET [Cr_Name] = ISNULL(@Name,'No Data!')
				WHERE [Cr_Id] = @CourseID;
			END
		END TRY
		BEGIN CATCH
			SELECT 'Update Failed!'
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[UpdateCourseNameByName]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[UpdateCourseNameByName] @OldCourseName VARCHAR(50), @NewCourseName VARCHAR(50)
AS
	BEGIN
		BEGIN TRY
			IF NOT EXISTS(SELECT * FROM [dbo].[Course] WHERE [Cr_Name] = @OldCourseName)
			BEGIN
				SELECT 'Not Available'
			END
			ELSE
			BEGIN
				UPDATE [dbo].[Course]
				SET [Cr_Name] = ISNULL(@NewCourseName, 'No Data!')
				WHERE [Cr_Name] = @OldCourseName;
			END
		END TRY
		BEGIN CATCH
			SELECT 'Update Failed!'
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[UpdateDepartmentById]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UpdateDepartmentById] @id int, @name varchar(50), @MngrId int
as
if exists (select * from Department where Dept_Id=@id)
	begin
		declare @MId int
		select @MId=Ins_Id from Instructor where @MngrId=Ins_Id

		if(@MId is not null)
			begin
				update Department set Dept_Name=@name,Manager_Id=@MngrId where Dept_Id=@id
			end
		else
			select 'Invalid Manager ID'
	end
else
	select 'Invalid department ID'
GO
/****** Object:  StoredProcedure [dbo].[UpdateDepartmentByName]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UpdateDepartmentByName] @name varchar(50), @MngrId int
as
if exists (select * from Department where Dept_Name=@name)
	begin
		declare @MId int
		select @MId=Ins_Id from Instructor where @MngrId=Ins_Id

		if(@MId is not null)
			begin
				update Department set Manager_Id=@MngrId where Dept_Name=@name
			end
		else
			select 'Invalid Manager ID'
	end
else
	select 'Invalid department Name'
GO
/****** Object:  StoredProcedure [dbo].[UpdateGrade]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UpdateGrade] @StuId int ,@CrId int ,@grade int
as
if exists(select * from Stu_Courses where St_Id=@StuId and Cr_Id=@CrId)
		update Stu_Courses set Cr_grade=@grade where St_Id=@StuId and Cr_Id=@CrId
else
	select 'data does not exist in Stu_Courses'

GO
/****** Object:  StoredProcedure [dbo].[UpdateInsDepCrRelationByCr]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- UpdateInsDepCrRelationByDep 2,4,2
-----------------------------------------------------------------------------------------------------------------------
create proc [dbo].[UpdateInsDepCrRelationByCr] @InsId int ,@DepId int ,@CrId int
as

if (exists(select * from Instructor where Ins_Id=@InsId) and exists(select * from Department where Dept_Id=@DepId) and exists(select * from Course where Cr_Id=@CrId) )
	begin
		if exists(select * from Ins_Dept_Cr where Cr_Id=@CrId)
			update Ins_Dept_Cr set Dept_id=@DepId,Ins_Id=@InsId where Cr_Id=@CrId
		else
			select 'Course ID not in Ins_Dept_Cr record'
	end
else
	select 'invalid data'

GO
/****** Object:  StoredProcedure [dbo].[UpdateInsDepCrRelationByDep]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- UpdateInsDepCrRelationByIns 1,2,1
-----------------------------------------------------------------------------------------------------------------------
create proc [dbo].[UpdateInsDepCrRelationByDep] @InsId int ,@DepId int ,@CrId int
as

if (exists(select * from Instructor where Ins_Id=@InsId) and exists(select * from Department where Dept_Id=@DepId) and exists(select * from Course where Cr_Id=@CrId) )
	begin
		if exists(select * from Ins_Dept_Cr where Dept_id=@DepId)
			update Ins_Dept_Cr set Cr_Id=@CrId,Ins_Id=@InsId where Dept_id=@DepId
		else
			select 'Department ID not in Ins_Dept_Cr record'
	end
else
	select 'invalid data'

GO
/****** Object:  StoredProcedure [dbo].[UpdateInsDepCrRelationByIns]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- SelectInsDepCrRelationByCr 4
-----------------------------------------------------------------------------------------------------------------------
create proc [dbo].[UpdateInsDepCrRelationByIns] @InsId int ,@DepId int ,@CrId int
as
if (exists(select * from Instructor where Ins_Id=@InsId) and exists(select * from Department where Dept_Id=@DepId) and exists(select * from Course where Cr_Id=@CrId) )
	begin
		if exists(select * from Ins_Dept_Cr where Ins_Id=@InsId)
			update Ins_Dept_Cr set Dept_id=@DepId,Cr_Id=@CrId where Ins_Id=@InsId
		else
			select 'Instructor ID not in Ins_Dept_Cr record'
	end
else
	select 'invalid data'
GO
/****** Object:  StoredProcedure [dbo].[UpdateInstructorById]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UpdateInstructorById] @id int, @name varchar(50), @email varchar(50),@pass varchar(50) 
as
if exists (select * from Instructor where Ins_Id=@id)
	update Instructor set Ins_Name=@name,Ins_Email=@email,Ins_Password=@pass where Ins_Id=@id
else 
	select 'ID does not exist'
GO
/****** Object:  StoredProcedure [dbo].[UpdateInstructorByName]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- UpdateInstructorById 101,555,555,555
-----------------------------------------------------------------------------------------------------------------------
create proc [dbo].[UpdateInstructorByName] @name varchar(50), @email varchar(50),@pass varchar(50) 
as
if exists (select * from Instructor where Ins_Name=@name)
	update Instructor set Ins_Email=@email,Ins_Password=@pass where Ins_Name=@name
else 
	select 'Name does not exist'

GO
/****** Object:  StoredProcedure [dbo].[UpdateQuestionById]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UpdateQuestionById] @SerchedId VARCHAR(4)
	,@columnName VARCHAR(50)
	,@columnValue VARCHAR(700)
AS
DECLARE @sql NVARCHAR(MAX)

IF (ISNUMERIC(@columnValue) = 1)
BEGIN
	SET @sql = 'update  Question set ' + @columnName + ' = ' + @columnValue + '  WHERE Q_Id = ' + @SerchedId;
END
ELSE
BEGIN
	SET @sql = 'update  Question set ' + @columnName + ' =  ''' + @columnValue + '''  WHERE Q_Id = ' + @SerchedId;
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateStuCrRelationByCr]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- UpdateStuCrRelationByStu 31,77,5
-----------------------------------------------------------------------------------------------------------------------
create proc [dbo].[UpdateStuCrRelationByCr] @StuId1 int ,@CrId int ,@StuId2 int
as
if exists(select * from Student where St_Id=@StuId2)
	begin
	if exists(select * from Stu_Courses where St_Id=@StuId1 and Cr_Id=@CrId)
		update Stu_Courses set St_Id=@StuId2 where Cr_Id=@CrId and St_Id=@StuId1
	else
		select 'data does not exist in Stu_Courses'
	end
else
	select 'invalid Student ID'

GO
/****** Object:  StoredProcedure [dbo].[UpdateStuCrRelationByStu]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UpdateStuCrRelationByStu] @StuId int ,@CrId1 int,@CrId2 int
as
if exists(select * from Course where Cr_Id=@CrId2)
	begin
	if exists(select * from Stu_Courses where St_Id=@StuId and Cr_Id=@CrId1)
		update Stu_Courses set Cr_Id=@CrId2 where St_Id=@StuId and Cr_Id=@CrId1
	else
		select 'data does not exist'
	end
else
	select 'invalid course ID'
GO
/****** Object:  StoredProcedure [dbo].[UpdateStudentByID]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[UpdateStudentByID] @StudentId INT, @Name VARCHAR(50), @DepartmentID INT, @Email VARCHAR(50), @Password VARCHAR(50)
AS
	BEGIN
		BEGIN TRY
			IF NOT EXISTS(SELECT * FROM [dbo].[Student] WHERE [St_Id] = @StudentId)
			BEGIN
				SELECT 'Not Available'
			END
			ELSE
			BEGIN
				UPDATE [dbo].[Student]
				SET [St_Name] = ISNULL(@Name,'No Data!'),
					[Dept_Id] = ISNULL(@DepartmentID,'No Data!'),
					[Email] = ISNULL(@Email,'No Data!'),
					[Password] = ISNULL(@Password,'No Data!')
				WHERE [St_Id] = @StudentId;
			END
		END TRY
		BEGIN CATCH
			SELECT 'Update Failed .. Make sure its valid information, Please!'
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[UpdateStudentByName]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[UpdateStudentByName] @OldStudentName VARCHAR(50), @NewStudentName VARCHAR(50), @DepartmentID INT, @Email VARCHAR(50), @Password VARCHAR(50)
AS
	BEGIN
		BEGIN TRY
			IF NOT EXISTS(SELECT * FROM [dbo].[Student] WHERE [St_Name] = @OldStudentName)
			BEGIN
				SELECT 'Not Available'
			END
			ELSE
			BEGIN
				UPDATE	[dbo].[Student]
				SET		[St_Name] = ISNULL(@NewStudentName,'No Data!'),
						[Dept_Id] = ISNULL(@DepartmentID,'No Data!'),
						[Email] = ISNULL(@Email,'No Data!'),
						[Password] = ISNULL(@Password,'No Data!')
				WHERE	[St_Name] = @OldStudentName;
			END
		END TRY
		BEGIN CATCH
			SELECT 'Update Failed .. Make sure its valid information, Please!'
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTF]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UpdateTF] @QuestionId VARCHAR(5)
	,@IsTrue VARCHAR(1)
	,@columnName VARCHAR(50)
	,@columnValue VARCHAR(5)
AS
DECLARE @sql NVARCHAR(MAX)

SET @sql = 'update  TF set ' + @columnName + ' = ' + @columnValue + '  WHERE Q_Id = ' + @QuestionId + ' AND Correct_Ans =  ' + @IsTrue;
GO
/****** Object:  StoredProcedure [dbo].[UpdateTopicCourseID]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[UpdateTopicCourseID] @CourseID INT, @TopicName VARCHAR(50)
AS
	BEGIN
		BEGIN TRY
			IF NOT EXISTS(SELECT * FROM [dbo].[Topic] WHERE [Topic_Name] = @TopicName)
			BEGIN
				SELECT 'Not Available'
			END
			ELSE
			BEGIN
				UPDATE [dbo].[Topic]
				SET [Cr_Id] = ISNULL(@CourseID,'No Data!')
				WHERE [Topic_Name] = @TopicName;
			END
		END TRY
		BEGIN CATCH
			SELECT 'Update Failed!'
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTopicNameByName]    Script Date: 3/24/2023 10:12:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[UpdateTopicNameByName] @NewTopicName VARCHAR(50), @OldTopicName VARCHAR(50)
AS
	BEGIN
		BEGIN TRY
			IF NOT EXISTS(SELECT * FROM [dbo].[Topic] WHERE [Topic_Name] = @OldTopicName)
			BEGIN
				SELECT 'Not Available'
			END
			ELSE
			BEGIN
				UPDATE [dbo].[Topic]
				SET [Topic_Name] = ISNULL(@NewTopicName,'No Data!')
				WHERE [Topic_Name] = @OldTopicName;
			END
		END TRY
		BEGIN CATCH
			SELECT 'Update Failed!'
		END CATCH
	END
GO
