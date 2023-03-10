USE [Butce]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 09/05/2022 16:19:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Category_Id] [int] IDENTITY(1,1) NOT NULL,
	[Category_Name] [nvarchar](100) NOT NULL,
	[Category_Type] [nvarchar](50) NOT NULL,
	[Category_Budget] [decimal](20, 2) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Category_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Islem]    Script Date: 09/05/2022 16:19:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Islem](
	[Islem_Id] [int] IDENTITY(1,1) NOT NULL,
	[Category_NM] [nvarchar](100) NOT NULL,
	[Category_Type] [nvarchar](100) NOT NULL,
	[Payment] [decimal](20, 2) NOT NULL,
	[Note] [nvarchar](max) NULL,
	[Tarih] [date] NOT NULL,
 CONSTRAINT [PK_Islem] PRIMARY KEY CLUSTERED 
(
	[Islem_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Category_Id], [Category_Name], [Category_Type], [Category_Budget]) VALUES (3, N'Maaş', N'GELİR', NULL)
INSERT [dbo].[Category] ([Category_Id], [Category_Name], [Category_Type], [Category_Budget]) VALUES (4, N'Planlanmamış Gelir', N'GELİR', NULL)
INSERT [dbo].[Category] ([Category_Id], [Category_Name], [Category_Type], [Category_Budget]) VALUES (5, N'Burs', N'GELİR', NULL)
INSERT [dbo].[Category] ([Category_Id], [Category_Name], [Category_Type], [Category_Budget]) VALUES (6, N'Market', N'GİDER', CAST(500.00 AS Decimal(20, 2)))
INSERT [dbo].[Category] ([Category_Id], [Category_Name], [Category_Type], [Category_Budget]) VALUES (7, N'Eğlence', N'GİDER', CAST(300.00 AS Decimal(20, 2)))
INSERT [dbo].[Category] ([Category_Id], [Category_Name], [Category_Type], [Category_Budget]) VALUES (8, N'Kira', N'GİDER', CAST(2500.00 AS Decimal(20, 2)))
INSERT [dbo].[Category] ([Category_Id], [Category_Name], [Category_Type], [Category_Budget]) VALUES (9, N'Sağlık', N'GİDER', NULL)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Islem] ON 

INSERT [dbo].[Islem] ([Islem_Id], [Category_NM], [Category_Type], [Payment], [Note], [Tarih]) VALUES (1028, N'Sağlık', N'GİDER', CAST(250.00 AS Decimal(20, 2)), N'', CAST(N'2022-04-20' AS Date))
INSERT [dbo].[Islem] ([Islem_Id], [Category_NM], [Category_Type], [Payment], [Note], [Tarih]) VALUES (1029, N'Eğlence', N'GİDER', CAST(150.00 AS Decimal(20, 2)), N'', CAST(N'2022-05-08' AS Date))
INSERT [dbo].[Islem] ([Islem_Id], [Category_NM], [Category_Type], [Payment], [Note], [Tarih]) VALUES (1030, N'Maaş', N'GELİR', CAST(4250.00 AS Decimal(20, 2)), N'maaş', CAST(N'2022-05-08' AS Date))
SET IDENTITY_INSERT [dbo].[Islem] OFF
GO
ALTER TABLE [dbo].[Islem] ADD  DEFAULT ((0)) FOR [Payment]
GO
