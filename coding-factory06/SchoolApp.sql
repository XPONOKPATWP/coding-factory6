USE [School6DB]
GO
/****** Object:  Table [dbo].[STUDENTS]    Script Date: 3/30/2024 3:02:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STUDENTS](
	[ID] [int] NOT NULL,
	[FIRSTNAME] [nvarchar](50) NULL,
	[LASTNAME] [nvarchar](50) NULL,
	[TEACHER_ID] [int] NULL,
 CONSTRAINT [PK_STUDENTS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEACHERS]    Script Date: 3/30/2024 3:02:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEACHERS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FIRSTNAME] [nvarchar](50) NULL,
	[LASTNAME] [nvarchar](50) NULL,
 CONSTRAINT [PK_TEACHERS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[STUDENTS]  WITH CHECK ADD  CONSTRAINT [FK_STUDENTS_TEACHERS] FOREIGN KEY([TEACHER_ID])
REFERENCES [dbo].[TEACHERS] ([ID])
GO
ALTER TABLE [dbo].[STUDENTS] CHECK CONSTRAINT [FK_STUDENTS_TEACHERS]
GO
