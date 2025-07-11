USE [DEM]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 20.06.2025 14:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaterialName] [nvarchar](255) NULL,
	[MaterialTypeId] [int] NULL,
	[UnitPrice] [float] NULL,
	[StockQuantity] [int] NULL,
	[MinQuantity] [int] NULL,
	[PackageQuantity] [int] NULL,
	[UnitId] [int] NULL,
 CONSTRAINT [PK__Material__3214EC0783252E62] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialType]    Script Date: 20.06.2025 14:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaterialType] [nvarchar](100) NULL,
	[DefectPercent] [float] NULL,
 CONSTRAINT [PK__Material__3214EC074E2377CD] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 20.06.2025 14:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductArticle] [int] NULL,
	[ProductName] [nvarchar](255) NULL,
	[ProductTypeId] [int] NULL,
	[MinPartnerPrice] [float] NULL,
	[RollWidth] [float] NULL,
 CONSTRAINT [PK__Product__3214EC07D4D88358] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductMaterial]    Script Date: 20.06.2025 14:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductMaterial](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[MaterialId] [int] NULL,
	[RequiredAmount] [float] NULL,
 CONSTRAINT [PK__ProductM__3214EC07A1085A5A] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 20.06.2025 14:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductType] [nvarchar](100) NULL,
	[TypeCoefficient] [float] NULL,
 CONSTRAINT [PK__ProductT__3214EC07501C95EA] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UnitOfMeasure]    Script Date: 20.06.2025 14:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnitOfMeasure](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UnitName] [nvarchar](50) NULL,
 CONSTRAINT [PK__UnitOfMe__3214EC07E0C02EC8] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Material] ON 

INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [UnitPrice], [StockQuantity], [MinQuantity], [PackageQuantity], [UnitId]) VALUES (1, N'Бумага-основа с покрытием для флизелиновых обоев', 1, 1700, 2500, 1000, 100, 1)
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [UnitPrice], [StockQuantity], [MinQuantity], [PackageQuantity], [UnitId]) VALUES (2, N'Бумага-основа для флизелиновых обоев', 1, 1500, 3000, 1000, 100, 1)
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [UnitPrice], [StockQuantity], [MinQuantity], [PackageQuantity], [UnitId]) VALUES (3, N'Бумага обойная для вспененных виниловых обоев', 1, 1200, 1500, 1000, 100, 1)
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [UnitPrice], [StockQuantity], [MinQuantity], [PackageQuantity], [UnitId]) VALUES (4, N'Концентрат водоразбавляемой печатной краски', 2, 1500, 550, 500, 200, 2)
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [UnitPrice], [StockQuantity], [MinQuantity], [PackageQuantity], [UnitId]) VALUES (5, N'Перламутровый пигмент', 2, 3100, 200, 100, 10, 2)
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [UnitPrice], [StockQuantity], [MinQuantity], [PackageQuantity], [UnitId]) VALUES (6, N'Сухой клей на основе ПВС', 3, 360, 700, 500, 50, 2)
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [UnitPrice], [StockQuantity], [MinQuantity], [PackageQuantity], [UnitId]) VALUES (7, N'Флизелин', 1, 1600, 2000, 1000, 140, 1)
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [UnitPrice], [StockQuantity], [MinQuantity], [PackageQuantity], [UnitId]) VALUES (8, N'Стирол-акриловая дисперсия для производства обоев', 4, 14.9, 2000, 880, 220, 3)
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [UnitPrice], [StockQuantity], [MinQuantity], [PackageQuantity], [UnitId]) VALUES (9, N'Стирол-акриловая дисперсия для гидрофобных покрытий', 4, 14.9, 1200, 880, 220, 3)
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [UnitPrice], [StockQuantity], [MinQuantity], [PackageQuantity], [UnitId]) VALUES (10, N'Акрилат-винилацетатная дисперсия для производства бумаги', 4, 15.5, 1000, 660, 220, 3)
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [UnitPrice], [StockQuantity], [MinQuantity], [PackageQuantity], [UnitId]) VALUES (11, N'Цветная пластизоль', 2, 650, 200, 100, 5, 2)
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [UnitPrice], [StockQuantity], [MinQuantity], [PackageQuantity], [UnitId]) VALUES (12, N'Дисперсия анионно-стабилизированного стирол-акрилового сополимера', 3, 170, 800, 660, 220, 3)
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [UnitPrice], [StockQuantity], [MinQuantity], [PackageQuantity], [UnitId]) VALUES (13, N'Водорастворимая краска водная', 2, 500, 400, 300, 25, 2)
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [UnitPrice], [StockQuantity], [MinQuantity], [PackageQuantity], [UnitId]) VALUES (14, N'Диспергатор минеральных пигментов и наполнителей', 4, 16, 400, 360, 120, 3)
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [UnitPrice], [StockQuantity], [MinQuantity], [PackageQuantity], [UnitId]) VALUES (15, N'Ассоциативный акриловый загуститель', 4, 16.5, 400, 360, 120, 3)
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [UnitPrice], [StockQuantity], [MinQuantity], [PackageQuantity], [UnitId]) VALUES (16, N'Водорастворимая краска спецводная', 2, 700, 350, 300, 25, 2)
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [UnitPrice], [StockQuantity], [MinQuantity], [PackageQuantity], [UnitId]) VALUES (17, N'Металлический пигмент', 2, 4100, 250, 100, 15, 2)
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [UnitPrice], [StockQuantity], [MinQuantity], [PackageQuantity], [UnitId]) VALUES (18, N'Акриловая дисперсия', 4, 14.9, 1000, 880, 220, 3)
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [UnitPrice], [StockQuantity], [MinQuantity], [PackageQuantity], [UnitId]) VALUES (19, N'Бумага-основа для обоев марки АФ', 1, 1200, 2000, 1000, 100, 1)
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [UnitPrice], [StockQuantity], [MinQuantity], [PackageQuantity], [UnitId]) VALUES (20, N'Бумага с подложкой устойчивая к атмосферным воздействиям', 1, 3500, 2000, 800, 50, 1)
SET IDENTITY_INSERT [dbo].[Material] OFF
GO
SET IDENTITY_INSERT [dbo].[MaterialType] ON 

INSERT [dbo].[MaterialType] ([Id], [MaterialType], [DefectPercent]) VALUES (1, N'Бумага', 0.007)
INSERT [dbo].[MaterialType] ([Id], [MaterialType], [DefectPercent]) VALUES (2, N'Краска', 0.005)
INSERT [dbo].[MaterialType] ([Id], [MaterialType], [DefectPercent]) VALUES (3, N'Клей', 0.0015)
INSERT [dbo].[MaterialType] ([Id], [MaterialType], [DefectPercent]) VALUES (4, N'Дисперсия', 0.002)
SET IDENTITY_INSERT [dbo].[MaterialType] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [ProductArticle], [ProductName], [ProductTypeId], [MinPartnerPrice], [RollWidth]) VALUES (1, 1549922, N'Обои из природного материала Традиционный принт светло-коричневые', 1, 16950, 0.91)
INSERT [dbo].[Product] ([Id], [ProductArticle], [ProductName], [ProductTypeId], [MinPartnerPrice], [RollWidth]) VALUES (2, 2018556, N'Фотообои флизелиновые Горы 500x270 см', 2, 15880, 0.5)
INSERT [dbo].[Product] ([Id], [ProductArticle], [ProductName], [ProductTypeId], [MinPartnerPrice], [RollWidth]) VALUES (3, 3028272, N'Обои под покраску флизелиновые Рельеф', 3, 11080, 0.75)
INSERT [dbo].[Product] ([Id], [ProductArticle], [ProductName], [ProductTypeId], [MinPartnerPrice], [RollWidth]) VALUES (4, 4029272, N'Стеклообои Рогожка белые', 4, 5898, 1)
INSERT [dbo].[Product] ([Id], [ProductArticle], [ProductName], [ProductTypeId], [MinPartnerPrice], [RollWidth]) VALUES (5, 1028248, N'Обои флизелиновые Эвелин светло-серые', 1, 15200, 1.06)
INSERT [dbo].[Product] ([Id], [ProductArticle], [ProductName], [ProductTypeId], [MinPartnerPrice], [RollWidth]) VALUES (6, 2118827, N'Фотообои флизелиновые 3D Лес и горы 300x280 см', 2, 12500.96, 0.3)
INSERT [dbo].[Product] ([Id], [ProductArticle], [ProductName], [ProductTypeId], [MinPartnerPrice], [RollWidth]) VALUES (7, 3130981, N'Обои под покраску флизелиновые цвет белый', 3, 4320.56, 1.06)
INSERT [dbo].[Product] ([Id], [ProductArticle], [ProductName], [ProductTypeId], [MinPartnerPrice], [RollWidth]) VALUES (8, 4029784, N'Стеклохолст', 4, 2998.99, 1)
INSERT [dbo].[Product] ([Id], [ProductArticle], [ProductName], [ProductTypeId], [MinPartnerPrice], [RollWidth]) VALUES (9, 1658953, N'Флизелиновые обои Принт Вензель серые', 1, 16200.96, 0.68)
INSERT [dbo].[Product] ([Id], [ProductArticle], [ProductName], [ProductTypeId], [MinPartnerPrice], [RollWidth]) VALUES (10, 2026662, N'Фотообои флизелиновые Узор 300x270 см', 2, 8780.69, 0.3)
INSERT [dbo].[Product] ([Id], [ProductArticle], [ProductName], [ProductTypeId], [MinPartnerPrice], [RollWidth]) VALUES (11, 3159043, N'Обои под покраску флизелиновые Кирпичная стена', 3, 15750, 1.06)
INSERT [dbo].[Product] ([Id], [ProductArticle], [ProductName], [ProductTypeId], [MinPartnerPrice], [RollWidth]) VALUES (12, 4588376, N'Стеклообои Средняя елка белые', 4, 5500, 1)
INSERT [dbo].[Product] ([Id], [ProductArticle], [ProductName], [ProductTypeId], [MinPartnerPrice], [RollWidth]) VALUES (13, 1758375, N'Обои бумажные Полосы цвет бежевый', 1, 13500.96, 0.68)
INSERT [dbo].[Product] ([Id], [ProductArticle], [ProductName], [ProductTypeId], [MinPartnerPrice], [RollWidth]) VALUES (14, 2759324, N'Фотообои Тропики 290x260 см', 2, 6980, 0.29)
INSERT [dbo].[Product] ([Id], [ProductArticle], [ProductName], [ProductTypeId], [MinPartnerPrice], [RollWidth]) VALUES (15, 3118827, N'Обои под покраску Рисунок Штукатурка белые', 3, 5890, 1.06)
INSERT [dbo].[Product] ([Id], [ProductArticle], [ProductName], [ProductTypeId], [MinPartnerPrice], [RollWidth]) VALUES (16, 4559898, N'Стеклообои Геометрические фигуры белые', 4, 5369, 1)
INSERT [dbo].[Product] ([Id], [ProductArticle], [ProductName], [ProductTypeId], [MinPartnerPrice], [RollWidth]) VALUES (17, 1259474, N'Обои флизелиновые Лилия бежевые', 1, 9750.79, 1.06)
INSERT [dbo].[Product] ([Id], [ProductArticle], [ProductName], [ProductTypeId], [MinPartnerPrice], [RollWidth]) VALUES (18, 2115947, N'Фотообои флизелиновые 3D Пейзаж 300x280 см', 2, 16850, 0.3)
INSERT [dbo].[Product] ([Id], [ProductArticle], [ProductName], [ProductTypeId], [MinPartnerPrice], [RollWidth]) VALUES (19, 3033136, N'Обои под покраску флизелиновые однотонные цвет белый', 3, 3390, 1.06)
INSERT [dbo].[Product] ([Id], [ProductArticle], [ProductName], [ProductTypeId], [MinPartnerPrice], [RollWidth]) VALUES (20, 4028048, N'Стеклохолст малярный Паутинка', 4, 1750, 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductMaterial] ON 

INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (1, 5, 10, 1.95)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (2, 12, 10, 0.21)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (3, 14, 18, 1.5)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (4, 18, 18, 1)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (5, 10, 18, 1)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (6, 1, 15, 0.5)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (7, 16, 15, 0.5)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (8, 11, 3, 2.55)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (9, 16, 3, 3.6)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (10, 12, 3, 2.5)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (11, 1, 20, 2.9)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (12, 11, 20, 2.55)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (13, 6, 20, 1.8)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (14, 18, 20, 2.2)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (15, 2, 20, 3.4)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (16, 13, 19, 3.6)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (17, 15, 19, 3.7)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (18, 14, 19, 1.6)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (19, 10, 19, 3.56)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (20, 5, 2, 4.6)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (21, 3, 1, 2.5)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (22, 9, 1, 3.5)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (23, 5, 16, 3.5)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (24, 9, 16, 5.25)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (25, 18, 16, 5)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (26, 10, 16, 3.5)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (27, 13, 13, 4.75)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (28, 1, 13, 3)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (29, 15, 14, 1.3)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (30, 19, 14, 1.3)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (31, 7, 14, 1.8)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (32, 4, 14, 0.2)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (33, 8, 14, 0.2)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (34, 9, 14, 0.25)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (35, 1, 12, 0.2)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (36, 19, 12, 0.2)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (37, 5, 12, 0.5)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (38, 16, 12, 0.2)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (39, 20, 12, 0.25)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (40, 14, 12, 0.5)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (41, 6, 12, 0.5)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (42, 18, 12, 0.7)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (43, 2, 12, 1)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (44, 10, 12, 0.5)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (45, 17, 4, 2.55)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (46, 14, 4, 2)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (47, 6, 4, 2)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (48, 2, 4, 1)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (49, 5, 17, 0.45)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (50, 4, 17, 0.3)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (51, 9, 17, 1)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (52, 13, 5, 1)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (53, 1, 5, 0.5)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (54, 12, 5, 0.35)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (55, 18, 5, 1.25)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (56, 15, 9, 1)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (57, 11, 9, 1)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (58, 13, 8, 0.15)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (59, 19, 8, 1)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (60, 3, 8, 1.2)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (61, 7, 8, 1.2)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (62, 17, 8, 1)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (63, 6, 8, 1.2)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (64, 2, 8, 0.33)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (65, 13, 6, 0.5)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (66, 11, 6, 2.9)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (67, 7, 6, 1.4)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (68, 17, 6, 1.7)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (69, 8, 6, 0.3)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (70, 9, 6, 1)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (71, 19, 7, 1.5)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (72, 3, 7, 2.5)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (73, 7, 7, 1.75)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (74, 17, 7, 1.85)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (75, 4, 7, 2.2)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (76, 8, 7, 1.3)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (77, 20, 7, 0.8)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (78, 3, 11, 1.65)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (79, 14, 11, 1.25)
INSERT [dbo].[ProductMaterial] ([Id], [ProductId], [MaterialId], [RequiredAmount]) VALUES (80, 6, 11, 1)
SET IDENTITY_INSERT [dbo].[ProductMaterial] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductType] ON 

INSERT [dbo].[ProductType] ([Id], [ProductType], [TypeCoefficient]) VALUES (1, N'Декоративные обои', 5.5)
INSERT [dbo].[ProductType] ([Id], [ProductType], [TypeCoefficient]) VALUES (2, N'Фотообои', 7.54)
INSERT [dbo].[ProductType] ([Id], [ProductType], [TypeCoefficient]) VALUES (3, N'Обои под покраску', 3.25)
INSERT [dbo].[ProductType] ([Id], [ProductType], [TypeCoefficient]) VALUES (4, N'Стеклообои', 2.5)
SET IDENTITY_INSERT [dbo].[ProductType] OFF
GO
SET IDENTITY_INSERT [dbo].[UnitOfMeasure] ON 

INSERT [dbo].[UnitOfMeasure] ([Id], [UnitName]) VALUES (2, N'кг')
INSERT [dbo].[UnitOfMeasure] ([Id], [UnitName]) VALUES (3, N'л')
INSERT [dbo].[UnitOfMeasure] ([Id], [UnitName]) VALUES (1, N'рул')
SET IDENTITY_INSERT [dbo].[UnitOfMeasure] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Material__9C87053CB23B1266]    Script Date: 20.06.2025 14:21:10 ******/
ALTER TABLE [dbo].[Material] ADD  CONSTRAINT [UQ__Material__9C87053CB23B1266] UNIQUE NONCLUSTERED 
(
	[MaterialName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Material__28129C097AA9D823]    Script Date: 20.06.2025 14:21:10 ******/
ALTER TABLE [dbo].[MaterialType] ADD  CONSTRAINT [UQ__Material__28129C097AA9D823] UNIQUE NONCLUSTERED 
(
	[MaterialType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Product__DD5A978A0C54163F]    Script Date: 20.06.2025 14:21:10 ******/
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [UQ__Product__DD5A978A0C54163F] UNIQUE NONCLUSTERED 
(
	[ProductName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Product__DE35B76FC79F99EB]    Script Date: 20.06.2025 14:21:10 ******/
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [UQ__Product__DE35B76FC79F99EB] UNIQUE NONCLUSTERED 
(
	[ProductArticle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UC_ProductMaterial]    Script Date: 20.06.2025 14:21:10 ******/
ALTER TABLE [dbo].[ProductMaterial] ADD  CONSTRAINT [UC_ProductMaterial] UNIQUE NONCLUSTERED 
(
	[ProductId] ASC,
	[MaterialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__ProductT__B181B0A4D8B5EF85]    Script Date: 20.06.2025 14:21:10 ******/
ALTER TABLE [dbo].[ProductType] ADD  CONSTRAINT [UQ__ProductT__B181B0A4D8B5EF85] UNIQUE NONCLUSTERED 
(
	[ProductType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__UnitOfMe__B5EE66787EDE1444]    Script Date: 20.06.2025 14:21:10 ******/
ALTER TABLE [dbo].[UnitOfMeasure] ADD  CONSTRAINT [UQ__UnitOfMe__B5EE66787EDE1444] UNIQUE NONCLUSTERED 
(
	[UnitName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK__Material__Materi__619B8048] FOREIGN KEY([MaterialTypeId])
REFERENCES [dbo].[MaterialType] ([Id])
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK__Material__Materi__619B8048]
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK__Material__UnitId__628FA481] FOREIGN KEY([UnitId])
REFERENCES [dbo].[UnitOfMeasure] ([Id])
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK__Material__UnitId__628FA481]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK__Product__Product__6754599E] FOREIGN KEY([ProductTypeId])
REFERENCES [dbo].[ProductType] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__Product__6754599E]
GO
ALTER TABLE [dbo].[ProductMaterial]  WITH CHECK ADD  CONSTRAINT [FK__ProductMa__Mater__6C190EBB] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[Material] ([Id])
GO
ALTER TABLE [dbo].[ProductMaterial] CHECK CONSTRAINT [FK__ProductMa__Mater__6C190EBB]
GO
ALTER TABLE [dbo].[ProductMaterial]  WITH CHECK ADD  CONSTRAINT [FK__ProductMa__Produ__6B24EA82] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductMaterial] CHECK CONSTRAINT [FK__ProductMa__Produ__6B24EA82]
GO
