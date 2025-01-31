USE [Sweet_Dream]
GO
/****** Object:  Table [dbo].[AdType]    Script Date: 20.01.2025 23:06:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdType](
	[Id] [int] IDENTITY(0,1) NOT NULL,
	[TypeName] [varchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Advertisment]    Script Date: 20.01.2025 23:06:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Advertisment](
	[Id] [int] IDENTITY(0,1) NOT NULL,
	[AdOwner] [int] NOT NULL,
	[AdStatus] [int] NOT NULL,
	[AdDate] [date] NOT NULL,
	[City] [int] NOT NULL,
	[Category] [int] NOT NULL,
	[AdType] [int] NOT NULL,
	[AdName] [varchar](300) NOT NULL,
	[AdDescription] [varchar](4000) NOT NULL,
	[Price] [decimal](15, 2) NULL,
	[Photo] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 20.01.2025 23:06:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(0,1) NOT NULL,
	[CategoryName] [varchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 20.01.2025 23:06:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[Id] [int] IDENTITY(0,1) NOT NULL,
	[CityName] [varchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 20.01.2025 23:06:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(0,1) NOT NULL,
	[RoleName] [varchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Statuses]    Script Date: 20.01.2025 23:06:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statuses](
	[Id] [int] IDENTITY(0,1) NOT NULL,
	[StatusName] [varchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 20.01.2025 23:06:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(0,1) NOT NULL,
	[UserName] [varchar](150) NOT NULL,
	[UserSurname] [varchar](150) NOT NULL,
	[UserSecondName] [varchar](150) NULL,
	[UserLogin] [varchar](150) NOT NULL,
	[UserPassword] [varchar](50) NOT NULL,
	[UserRole] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AdType] ON 

INSERT [dbo].[AdType] ([Id], [TypeName]) VALUES (0, N'Продажа')
INSERT [dbo].[AdType] ([Id], [TypeName]) VALUES (1, N'Покупка')
INSERT [dbo].[AdType] ([Id], [TypeName]) VALUES (2, N'Аренда недвижимости')
INSERT [dbo].[AdType] ([Id], [TypeName]) VALUES (3, N'Услуги')
SET IDENTITY_INSERT [dbo].[AdType] OFF
GO
SET IDENTITY_INSERT [dbo].[Advertisment] ON 

INSERT [dbo].[Advertisment] ([Id], [AdOwner], [AdStatus], [AdDate], [City], [Category], [AdType], [AdName], [AdDescription], [Price], [Photo]) VALUES (0, 1, 0, CAST(N'2024-10-01' AS Date), 1, 2, 0, N'Продам квартиру', N'Новая квартира в центре ', CAST(60000000.00 AS Decimal(15, 2)), N'C:\Users\user\Desktop\Учеба((((\УП((((((((\Любимка Про\sources\квартира.webp')
INSERT [dbo].[Advertisment] ([Id], [AdOwner], [AdStatus], [AdDate], [City], [Category], [AdType], [AdName], [AdDescription], [Price], [Photo]) VALUES (1, 2, 1, CAST(N'2024-10-02' AS Date), 2, 7, 0, N'Продам авто', N'Хорошая модель автомобиля', CAST(1500000.00 AS Decimal(15, 2)), N'C:\Users\user\Desktop\Учеба((((\УП((((((((\Любимка Про\sources\авто.jpg')
INSERT [dbo].[Advertisment] ([Id], [AdOwner], [AdStatus], [AdDate], [City], [Category], [AdType], [AdName], [AdDescription], [Price], [Photo]) VALUES (2, 3, 0, CAST(N'2024-10-03' AS Date), 3, 2, 2, N'Сдаю квартиру 3-х комнатную', N'Квартира 80 кв м без ремонта 14 этаж', CAST(100000.00 AS Decimal(15, 2)), NULL)
INSERT [dbo].[Advertisment] ([Id], [AdOwner], [AdStatus], [AdDate], [City], [Category], [AdType], [AdName], [AdDescription], [Price], [Photo]) VALUES (3, 4, 0, CAST(N'2024-10-04' AS Date), 4, 9, 0, N'Аукцион антиквариатат', N'Билет на аукцион 18 числа', CAST(15000.00 AS Decimal(15, 2)), N'C:\Users\user\Desktop\Учеба((((\УП((((((((\Любимка Про\sources\антикварриат.webp')
INSERT [dbo].[Advertisment] ([Id], [AdOwner], [AdStatus], [AdDate], [City], [Category], [AdType], [AdName], [AdDescription], [Price], [Photo]) VALUES (4, 5, 1, CAST(N'2024-10-05' AS Date), 5, 9, 3, N'Упаковка подарков', N'Упакую подарки для ваших близких, на любой праздник', CAST(1200.00 AS Decimal(15, 2)), N'C:\Users\user\Desktop\Учеба((((\УП((((((((\Любимка Про\sources\подарки.jpg')
INSERT [dbo].[Advertisment] ([Id], [AdOwner], [AdStatus], [AdDate], [City], [Category], [AdType], [AdName], [AdDescription], [Price], [Photo]) VALUES (5, 6, 0, CAST(N'2024-10-06' AS Date), 6, 0, 0, N'Продам телефон Samsung S23 Ultra', N'Новый телефон еще в слюде', CAST(95000.00 AS Decimal(15, 2)), N'C:\Users\user\Desktop\Учеба((((\УП((((((((\Любимка Про\sources\телефон.jpg')
INSERT [dbo].[Advertisment] ([Id], [AdOwner], [AdStatus], [AdDate], [City], [Category], [AdType], [AdName], [AdDescription], [Price], [Photo]) VALUES (6, 7, 0, CAST(N'2024-10-07' AS Date), 7, 6, 0, N'Отдам котенка', N'Милый котенок, 2 месяца, ищет добрые руки.', CAST(0.00 AS Decimal(15, 2)), NULL)
INSERT [dbo].[Advertisment] ([Id], [AdOwner], [AdStatus], [AdDate], [City], [Category], [AdType], [AdName], [AdDescription], [Price], [Photo]) VALUES (7, 8, 1, CAST(N'2024-10-08' AS Date), 8, 6, 0, N'Продаю щенков шпица', N'Щенки шпица 2 месяца мальчики и девочки, с прививками', CAST(450000.00 AS Decimal(15, 2)), N'C:\Users\user\Desktop\Учеба((((\УП((((((((\Любимка Про\sources\щенки.jpg')
INSERT [dbo].[Advertisment] ([Id], [AdOwner], [AdStatus], [AdDate], [City], [Category], [AdType], [AdName], [AdDescription], [Price], [Photo]) VALUES (8, 9, 0, CAST(N'2024-10-09' AS Date), 9, 8, 0, N'Продам диски с аудиокнигами', N'Художественная литература, состояние идеальное.', CAST(2000.00 AS Decimal(15, 2)), NULL)
INSERT [dbo].[Advertisment] ([Id], [AdOwner], [AdStatus], [AdDate], [City], [Category], [AdType], [AdName], [AdDescription], [Price], [Photo]) VALUES (9, 0, 0, CAST(N'2024-10-10' AS Date), 0, 9, 3, N'Услуги футблогера', N'Фотосессии на природе, в студии, индивидуальный подход.', CAST(5000.00 AS Decimal(15, 2)), NULL)
SET IDENTITY_INSERT [dbo].[Advertisment] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [CategoryName]) VALUES (0, N'Электроника')
INSERT [dbo].[Category] ([Id], [CategoryName]) VALUES (1, N'Одежда и обувь')
INSERT [dbo].[Category] ([Id], [CategoryName]) VALUES (2, N'Недвижимость')
INSERT [dbo].[Category] ([Id], [CategoryName]) VALUES (3, N'Красота и здоровье')
INSERT [dbo].[Category] ([Id], [CategoryName]) VALUES (4, N'Продукты питания')
INSERT [dbo].[Category] ([Id], [CategoryName]) VALUES (5, N'Спорт и отдых')
INSERT [dbo].[Category] ([Id], [CategoryName]) VALUES (6, N'Животные и зоотовары')
INSERT [dbo].[Category] ([Id], [CategoryName]) VALUES (7, N'Автотовары')
INSERT [dbo].[Category] ([Id], [CategoryName]) VALUES (8, N'Литература')
INSERT [dbo].[Category] ([Id], [CategoryName]) VALUES (9, N'Хобби и творчество')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([Id], [CityName]) VALUES (0, N'Москва')
INSERT [dbo].[City] ([Id], [CityName]) VALUES (1, N'Санкт-Перербург')
INSERT [dbo].[City] ([Id], [CityName]) VALUES (2, N'Екатеринбург')
INSERT [dbo].[City] ([Id], [CityName]) VALUES (3, N'Самара')
INSERT [dbo].[City] ([Id], [CityName]) VALUES (4, N'Казань')
INSERT [dbo].[City] ([Id], [CityName]) VALUES (5, N'Калуга')
INSERT [dbo].[City] ([Id], [CityName]) VALUES (6, N'Нижний новгород')
INSERT [dbo].[City] ([Id], [CityName]) VALUES (7, N'Владивосток')
INSERT [dbo].[City] ([Id], [CityName]) VALUES (8, N'Тула')
INSERT [dbo].[City] ([Id], [CityName]) VALUES (9, N'Саратов')
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Id], [RoleName]) VALUES (0, N'Администратор')
INSERT [dbo].[Roles] ([Id], [RoleName]) VALUES (1, N'Пользователь')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Statuses] ON 

INSERT [dbo].[Statuses] ([Id], [StatusName]) VALUES (0, N'Активно')
INSERT [dbo].[Statuses] ([Id], [StatusName]) VALUES (1, N'Завершено')
SET IDENTITY_INSERT [dbo].[Statuses] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [UserName], [UserSurname], [UserSecondName], [UserLogin], [UserPassword], [UserRole]) VALUES (0, N'Елизавета', N'Лисот', N'Павловна', N'Lisot', N'228110', 0)
INSERT [dbo].[Users] ([Id], [UserName], [UserSurname], [UserSecondName], [UserLogin], [UserPassword], [UserRole]) VALUES (1, N'Анна', N'Сальмянова', N'Сергеевна', N'Anny', N'Anny1', 1)
INSERT [dbo].[Users] ([Id], [UserName], [UserSurname], [UserSecondName], [UserLogin], [UserPassword], [UserRole]) VALUES (2, N'Ольга', N'Петрова', N'Олеговна', N'olga', N'olga789', 1)
INSERT [dbo].[Users] ([Id], [UserName], [UserSurname], [UserSecondName], [UserLogin], [UserPassword], [UserRole]) VALUES (3, N'Екатерина', N'Сидорова', NULL, N'ekaterina', N'ekaterina000', 1)
INSERT [dbo].[Users] ([Id], [UserName], [UserSurname], [UserSecondName], [UserLogin], [UserPassword], [UserRole]) VALUES (4, N'Николай', N'Кузнецов', N'Николаевич', N'nikolay', N'nikolay111', 1)
INSERT [dbo].[Users] ([Id], [UserName], [UserSurname], [UserSecondName], [UserLogin], [UserPassword], [UserRole]) VALUES (5, N'Анна', N'Васильева', N'Андреевна', N'anna', N'anna222', 1)
INSERT [dbo].[Users] ([Id], [UserName], [UserSurname], [UserSecondName], [UserLogin], [UserPassword], [UserRole]) VALUES (6, N'Сергей', N'Михайлов', N'Сергеевич', N'sergey', N'sergey333', 1)
INSERT [dbo].[Users] ([Id], [UserName], [UserSurname], [UserSecondName], [UserLogin], [UserPassword], [UserRole]) VALUES (7, N'Марина', N'Новикова', NULL, N'marina', N'marina444', 1)
INSERT [dbo].[Users] ([Id], [UserName], [UserSurname], [UserSecondName], [UserLogin], [UserPassword], [UserRole]) VALUES (8, N'Владимир', N'Федоров', N'Владимирович', N'vladimir', N'vladimir555', 0)
INSERT [dbo].[Users] ([Id], [UserName], [UserSurname], [UserSecondName], [UserLogin], [UserPassword], [UserRole]) VALUES (9, N'Татьяна', N'Морозова', N'Игоревна', N'tatyana', N'tatyana666', 0)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Advertisment]  WITH CHECK ADD FOREIGN KEY([AdOwner])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Advertisment]  WITH CHECK ADD FOREIGN KEY([AdOwner])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Advertisment]  WITH CHECK ADD FOREIGN KEY([AdStatus])
REFERENCES [dbo].[Statuses] ([Id])
GO
ALTER TABLE [dbo].[Advertisment]  WITH CHECK ADD FOREIGN KEY([AdStatus])
REFERENCES [dbo].[Statuses] ([Id])
GO
ALTER TABLE [dbo].[Advertisment]  WITH CHECK ADD FOREIGN KEY([AdType])
REFERENCES [dbo].[AdType] ([Id])
GO
ALTER TABLE [dbo].[Advertisment]  WITH CHECK ADD FOREIGN KEY([AdType])
REFERENCES [dbo].[AdType] ([Id])
GO
ALTER TABLE [dbo].[Advertisment]  WITH CHECK ADD FOREIGN KEY([Category])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Advertisment]  WITH CHECK ADD FOREIGN KEY([Category])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Advertisment]  WITH CHECK ADD FOREIGN KEY([City])
REFERENCES [dbo].[City] ([Id])
GO
ALTER TABLE [dbo].[Advertisment]  WITH CHECK ADD FOREIGN KEY([City])
REFERENCES [dbo].[City] ([Id])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([UserRole])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([UserRole])
REFERENCES [dbo].[Roles] ([Id])
GO
