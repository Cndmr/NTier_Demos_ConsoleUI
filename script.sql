USE [DbVisit3]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 8.09.2022 17:38:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[CommentId] [int] IDENTITY(1,1) NOT NULL,
	[LocationId] [int] NOT NULL,
	[MemberId] [int] NOT NULL,
	[CommenContent] [nvarchar](max) NULL,
	[CommentStatus] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Comments] PRIMARY KEY CLUSTERED 
(
	[CommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Locations]    Script Date: 8.09.2022 17:38:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locations](
	[LocationId] [int] IDENTITY(1,1) NOT NULL,
	[LocationName] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Locations] PRIMARY KEY CLUSTERED 
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Members]    Script Date: 8.09.2022 17:38:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Members](
	[MemberId] [int] IDENTITY(1,1) NOT NULL,
	[MemberName] [nvarchar](max) NULL,
	[MemberSurname] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Members] PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([CommentId], [LocationId], [MemberId], [CommenContent], [CommentStatus]) VALUES (1, 3, 5, N'Çok iyi bir şehir', 1)
INSERT [dbo].[Comments] ([CommentId], [LocationId], [MemberId], [CommenContent], [CommentStatus]) VALUES (2, 3, 8, N'eğer zamanınız olursa kız kulesiniz izyaret edin', 1)
INSERT [dbo].[Comments] ([CommentId], [LocationId], [MemberId], [CommenContent], [CommentStatus]) VALUES (3, 10, 8, N'Hollanda mükemmel', 1)
INSERT [dbo].[Comments] ([CommentId], [LocationId], [MemberId], [CommenContent], [CommentStatus]) VALUES (5, 1, 6, N'sırbıstianın başkenti', 1)
SET IDENTITY_INSERT [dbo].[Comments] OFF
GO
SET IDENTITY_INSERT [dbo].[Locations] ON 

INSERT [dbo].[Locations] ([LocationId], [LocationName]) VALUES (1, N'Belgrad')
INSERT [dbo].[Locations] ([LocationId], [LocationName]) VALUES (2, N'Çanakkale')
INSERT [dbo].[Locations] ([LocationId], [LocationName]) VALUES (3, N'İstanbul')
INSERT [dbo].[Locations] ([LocationId], [LocationName]) VALUES (5, N'Brüksel')
INSERT [dbo].[Locations] ([LocationId], [LocationName]) VALUES (6, N'Erzincan')
INSERT [dbo].[Locations] ([LocationId], [LocationName]) VALUES (7, N'Trabzon')
INSERT [dbo].[Locations] ([LocationId], [LocationName]) VALUES (8, N'Berlin')
INSERT [dbo].[Locations] ([LocationId], [LocationName]) VALUES (9, N'Paris')
INSERT [dbo].[Locations] ([LocationId], [LocationName]) VALUES (10, N'Rotterdam')
SET IDENTITY_INSERT [dbo].[Locations] OFF
GO
SET IDENTITY_INSERT [dbo].[Members] ON 

INSERT [dbo].[Members] ([MemberId], [MemberName], [MemberSurname]) VALUES (1, N'Ali', N'Çınar')
INSERT [dbo].[Members] ([MemberId], [MemberName], [MemberSurname]) VALUES (2, N'Eylül', N'Yücedağ')
INSERT [dbo].[Members] ([MemberId], [MemberName], [MemberSurname]) VALUES (3, N'Ahmet', N'Yıldız')
INSERT [dbo].[Members] ([MemberId], [MemberName], [MemberSurname]) VALUES (5, N'Veysel', N'Sarı')
INSERT [dbo].[Members] ([MemberId], [MemberName], [MemberSurname]) VALUES (6, N'Mehmet', N'Öztürk')
INSERT [dbo].[Members] ([MemberId], [MemberName], [MemberSurname]) VALUES (7, N'Zeynep', N'Tunç')
INSERT [dbo].[Members] ([MemberId], [MemberName], [MemberSurname]) VALUES (8, N'Buse', N'Yıldız')
INSERT [dbo].[Members] ([MemberId], [MemberName], [MemberSurname]) VALUES (9, N'Aslı', N'Meşe')
INSERT [dbo].[Members] ([MemberId], [MemberName], [MemberSurname]) VALUES (10, N'Cemil', N'Kaya')
SET IDENTITY_INSERT [dbo].[Members] OFF
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Comments_dbo.Locations_LocationId] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Locations] ([LocationId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_dbo.Comments_dbo.Locations_LocationId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Comments_dbo.Members_MemberId] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Members] ([MemberId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_dbo.Comments_dbo.Members_MemberId]
GO
