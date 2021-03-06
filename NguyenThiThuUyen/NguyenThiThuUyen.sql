USE [NguyenThiThuUyenDB]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 6/20/2021 6:20:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Description] [nvarchar](250) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/20/2021 6:20:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[UnitCost] [int] NULL,
	[Quantity] [int] NULL,
	[Image] [nvarchar](150) NULL,
	[Description] [nvarchar](350) NULL,
	[Status] [bit] NULL,
	[Category_ID] [nvarchar](50) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 6/20/2021 6:20:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccount](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](150) NULL,
	[Password] [nvarchar](150) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_UserAccount] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (N'001PK', N'Phụ Kiện', N'đồ Phụ kiện')
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (N'002DT', N'Điện Thoại', N'Điện Thoại')
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (N'003LapTop', N'LapTop', N'LapTop')
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (N'004DHTM', N'Đồng Hồ Thông Minh', N'Đồng Hồ Thông Minh')
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (N'005DHTT', N'Đồng Hồ Thời Trang', N'Đồng hồ thời trang')
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (N'006PCMI', N'Máy Pc , in', N'Máy Pc , in')
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [Category_ID]) VALUES (1, N'Xiaomi Redmi Note 10 5G', 1000000, 20, N'/Data/xiaomi.jpg', N'Chiếc điện thoại tầm trung Xiaomi Redmi Note 9 sở hữu thiết kế bo cong mềm mại ở các cạnh, cho trải nghiệm dễ cầm nắm và đằm tay hơn. Mặt sau vẫn được làm nổi bật và dễ nhận biết từ xa với cụm camera nổi bật, đặc trưng của dòng Redmi Note năm nay.', 1, N'002DT')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [Category_ID]) VALUES (2, N'samsung', 2382900, 10, N'/Data/samsung.jpg', N'Samsung Galaxy Tab A8 8 inch T295 (2019) là một chiếc máy tính bảng gọn nhẹ với màn hình vừa đủ có thể giúp bạn giải trí hay hỗ trợ trẻ nhỏ trong việc học tập.', 1, N'002DT')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [Category_ID]) VALUES (3, N'iphone', 8929277, 2, N'/Data/iphone.jpg', N'Là chiếc điện thoại iPhone có mức giá dễ chịu, phù hợp với nhiều khách hàng hơn, iPhone Xr vẫn được ưu ái trang bị chip Apple A12 mạnh mẽ, màn hình tai thỏ cùng khả năng kháng nước kháng bụi.', 1, N'002DT')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [Category_ID]) VALUES (4, N'oppo a3s', 2828800, 7, N'/Data/oppo.jpg', N'Có thể nói OPPO Reno5 là mẫu điện thoại phô diễn được đỉnh cao thiết kế và công nghệ chế tác của OPPO khi bề mặt lưng được phủ lớp Reno Glow với ngàn tinh thể phát sáng siêu nhỏ tạo nên hiệu ứng chuyển sắc vô cùng hút mắt.', 1, N'003LapTop')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [Category_ID]) VALUES (5, N'viivo bokk', 1231111, 5, N'/Data/vivo.jpg', N'Vivo tung ra chiếc điện thoại Vivo V20 (2021) là phiên bản nâng cấp của Vivo V20 ra mắt trước đó. Chiếc smartphone này được nâng cấp lên bộ xử lý mạnh mẽ hơn mà vẫn giữ được thiết kế siêu mỏng và cụm camera chụp đẹp đáng kinh ngạc.', 1, N'002DT')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [Category_ID]) VALUES (6, N'samsung j7', 4556560, 8, N'/Data/samsung.jpg', N'Samsung Galaxy Tab A8 8 inch T295 (2019) là một chiếc máy tính bảng gọn nhẹ với màn hình vừa đủ có thể giúp bạn giải trí hay hỗ trợ trẻ nhỏ trong việc học tập.', 1, N'002DT')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [Category_ID]) VALUES (12, N'tai phone không dây', 1520, 2, NULL, NULL, NULL, N'001PK')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [Category_ID]) VALUES (15, N'laptop', 1855555, 222, NULL, NULL, NULL, N'001PK')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [Category_ID]) VALUES (17, N'dây sạc pin iphone ', 1200, 100, NULL, NULL, NULL, N'001PK')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[UserAccount] ON 

INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (3, N'admin', N'admin', 1)
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (5, N'tam99', N'tam123', 1)
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (6, N'abaotokyo', N'baodeptrai', 1)
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (8, N'loan', N'loan123', 1)
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (9, N'thuan2912', N'thuan76', 1)
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (10, N'caohien', N'hiencao', 0)
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (11, N'nhuythi', N'cutehotme', 0)
SET IDENTITY_INSERT [dbo].[UserAccount] OFF
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([Category_ID])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
