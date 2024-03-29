USE [Login]
GO
/****** Object:  Table [dbo].[answers]    Script Date: 22-01-19 15.43.16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[answers](
	[qid] [int] NOT NULL,
	[question] [nvarchar](max) NULL,
	[subject] [nvarchar](50) NULL,
	[optiona] [nvarchar](50) NULL,
	[optionb] [nvarchar](50) NULL,
	[optionc] [nvarchar](50) NULL,
	[optiond] [nvarchar](50) NULL,
	[ans] [numeric](18, 0) NULL,
	[verification] [nvarchar](50) NULL,
	[isChecked] [numeric](18, 0) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[question]    Script Date: 22-01-19 15.43.16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[question](
	[qid] [numeric](18, 0) NOT NULL,
	[question] [nvarchar](max) NOT NULL,
	[settype] [varchar](50) NOT NULL,
	[choicea] [nvarchar](50) NOT NULL,
	[choiceb] [nvarchar](50) NOT NULL,
	[choicec] [nvarchar](50) NOT NULL,
	[choiced] [nvarchar](50) NOT NULL,
	[ans] [numeric](18, 0) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[results]    Script Date: 22-01-19 15.43.16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[results](
	[username] [nvarchar](max) NOT NULL,
	[date] [nvarchar](50) NOT NULL,
	[test] [nvarchar](50) NOT NULL,
	[marks] [numeric](18, 0) NOT NULL,
	[totalmarks] [numeric](18, 0) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ulogin]    Script Date: 22-01-19 15.43.16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ulogin](
	[username] [varchar](50) NOT NULL,
	[password] [varchar](100) NOT NULL,
	[student] [nvarchar](50) NULL,
	[teacher] [nvarchar](50) NULL,
	[admin] [nvarchar](50) NULL,
	[rollno] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
