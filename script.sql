USE [master]
GO
CREATE DATABASE [Staff]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Staff', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Staff.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Staff_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Staff_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Staff] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Staff].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Staff] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Staff] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Staff] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Staff] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Staff] SET ARITHABORT OFF 
GO
ALTER DATABASE [Staff] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Staff] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Staff] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Staff] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Staff] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Staff] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Staff] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Staff] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Staff] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Staff] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Staff] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Staff] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Staff] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Staff] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Staff] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Staff] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Staff] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Staff] SET RECOVERY FULL 
GO
ALTER DATABASE [Staff] SET  MULTI_USER 
GO
ALTER DATABASE [Staff] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Staff] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Staff] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Staff] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Staff] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Staff] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Staff', N'ON'
GO
ALTER DATABASE [Staff] SET QUERY_STORE = OFF
GO
USE [Staff]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 08.03.2021 0:29:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrgId] [int] NOT NULL,
	[LastName] [nvarchar](128) NULL,
	[FirstName] [nvarchar](128) NULL,
	[MiddleName] [nvarchar](128) NULL,
	[BirthDate] [date] NULL,
	[PassSerial] [nvarchar](128) NULL,
	[PassNum] [nvarchar](128) NULL,
	[Info] [nvarchar](256) NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orgs]    Script Date: 08.03.2021 0:29:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orgs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NULL,
	[TaxNum] [nvarchar](16) NULL,
	[LegalAddress] [nvarchar](256) NULL,
	[RealAddress] [nvarchar](256) NULL,
	[Info] [nvarchar](256) NULL,
 CONSTRAINT [PK_Orgs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (1, 1, N'', N'', N'', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (2, 1, N'Артемова', N'Светлана', N'Викторовна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Ответственный человек')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (3, 1, N'Асанов', N'Рамиль', N'Сягитович', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Обещал перезвонить в пятницу')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (4, 1, N'Борисенко', N'Вячеслав', N'Владимирович', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'В командировке')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (5, 1, N'Бакунцева', N'Елена', N'Евгеньевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Юрист компании')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (6, 1, N'Богданова', N'Елена', N'Николаевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Секретарь 76623979 ')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (7, 1, N'Воронцова', N'Ольга', N'Сергеевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Менеджер по продажам')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (8, 1, N'Кряталов', N'Николай', N'Николаевич', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Зам директора')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (9, 1, N'Кашина', N'Ольга', N'Николаевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Высшее образование- технолог пищевого производства;')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (10, 1, N'Козлов', N'Альберт', N'Николаевич', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Знание стандартов HACCP;')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (11, 1, N'Макарова', N'Галина', N'Анатольевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Контроль за выходом продукции и ее качеством;')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (12, 1, N'Ткачук', N'Лариса', N'Владимировна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Разработка рецептур и технологии новой продукции')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (13, 1, N'Чередник', N'Фаина', N'Викторовна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Разработка чертежей по индивидуальным проектам')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (14, 1, N'Малай', N'Олег', N'Олегович', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'техническое сопровождение мебели до ее изготовления и монтажа')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (15, 1, N'Шелухина', N'Екатерина', N'Александровна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Начальник производственно-диспетчерского отдела')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (16, 1, N'Васильева', N'Елена', N'Дмитриевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Формирование и контроль номенклатурного плана производственным подразделениям в соответствии с портфелем заказов и имеющихся производственных мощностей;')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (17, 1, N'Моисеенко', N'Екатерина', N'Геннадьевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Умение работать со спецификацией и МРВ (маршрутно - расцеховочная ведомость) на изделие.')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (18, 1, N'Реброва', N'Татьяна', N'Петровна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Изготовление мебели и интерьера по индивидуальным заказам.')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (19, 1, N'Ермакова', N'Марина', N'Александровна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Инженер технологической поддержки (Consultant Engineers)')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (20, 2, N'', N'', N'', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (21, 2, N'Артемова', N'Светлана', N'Викторовна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Ответственный человек')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (22, 2, N'Асанов', N'Рамиль', N'Сягитович', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Обещал перезвонить в пятницу')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (23, 2, N'Борисенко', N'Вячеслав', N'Владимирович', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'В командировке')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (24, 2, N'Бакунцева', N'Елена', N'Евгеньевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Юрист компании')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (25, 2, N'Богданова', N'Елена', N'Николаевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Секретарь 76623979 ')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (26, 2, N'Воронцова', N'Ольга', N'Сергеевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Менеджер по продажам')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (27, 2, N'Кряталов', N'Николай', N'Николаевич', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Зам директора')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (28, 2, N'Кашина', N'Ольга', N'Николаевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Высшее образование- технолог пищевого производства;')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (29, 2, N'Козлов', N'Альберт', N'Николаевич', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Знание стандартов HACCP;')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (30, 2, N'Макарова', N'Галина', N'Анатольевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Контроль за выходом продукции и ее качеством;')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (31, 2, N'Ткачук', N'Лариса', N'Владимировна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Разработка рецептур и технологии новой продукции')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (32, 2, N'Чередник', N'Фаина', N'Викторовна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Разработка чертежей по индивидуальным проектам')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (33, 2, N'Малай', N'Олег', N'Олегович', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'техническое сопровождение мебели до ее изготовления и монтажа')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (34, 2, N'Шелухина', N'Екатерина', N'Александровна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Начальник производственно-диспетчерского отдела')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (35, 2, N'Васильева', N'Елена', N'Дмитриевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Формирование и контроль номенклатурного плана производственным подразделениям в соответствии с портфелем заказов и имеющихся производственных мощностей;')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (36, 2, N'Моисеенко', N'Екатерина', N'Геннадьевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Умение работать со спецификацией и МРВ (маршрутно - расцеховочная ведомость) на изделие.')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (37, 2, N'Реброва', N'Татьяна', N'Петровна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Изготовление мебели и интерьера по индивидуальным заказам.')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (38, 2, N'Ермакова', N'Марина', N'Александровна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Инженер технологической поддержки (Consultant Engineers)')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (39, 3, N'', N'', N'', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (40, 3, N'Артемова', N'Светлана', N'Викторовна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Ответственный человек')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (41, 3, N'Асанов', N'Рамиль', N'Сягитович', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Обещал перезвонить в пятницу')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (42, 3, N'Борисенко', N'Вячеслав', N'Владимирович', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'В командировке')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (43, 3, N'Бакунцева', N'Елена', N'Евгеньевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Юрист компании')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (44, 3, N'Богданова', N'Елена', N'Николаевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Секретарь 76623979 ')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (45, 3, N'Воронцова', N'Ольга', N'Сергеевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Менеджер по продажам')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (46, 3, N'Кряталов', N'Николай', N'Николаевич', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Зам директора')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (47, 3, N'Кашина', N'Ольга', N'Николаевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Высшее образование- технолог пищевого производства;')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (48, 3, N'Козлов', N'Альберт', N'Николаевич', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Знание стандартов HACCP;')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (49, 3, N'Макарова', N'Галина', N'Анатольевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Контроль за выходом продукции и ее качеством;')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (50, 3, N'Ткачук', N'Лариса', N'Владимировна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Разработка рецептур и технологии новой продукции')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (51, 3, N'Чередник', N'Фаина', N'Викторовна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Разработка чертежей по индивидуальным проектам')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (52, 3, N'Малай', N'Олег', N'Олегович', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'техническое сопровождение мебели до ее изготовления и монтажа')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (53, 3, N'Шелухина', N'Екатерина', N'Александровна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Начальник производственно-диспетчерского отдела')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (54, 3, N'Васильева', N'Елена', N'Дмитриевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Формирование и контроль номенклатурного плана производственным подразделениям в соответствии с портфелем заказов и имеющихся производственных мощностей;')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (55, 3, N'Моисеенко', N'Екатерина', N'Геннадьевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Умение работать со спецификацией и МРВ (маршрутно - расцеховочная ведомость) на изделие.')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (56, 3, N'Реброва', N'Татьяна', N'Петровна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Изготовление мебели и интерьера по индивидуальным заказам.')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (57, 3, N'Ермакова', N'Марина', N'Александровна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Инженер технологической поддержки (Consultant Engineers)')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (58, 4, N'', N'', N'', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (59, 4, N'Артемова', N'Светлана', N'Викторовна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Ответственный человек')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (60, 4, N'Асанов', N'Рамиль', N'Сягитович', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Обещал перезвонить в пятницу')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (61, 4, N'Борисенко', N'Вячеслав', N'Владимирович', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'В командировке')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (62, 4, N'Бакунцева', N'Елена', N'Евгеньевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Юрист компании')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (63, 4, N'Богданова', N'Елена', N'Николаевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Секретарь 76623979 ')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (64, 4, N'Воронцова', N'Ольга', N'Сергеевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Менеджер по продажам')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (65, 4, N'Кряталов', N'Николай', N'Николаевич', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Зам директора')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (66, 4, N'Кашина', N'Ольга', N'Николаевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Высшее образование- технолог пищевого производства;')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (67, 4, N'Козлов', N'Альберт', N'Николаевич', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Знание стандартов HACCP;')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (68, 4, N'Макарова', N'Галина', N'Анатольевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Контроль за выходом продукции и ее качеством;')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (69, 4, N'Ткачук', N'Лариса', N'Владимировна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Разработка рецептур и технологии новой продукции')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (70, 4, N'Чередник', N'Фаина', N'Викторовна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Разработка чертежей по индивидуальным проектам')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (71, 4, N'Малай', N'Олег', N'Олегович', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'техническое сопровождение мебели до ее изготовления и монтажа')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (72, 4, N'Шелухина', N'Екатерина', N'Александровна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Начальник производственно-диспетчерского отдела')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (73, 4, N'Васильева', N'Елена', N'Дмитриевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Формирование и контроль номенклатурного плана производственным подразделениям в соответствии с портфелем заказов и имеющихся производственных мощностей;')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (74, 4, N'Моисеенко', N'Екатерина', N'Геннадьевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Умение работать со спецификацией и МРВ (маршрутно - расцеховочная ведомость) на изделие.')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (75, 4, N'Реброва', N'Татьяна', N'Петровна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Изготовление мебели и интерьера по индивидуальным заказам.')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (76, 4, N'Ермакова', N'Марина', N'Александровна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Инженер технологической поддержки (Consultant Engineers)')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (77, 5, N'', N'', N'', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (78, 5, N'Артемова', N'Светлана', N'Викторовна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Ответственный человек')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (79, 5, N'Асанов', N'Рамиль', N'Сягитович', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Обещал перезвонить в пятницу')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (80, 5, N'Борисенко', N'Вячеслав', N'Владимирович', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'В командировке')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (81, 5, N'Бакунцева', N'Елена', N'Евгеньевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Юрист компании')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (82, 5, N'Богданова', N'Елена', N'Николаевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Секретарь 76623979 ')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (83, 5, N'Воронцова', N'Ольга', N'Сергеевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Менеджер по продажам')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (84, 5, N'Кряталов', N'Николай', N'Николаевич', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Зам директора')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (85, 5, N'Кашина', N'Ольга', N'Николаевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Высшее образование- технолог пищевого производства;')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (86, 5, N'Козлов', N'Альберт', N'Николаевич', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Знание стандартов HACCP;')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (87, 5, N'Макарова', N'Галина', N'Анатольевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Контроль за выходом продукции и ее качеством;')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (88, 5, N'Ткачук', N'Лариса', N'Владимировна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Разработка рецептур и технологии новой продукции')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (89, 5, N'Чередник', N'Фаина', N'Викторовна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Разработка чертежей по индивидуальным проектам')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (90, 5, N'Малай', N'Олег', N'Олегович', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'техническое сопровождение мебели до ее изготовления и монтажа')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (91, 5, N'Шелухина', N'Екатерина', N'Александровна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Начальник производственно-диспетчерского отдела')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (92, 5, N'Васильева', N'Елена', N'Дмитриевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Формирование и контроль номенклатурного плана производственным подразделениям в соответствии с портфелем заказов и имеющихся производственных мощностей;')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (93, 5, N'Моисеенко', N'Екатерина', N'Геннадьевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Умение работать со спецификацией и МРВ (маршрутно - расцеховочная ведомость) на изделие.')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (94, 5, N'Реброва', N'Татьяна', N'Петровна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Изготовление мебели и интерьера по индивидуальным заказам.')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (95, 5, N'Ермакова', N'Марина', N'Александровна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Инженер технологической поддержки (Consultant Engineers)')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (96, 3, N'', N'', N'', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (97, 3, N'Артемова', N'Светлана', N'Викторовна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Ответственный человек')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (98, 3, N'Асанов', N'Рамиль', N'Сягитович', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Обещал перезвонить в пятницу')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (99, 3, N'Борисенко', N'Вячеслав', N'Владимирович', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'В командировке')
GO
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (100, 3, N'Бакунцева', N'Елена', N'Евгеньевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Юрист компании')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (101, 3, N'Богданова', N'Елена', N'Николаевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Секретарь 76623979 ')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (102, 3, N'Воронцова', N'Ольга', N'Сергеевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Менеджер по продажам')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (103, 3, N'Кряталов', N'Николай', N'Николаевич', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Зам директора')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (104, 3, N'Кашина', N'Ольга', N'Николаевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Высшее образование- технолог пищевого производства;')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (105, 3, N'Козлов', N'Альберт', N'Николаевич', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Знание стандартов HACCP;')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (106, 3, N'Макарова', N'Галина', N'Анатольевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Контроль за выходом продукции и ее качеством;')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (107, 3, N'Ткачук', N'Лариса', N'Владимировна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Разработка рецептур и технологии новой продукции')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (108, 3, N'Чередник', N'Фаина', N'Викторовна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Разработка чертежей по индивидуальным проектам')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (109, 3, N'Малай', N'Олег', N'Олегович', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'техническое сопровождение мебели до ее изготовления и монтажа')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (110, 3, N'Шелухина', N'Екатерина', N'Александровна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Начальник производственно-диспетчерского отдела')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (111, 3, N'Васильева', N'Елена', N'Дмитриевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Формирование и контроль номенклатурного плана производственным подразделениям в соответствии с портфелем заказов и имеющихся производственных мощностей;')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (112, 3, N'Моисеенко', N'Екатерина', N'Геннадьевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Умение работать со спецификацией и МРВ (маршрутно - расцеховочная ведомость) на изделие.')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (113, 3, N'Реброва', N'Татьяна', N'Петровна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Изготовление мебели и интерьера по индивидуальным заказам.')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (114, 3, N'Ермакова', N'Марина', N'Александровна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Инженер технологической поддержки (Consultant Engineers)')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (115, 3, N'', N'', N'', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (116, 3, N'Артемова', N'Светлана', N'Викторовна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Ответственный человек')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (117, 3, N'Асанов', N'Рамиль', N'Сягитович', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Обещал перезвонить в пятницу')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (118, 3, N'Борисенко', N'Вячеслав', N'Владимирович', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'В командировке')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (119, 3, N'Бакунцева', N'Елена', N'Евгеньевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Юрист компании')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (120, 3, N'Богданова', N'Елена', N'Николаевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Секретарь 76623979 ')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (121, 3, N'Воронцова', N'Ольга', N'Сергеевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Менеджер по продажам')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (122, 3, N'Кряталов', N'Николай', N'Николаевич', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Зам директора')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (123, 3, N'Кашина', N'Ольга', N'Николаевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Высшее образование- технолог пищевого производства;')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (124, 3, N'Козлов', N'Альберт', N'Николаевич', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Знание стандартов HACCP;')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (125, 3, N'Макарова', N'Галина', N'Анатольевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Контроль за выходом продукции и ее качеством;')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (126, 3, N'Ткачук', N'Лариса', N'Владимировна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Разработка рецептур и технологии новой продукции')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (127, 3, N'Чередник', N'Фаина', N'Викторовна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Разработка чертежей по индивидуальным проектам')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (128, 3, N'Малай', N'Олег', N'Олегович', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'техническое сопровождение мебели до ее изготовления и монтажа')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (129, 3, N'Шелухина', N'Екатерина', N'Александровна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Начальник производственно-диспетчерского отдела')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (130, 3, N'Васильева', N'Елена', N'Дмитриевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Формирование и контроль номенклатурного плана производственным подразделениям в соответствии с портфелем заказов и имеющихся производственных мощностей;')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (131, 3, N'Моисеенко', N'Екатерина', N'Геннадьевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Умение работать со спецификацией и МРВ (маршрутно - расцеховочная ведомость) на изделие.')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (132, 3, N'Реброва', N'Татьяна', N'Петровна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Изготовление мебели и интерьера по индивидуальным заказам.')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (133, 3, N'Ермакова', N'Марина', N'Александровна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Инженер технологической поддержки (Consultant Engineers)')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (134, 5, N'', N'', N'', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (135, 5, N'Артемова', N'Светлана', N'Викторовна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Ответственный человек')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (136, 5, N'Асанов', N'Рамиль', N'Сягитович', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Обещал перезвонить в пятницу')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (137, 5, N'Борисенко', N'Вячеслав', N'Владимирович', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'В командировке')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (138, 5, N'Бакунцева', N'Елена', N'Евгеньевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Юрист компании')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (139, 5, N'Богданова', N'Елена', N'Николаевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Секретарь 76623979 ')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (140, 5, N'Воронцова', N'Ольга', N'Сергеевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Менеджер по продажам')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (141, 5, N'Кряталов', N'Николай', N'Николаевич', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Зам директора')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (142, 5, N'Кашина', N'Ольга', N'Николаевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Высшее образование- технолог пищевого производства;')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (143, 5, N'Козлов', N'Альберт', N'Николаевич', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Знание стандартов HACCP;')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (144, 5, N'Макарова', N'Галина', N'Анатольевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Контроль за выходом продукции и ее качеством;')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (145, 5, N'Ткачук', N'Лариса', N'Владимировна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Разработка рецептур и технологии новой продукции')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (146, 5, N'Чередник', N'Фаина', N'Викторовна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Разработка чертежей по индивидуальным проектам')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (147, 5, N'Малай', N'Олег', N'Олегович', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'техническое сопровождение мебели до ее изготовления и монтажа')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (148, 5, N'Шелухина', N'Екатерина', N'Александровна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Начальник производственно-диспетчерского отдела')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (149, 5, N'Васильева', N'Елена', N'Дмитриевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Формирование и контроль номенклатурного плана производственным подразделениям в соответствии с портфелем заказов и имеющихся производственных мощностей;')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (150, 5, N'Моисеенко', N'Екатерина', N'Геннадьевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Умение работать со спецификацией и МРВ (маршрутно - расцеховочная ведомость) на изделие.')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (151, 5, N'Реброва', N'Татьяна', N'Петровна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Изготовление мебели и интерьера по индивидуальным заказам.')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (152, 5, N'Ермакова', N'Марина', N'Александровна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Инженер технологической поддержки (Consultant Engineers)')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (153, 5, N'', N'', N'', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (154, 5, N'Артемова', N'Светлана', N'Викторовна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Ответственный человек')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (155, 5, N'Асанов', N'Рамиль', N'Сягитович', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Обещал перезвонить в пятницу')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (156, 5, N'Борисенко', N'Вячеслав', N'Владимирович', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'В командировке')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (157, 5, N'Бакунцева', N'Елена', N'Евгеньевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Юрист компании')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (158, 5, N'Богданова', N'Елена', N'Николаевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Секретарь 76623979 ')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (159, 5, N'Воронцова', N'Ольга', N'Сергеевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Менеджер по продажам')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (160, 5, N'Кряталов', N'Николай', N'Николаевич', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Зам директора')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (161, 5, N'Кашина', N'Ольга', N'Николаевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Высшее образование- технолог пищевого производства;')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (162, 5, N'Козлов', N'Альберт', N'Николаевич', CAST(N'2021-03-07' AS Date), N'45 86', N'', N'Знание стандартов HACCP;')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (163, 5, N'', N'', N'', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (164, 5, N'Артемова', N'Светлана', N'Викторовна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Ответственный человек')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (165, 5, N'Асанов', N'Рамиль', N'Сягитович', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Обещал перезвонить в пятницу')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (166, 5, N'Борисенко', N'Вячеслав', N'Владимирович', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'В командировке')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (167, 5, N'Бакунцева', N'Елена', N'Евгеньевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Юрист компании')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (168, 5, N'Богданова', N'Елена', N'Николаевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Секретарь 76623979 ')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (169, 5, N'Воронцова', N'Ольга', N'Сергеевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Менеджер по продажам')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (170, 5, N'Кряталов', N'Николай', N'Николаевич', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Зам директора')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (171, 5, N'Кашина', N'Ольга', N'Николаевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Высшее образование- технолог пищевого производства;')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (172, 5, N'Козлов', N'Альберт', N'Николаевич', CAST(N'2021-03-07' AS Date), N'45 86', N'', N'Знание стандартов HACCP;')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (173, 5, N'Макарова', N'Галина', N'Анатольевна', NULL, N'45 86', N'770701001', N'Контроль за выходом продукции и ее качеством;')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (174, 5, N'Ткачук', N'Лариса', N'', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Разработка рецептур и технологии новой продукции')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (175, 5, N'Чередник', N'Фаина', N'Викторовна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Разработка чертежей по индивидуальным проектам')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (176, 5, N'Малай', N'Олег', N'Олегович', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'техническое сопровождение мебели до ее изготовления и монтажа')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (177, 5, N'Шелухина', N'Екатерина', N'Александровна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Начальник производственно-диспетчерского отдела')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (178, 5, N'Васильева', N'Елена', N'Дмитриевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Формирование и контроль номенклатурного плана производственным подразделениям в соответствии с портфелем заказов и имеющихся производственных мощностей;')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (179, 5, N'Моисеенко', N'Екатерина', N'Геннадьевна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Умение работать со спецификацией и МРВ (маршрутно - расцеховочная ведомость) на изделие.')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (180, 5, N'Реброва', N'Татьяна', N'Петровна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Изготовление мебели и интерьера по индивидуальным заказам.')
INSERT [dbo].[Employees] ([Id], [OrgId], [LastName], [FirstName], [MiddleName], [BirthDate], [PassSerial], [PassNum], [Info]) VALUES (181, 5, N'Ермакова', N'Марина', N'Александровна', CAST(N'2021-03-07' AS Date), N'45 86', N'770701001', N'Инженер технологической поддержки (Consultant Engineers)')
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[Orgs] ON 

INSERT [dbo].[Orgs] ([Id], [Name], [TaxNum], [LegalAddress], [RealAddress], [Info]) VALUES (1, N'ОБЩЕСТВО С ОГРАНИЧЕННОЙ ОТВЕТСТВЕННОСТЬЮ "СЕТЕВЫЕ РЕШЕНИЯ"', N'7726520179', N'105082, город Москва, Большая Почтовая улица, дом 34 строение 6, офис 5', N'105082, город Москва, Большая Почтовая улица, дом 34 строение 6, офис 5', N'Руководитель
Генеральный директор
Пинженин Владислав Борисович
с 15 апреля 2005 г.')
INSERT [dbo].[Orgs] ([Id], [Name], [TaxNum], [LegalAddress], [RealAddress], [Info]) VALUES (2, N'КМ ОБРАЗОВАНИЕ', N'7715627113', N'127254, город Москва, улица Руставели, дом 14 строение 6, эт 4 ком 162 оф 17', N'127254, город Москва, улица Руставели, дом 14 строение 6, эт 4 ком 162 оф 17', N'Руководитель
Генеральный директор
Гришин Александр Викторович
с 26 октября 2015 г.')
INSERT [dbo].[Orgs] ([Id], [Name], [TaxNum], [LegalAddress], [RealAddress], [Info]) VALUES (3, N'ПИЛОТ', N'7715627113', N'692760, Приморский край, город Артем, улица Кирова, 53', N'692760, Приморский край, город Артем, улица Кирова, 53', N'Руководитель Директор
Хребтов Антон Викторович
с 26 мая 2010 г.')
INSERT [dbo].[Orgs] ([Id], [Name], [TaxNum], [LegalAddress], [RealAddress], [Info]) VALUES (4, N'ДАЧНОЕ НЕКОММЕРЧЕСКОЕ ТОВАРИЩЕСТВО "АЛЬЯНС"', N'4712126716', N'188743, Ленинградская область, Приозерский район, поселок Ромашки, Ногирская улица, 17', N'188743, Ленинградская область, Приозерский район, поселок Ромашки, Ногирская улица, 17', N'Руководитель
Председатель правления
Тараканов Виктор Александрович
с 9 июля 2008 г.')
INSERT [dbo].[Orgs] ([Id], [Name], [TaxNum], [LegalAddress], [RealAddress], [Info]) VALUES (5, N'ОБЩЕСТВО С ОГРАНИЧЕННОЙ ОТВЕТСТВЕННОСТЬЮ "АПСТРИМ-ИНВЕСТ"', N'7707293700', N'127473, город Москва, улица Достоевского, дом 21, комната 7 этаж 2', N'127473, город Москва, улица Достоевского, дом 21, комната 7 этаж 2', N'Руководитель
Генеральный директор
Ипатов Максим Александрович
с 24 октября 2002 г.
Среднесписочная численность 
2 сотрудника (2019)')
SET IDENTITY_INSERT [dbo].[Orgs] OFF
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Orgs] FOREIGN KEY([OrgId])
REFERENCES [dbo].[Orgs] ([Id])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Orgs]
GO
USE [master]
GO
ALTER DATABASE [Staff] SET  READ_WRITE 
GO
