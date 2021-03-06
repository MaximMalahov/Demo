USE [Comp]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 12.06.2022 22:38:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](12) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 12.06.2022 22:38:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDClient] [int] NOT NULL,
	[IDService] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 12.06.2022 22:38:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Cost] [decimal](18, 2) NOT NULL,
	[Photo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([ID], [Surname], [FirstName], [Patronymic], [Phone], [Email]) VALUES (1, N'ИВАН', N'ПЕТРОВИЧ', N'', N'', NULL)
INSERT [dbo].[Client] ([ID], [Surname], [FirstName], [Patronymic], [Phone], [Email]) VALUES (2, N'ИВАН', N'ПЕТРОВИЧ', N'', N'', NULL)
INSERT [dbo].[Client] ([ID], [Surname], [FirstName], [Patronymic], [Phone], [Email]) VALUES (3, N'ИВАН', N'ПЕТРОВИЧ', N'', N'', NULL)
INSERT [dbo].[Client] ([ID], [Surname], [FirstName], [Patronymic], [Phone], [Email]) VALUES (4, N'ИВАН', N'ПЕТРОВИЧ', N'', N'', NULL)
INSERT [dbo].[Client] ([ID], [Surname], [FirstName], [Patronymic], [Phone], [Email]) VALUES (5, N'ИВАН', N'ПЕТРОВИЧ', N'', N'', NULL)
INSERT [dbo].[Client] ([ID], [Surname], [FirstName], [Patronymic], [Phone], [Email]) VALUES (6, N'ИВАН', N'ПЕТРОВИЧ', N'', N'', NULL)
INSERT [dbo].[Client] ([ID], [Surname], [FirstName], [Patronymic], [Phone], [Email]) VALUES (7, N'ИВАН', N'ПЕТРОВИЧ', N'', N'', NULL)
INSERT [dbo].[Client] ([ID], [Surname], [FirstName], [Patronymic], [Phone], [Email]) VALUES (8, N'ИВАН', N'ПЕТРОВИЧ', N'', N'', NULL)
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID], [IDClient], [IDService], [Count], [Price]) VALUES (1, 1, 11, 5, CAST(900.00 AS Decimal(18, 2)))
INSERT [dbo].[Order] ([ID], [IDClient], [IDService], [Count], [Price]) VALUES (2, 2, 12, 7, CAST(600.00 AS Decimal(18, 2)))
INSERT [dbo].[Order] ([ID], [IDClient], [IDService], [Count], [Price]) VALUES (3, 3, 13, 8, CAST(400.00 AS Decimal(18, 2)))
INSERT [dbo].[Order] ([ID], [IDClient], [IDService], [Count], [Price]) VALUES (4, 4, 14, 1, CAST(200.00 AS Decimal(18, 2)))
INSERT [dbo].[Order] ([ID], [IDClient], [IDService], [Count], [Price]) VALUES (5, 5, 15, 3, CAST(100.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([ID], [Title], [Cost], [Photo]) VALUES (11, N'П', CAST(100.00 AS Decimal(18, 2)), N'')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [Photo]) VALUES (12, N'В', CAST(200.00 AS Decimal(18, 2)), N'')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [Photo]) VALUES (13, N'Ц', CAST(300.00 AS Decimal(18, 2)), N'')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [Photo]) VALUES (14, N'Щ', CAST(400.00 AS Decimal(18, 2)), N'')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [Photo]) VALUES (15, N'Р', CAST(500.00 AS Decimal(18, 2)), N'')
SET IDENTITY_INSERT [dbo].[Service] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Client] FOREIGN KEY([IDClient])
REFERENCES [dbo].[Client] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Client]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Service] FOREIGN KEY([IDService])
REFERENCES [dbo].[Service] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Service]
GO
