USE [master]
GO
/****** Object:  Database [Store]    Script Date: 11.07.2023 15:04:52 ******/
CREATE DATABASE [Store]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Store', FILENAME = N'C:\SQLproj\Store.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Store_log', FILENAME = N'C:\SQLproj\Store_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Store] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Store].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Store] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Store] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Store] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Store] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Store] SET ARITHABORT OFF 
GO
ALTER DATABASE [Store] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Store] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Store] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Store] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Store] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Store] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Store] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Store] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Store] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Store] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Store] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Store] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Store] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Store] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Store] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Store] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Store] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Store] SET RECOVERY FULL 
GO
ALTER DATABASE [Store] SET  MULTI_USER 
GO
ALTER DATABASE [Store] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Store] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Store] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Store] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Store] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Store] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Store', N'ON'
GO
ALTER DATABASE [Store] SET QUERY_STORE = ON
GO
ALTER DATABASE [Store] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Store]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11.07.2023 15:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[category] [nvarchar](50) NULL,
	[price] [float] NULL,
	[discount] [float] NULL,
	[quantity] [int] NULL,
	[measurement] [nvarchar](50) NULL,
	[producer] [nvarchar](50) NULL,
	[country] [nvarchar](50) NULL,
	[supplier] [nvarchar](50) NULL,
	[date_of_delivery] [date] NULL,
	[expire_date] [date] NULL,
	[test] [nchar](10) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (1, N'Ноутбук HP Pavilion 15', N'Электроника/Компьютеры', 25000, 10, 10, N'штук', N'Hewlett-Packard', N'Китай', N'TechMaster', CAST(N'2023-09-15' AS Date), NULL, NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (2, N'Смартфон Samsung Galaxy S21
', N'Электроника/Телефоны', 35000, 15, 15, N'штук', N'Samsung Electronics', N'Южная Корея', N'Global Electronics', CAST(N'2023-08-20' AS Date), NULL, NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (3, N'Телевизор LG OLED55C1', N' Электроника/Телевизоры', 50000, 20, 5, N'штук', N'LG Electronics', N'Южная Корея', N'ElectroSystems', CAST(N'2023-10-10' AS Date), NULL, NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (4, N'Кофемашина De''Longhi Magnifica S', N'Кухонная техника/Кофемашины', 10000, 5, 8, N'штук', N'De''Longhi Group', N'Италия', N'CoffeeMagic', CAST(N'2023-10-05' AS Date), CAST(N'2028-07-07' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (5, N'Гарнитура Bose QuietComfort 35 II', N'Электроника/Наушники', 7000, 12, 12, N'штук', N'Bose Corporation', N'Соединенные Штаты Америки (США)', N'AudioSpecialists', CAST(N'2023-09-01' AS Date), CAST(N'2026-07-07' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (6, N'iPhone 12 Pro Max', N'Смартфоны/Мобильные устройства', 25000, 10, 3, N'штук', N'Apple Inc', N' США (Соединённые Штаты Америки)', N'ElectroBoost X1', CAST(N'2023-09-15' AS Date), CAST(N'2028-01-01' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (7, N'Samsung 4K QLED Smart TV', N'Телевизоры/Бытовая электроника', 15000, 14, 5, N'штук', N'Samsung Electronics Co., Ltd', N'Южная Корея', N'SuperSonic Audio Player Vortex', CAST(N'2023-10-01' AS Date), CAST(N'2026-03-01' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (8, N'Апельсиновый сок', N'Напитки', 15, 5, 200, N'пачек', N'Tropicana', N'Бразилия', N'Citrus Fresh', CAST(N'2023-07-13' AS Date), CAST(N'2023-09-30' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (9, N'Фирменная пицца "Маргарита"', N'Пицца', 120, 10, 50, N'штук', N'Domino''s Pizza', N'Италия', N'Pizza Supreme', CAST(N'2023-07-14' AS Date), CAST(N'2023-07-15' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (10, N'Шоколадный пирог', N'Кондитерские изделия', 90, 7, 100, N'штук', N'Cadbury', N'Швейцария', N'Sweet Indulgence', CAST(N'2023-07-15' AS Date), CAST(N'2023-08-25' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (11, N'Картофель фри', N'Замороженная пища', 50, 3, 500, N'килограмм', N'McCain Foods', N'Германия', N'Crispy Delights', CAST(N'2023-07-16' AS Date), CAST(N'2023-10-05' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (12, N'Фруктовый йогурт', N'Молочные продукты', 25, 5, 300, N'пачек', N'Danone', N'Франция', N'Berrylicious', CAST(N'2023-07-17' AS Date), CAST(N'2023-07-31' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (13, N'Говяжья вырезка', N'Мясо', 200, 15, 50, N'килограмм', N'Angus Beef', N'Аргентина', N'Prime Cuts', CAST(N'2023-07-18' AS Date), CAST(N'2023-09-10' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (14, N'Мороженое "Ванильное с фундуком"', N'Замороженная десерты', 70, 5, 150, N'пачек', N'Ben & Jerry''s', N'США', N'Frosty Treats', CAST(N'2023-07-19' AS Date), CAST(N'2023-08-15' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (15, N'Сыр "Чеддер"', N'Молочные продукты', 150, 10, 200, N'штук', N'Kraft', N'Великобритания', N'Cheese Masters', CAST(N'2023-07-20' AS Date), CAST(N'2023-09-20' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (16, N'Паста "Феттуччини"', N'Макаронные изделия', 80, 5, 100, N'ящиков', N'Barilla', N'Италия', N'Pasta Paradise', CAST(N'2023-07-21' AS Date), CAST(N'2024-01-31' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (17, N'Минеральная вода "Сильвер Спрингс"', N'Напитки', 30, 2, 1000, N'пачек', N'Evian', N'Шотландия', N'Aqua Elixir', CAST(N'2023-07-22' AS Date), CAST(N'2023-12-31' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (18, N'Куриные крылья в соусе барбекю', N'Мясные продукты', 70, 5, 300, N'килограмм', N'Tyson Foods', N'США', N'Wing Wizard', CAST(N'2023-07-23' AS Date), CAST(N'2023-08-20' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (19, N'Печенье "Овсянка с шоколадом"', N'Кондитерские изделия', 40, 3, 400, N'пачек', N'Quaker', N'Нидерланды', N'Crunchy Munchies', CAST(N'2023-07-24' AS Date), CAST(N'2024-03-31' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (20, N'Оливки без косточек', N'Консервированные продукты', 60, 5, 50, N'ящиков', N'Gaea', N'Греция', N'Olive Oasis', CAST(N'2023-07-25' AS Date), CAST(N'2023-11-30' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (21, N'Чай черный "Ассам"', N'Напитки', 40, 4, 800, N'пачек', N'Lipton', N'Индия', N'Steeped Serenity', CAST(N'2023-07-26' AS Date), CAST(N'2024-02-29' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (22, N'Рис басмати', N'Крупы', 70, 5, 1000, N'килограмм', N'Tilda', N'Индия', N'Rice Royale', CAST(N'2023-07-27' AS Date), CAST(N'2024-05-31' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (23, N'Молоко', N'Молочные продукты', 30, 2, 500, N'пачек', N'DairyPure', N'Норвегия', N'Dairy Supreme', CAST(N'2023-07-28' AS Date), CAST(N'2023-09-30' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (24, N'Кукурузные хлопья', N'Завтраки', 40, 3, 200, N'ящиков', N'Kellogg''s', N'США', N'Golden Crunch', CAST(N'2023-07-29' AS Date), CAST(N'2023-12-31' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (25, N'Масло оливковое "Экстра вирджин"', N'Масла', 80, 5, 100, N'пачек', N'Bertolli', N'Испания', N'Olive Delights', CAST(N'2023-07-30' AS Date), CAST(N'2024-04-30' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (26, N'Красная фасоль консервированная', N'Консервированные продукты', 30, 2, 300, N'штук', N'Goya', N'Мексика', N' Bean Bliss', CAST(N'2023-07-31' AS Date), CAST(N'2024-06-30' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (27, N'Кетчуп "Томатный домашний"', N'Соусы и приправы', 40, 3, 400, N'пачек', N'Heinz', N'Франция', N'Tomato Tantalizer', CAST(N'2023-08-01' AS Date), CAST(N'2024-03-31' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (28, N'Шампанское', N'Алкогольные напитки', 400, 10, 50, N'ящиков', N'Moët & Chandon', N'Франция', N'Sparkling Splendor', CAST(N'2023-08-02' AS Date), CAST(N'2025-12-31' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (29, N'Кофе молотый "Арабика"', N'Напитки', 80, 5, 200, N'пачек', N'Starbucks', N'Колумбия', N'Bean Brews', CAST(N'2023-08-03' AS Date), CAST(N'2024-02-29' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (30, N'Сметана', N'Молочные продукты', 25, 5, 300, N'пачек', N'President', N'Россия', N'Creamy Delights', CAST(N'2023-08-04' AS Date), CAST(N'2023-09-30' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (31, N'Свинина маринованная', N'Мясо', 120, 10, 100, N'килограмм', N'Smithfield', N'Испания', N'Meat Master', CAST(N'2023-08-05' AS Date), CAST(N'2023-08-10' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (32, N'Карри соус', N'Соусы и приправы', 50, 3, 150, N'штук', N'Patak''s', N'Индия', N'Spice Sensations', CAST(N'2023-08-06' AS Date), CAST(N'2024-04-30' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (33, N'Сельдь под шубой', N'Рыбные продукты', 60, 5, 200, N'ящиков', N'Riga Gold', N'Латвия', N'Baltic Bites', CAST(N'2023-08-07' AS Date), CAST(N'2023-12-15' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (34, N'Гречневая крупа', N'Крупы', 50, 5, 500, N'килограмм', N'Bob''s Red Mill', N'Россия', N'Grain Grandeur', CAST(N'2023-08-08' AS Date), CAST(N'2024-06-30' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (35, N'Майонез "Профессионал"', N'Соусы и приправы', 40, 3, 100, N'пачек', N'Hellmann''s', N'Германия', N'Mayo Magic', CAST(N'2023-08-09' AS Date), CAST(N'2024-03-31' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (36, N'Лосось холодного копчения', N'Рыбные продукты', 150, 10, 50, N'ящиков', N'John West', N'Норвегия', N'Smoky Salmon', CAST(N'2023-08-10' AS Date), CAST(N'2023-11-30' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (37, N'Сода пищевая', N'Кондитерские ингредиенты', 20, 2, 1000, N'пачек', N'Arm & Hammer', N'США', N'Baking Bliss', CAST(N'2023-08-11' AS Date), CAST(N'2024-02-29' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (38, N'Спагетти "Баветте"', N'Макаронные изделия', 40, 3, 200, N'ящиков', N'De Cecco', N'Италия', N'Pasta Passion', CAST(N'2023-08-12' AS Date), CAST(N'2023-10-31' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (39, N'Морс черничный', N'Напитки', 35, 2, 800, N'пачек', N'Ocean Spray', N'Канада', N'Berry Burst', CAST(N'2023-08-13' AS Date), CAST(N'2023-09-30' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (40, N'Белый шоколад', N'Кондитерские изделия', 60, 5, 400, N'пачек', N'Lindt', N'Швейцария', N'Ivory Delights', CAST(N'2023-08-14' AS Date), CAST(N'2024-01-31' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (41, N'Овощной салат "Греческий"', N'Готовые блюда', 50, 5, 100, N'ящиков', N'Fresh Express', N'Испания', N'Garden Fresh', CAST(N'2023-08-15' AS Date), CAST(N'2023-11-15' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (42, N'Горчица столовая', N'Соусы и приправы', 30, 2, 300, N'пачек', N' French''s', N'Франция', N'Mustard Marvel', CAST(N'2023-08-16' AS Date), CAST(N'2024-03-31' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (43, N'Креветки вареные', N'Морепродукты', 200, 15, 50, N'килограмм', N'Aqua Star', N'Таиланд', N'Shrimp Supreme', CAST(N'2023-08-17' AS Date), CAST(N'2023-08-10' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (44, N'Чеснок', N'Фрукты и овощи', 50, 5, 200, N'килограмм', N'Christopher Ranch', N'Китай', N'Garlic Gourmet', CAST(N'2023-08-18' AS Date), CAST(N'2024-07-31' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (45, N'Картофельные чипсы', N'Закуски', 25, 5, 500, N'пачек', N'Lay''s', N'США', N'Crisp Classics', CAST(N'2023-08-19' AS Date), CAST(N'2024-01-31' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (46, N'Мороженое "Шоколадный фондан"', N'Замороженная десерты', 80, 5, 150, N'пачек', N'Häagen-Dazs', N'Франция', N'Decadent Delights', CAST(N'2023-08-20' AS Date), CAST(N'2023-08-15' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (47, N'Тунец консервированный в масле', N'Консервированные продукты', 40, 3, 100, N'штук', N'Bumble Bee', N'Испания', N'Tuna Temptations', CAST(N'2023-08-21' AS Date), CAST(N'2024-04-30' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (48, N'Мед натуральный', N'Сладости', 100, 10, 200, N'килограмм', N'Y.S. Eco Bee Farms', N'Украина', N'Honey Harmony', CAST(N'2023-08-22' AS Date), CAST(N'2024-06-30' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (49, N'Капуста белокочанная', N'Фрукты и овощи', 20, 2, 300, N'штук', N'Dole', N'Польша', N'Veggie Valley', CAST(N'2023-08-23' AS Date), CAST(N'2023-09-30' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (50, N'Яблочный уксус', N'Масла и уксусы', 30, 2, 400, N'пачек', N'Bragg', N'Италия', N'Apple Essence', CAST(N'2023-08-24' AS Date), NULL, NULL)
GO
USE [master]
GO
ALTER DATABASE [Store] SET  READ_WRITE 
GO
