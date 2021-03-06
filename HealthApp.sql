USE [HealthApp]
GO
/****** Object:  Table [dbo].[Clinic]    Script Date: 10/01/2021 23:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clinic](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[ClinicValidityNumber] [int] NOT NULL,
 CONSTRAINT [PK_Clinic] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Complaints]    Script Date: 10/01/2021 23:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Complaints](
	[Doctor_ID] [int] NOT NULL,
	[Supplier_ID] [int] NOT NULL,
	[Item_ID] [int] NOT NULL,
	[Retreive_Money] [bit] NULL,
	[Replace_Equipment] [bit] NULL,
 CONSTRAINT [PK_Complaints] PRIMARY KEY CLUSTERED 
(
	[Doctor_ID] ASC,
	[Supplier_ID] ASC,
	[Item_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Disease]    Script Date: 10/01/2021 23:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Disease](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Disease] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 10/01/2021 23:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor](
	[ID] [int] NOT NULL,
	[Firstname] [varchar](50) NOT NULL,
	[MiddleName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Major] [varchar](50) NOT NULL,
	[PhoneNumber] [int] NULL,
	[Rating] [int] NOT NULL,
	[Gender] [varchar](50) NOT NULL,
	[CheckUpPrice] [money] NULL,
	[FollowUpPrice] [money] NOT NULL,
	[Age] [int] NOT NULL,
 CONSTRAINT [PK_Doctor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoctorTreats]    Script Date: 10/01/2021 23:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoctorTreats](
	[DoctorID] [int] NOT NULL,
	[DiseaseId] [int] NOT NULL,
 CONSTRAINT [PK_DoctorTreats] PRIMARY KEY CLUSTERED 
(
	[DoctorID] ASC,
	[DiseaseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquipmentOrder]    Script Date: 10/01/2021 23:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipmentOrder](
	[OrderID] [int] NOT NULL,
	[DoctorID] [int] NOT NULL,
	[ItemID] [int] NOT NULL,
	[SupplierID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [money] NOT NULL,
	[Order_Delivered] [bit] NULL,
 CONSTRAINT [PK_EquipmentOrder] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[DoctorID] ASC,
	[ItemID] ASC,
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Illnes]    Script Date: 10/01/2021 23:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Illnes](
	[SymptomID] [int] NOT NULL,
	[DiseasesID] [int] NOT NULL,
 CONSTRAINT [PK_Illnes] PRIMARY KEY CLUSTERED 
(
	[SymptomID] ASC,
	[DiseasesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicalEquipment]    Script Date: 10/01/2021 23:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicalEquipment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MedicalEquipment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicalOrders]    Script Date: 10/01/2021 23:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicalOrders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DateOfOrder] [date] NOT NULL,
 CONSTRAINT [PK_MedicalOrders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicalOrdersinfo]    Script Date: 10/01/2021 23:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicalOrdersinfo](
	[OrderID] [int] NOT NULL,
	[PharmacyID] [int] NOT NULL,
	[MedicineID] [int] NOT NULL,
	[PatientID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [money] NOT NULL,
 CONSTRAINT [PK_MedicalOrdersinfo] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[PharmacyID] ASC,
	[MedicineID] ASC,
	[PatientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicine]    Script Date: 10/01/2021 23:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicine](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_Medicine] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 10/01/2021 23:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DateOfOrder] [date] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patient]    Script Date: 10/01/2021 23:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient](
	[ID] [int] NOT NULL,
	[Gender] [varchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[MiddleName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[StreetNumber] [varchar](50) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[BuildingNumber] [int] NOT NULL,
	[ApartmentNumber] [int] NOT NULL,
	[PhoneNumber] [int] NULL,
 CONSTRAINT [PK_Patient] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pharmacy]    Script Date: 10/01/2021 23:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pharmacy](
	[ID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[StreetNumber] [varchar](50) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[BuildingNumber] [varchar](50) NOT NULL,
	[PhoneNumber] [int] NOT NULL,
 CONSTRAINT [PK_Pharmacy] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sells]    Script Date: 10/01/2021 23:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sells](
	[PharmacyID] [int] NOT NULL,
	[MedicineID] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[Stock] [int] NOT NULL,
 CONSTRAINT [PK_Sells] PRIMARY KEY CLUSTERED 
(
	[PharmacyID] ASC,
	[MedicineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 10/01/2021 23:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[ID] [int] NOT NULL,
	[PhoneNumber] [int] NULL,
	[FirstName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplies]    Script Date: 10/01/2021 23:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplies](
	[SupplierID] [int] NOT NULL,
	[ItemID] [int] NOT NULL,
	[Price] [money] NOT NULL,
	[NumberOfItems] [int] NOT NULL,
 CONSTRAINT [PK_Supplies] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC,
	[ItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Symptoms]    Script Date: 10/01/2021 23:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Symptoms](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_Symptoms] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 10/01/2021 23:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Type] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorksAt]    Script Date: 10/01/2021 23:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorksAt](
	[DoctorID] [int] NOT NULL,
	[ClinicID] [int] NOT NULL,
	[BuildingNumber] [varchar](50) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[ApartmentNumber] [varchar](50) NOT NULL,
	[StreetNumber] [varchar](50) NOT NULL,
	[AvailableFrom] [varchar](50) NOT NULL,
	[AvailableTo] [varchar](50) NOT NULL,
	[Sunday] [bit] NULL,
	[Monday] [bit] NULL,
	[Tuesday] [bit] NULL,
	[Wednesday] [bit] NULL,
	[Thrusday] [bit] NULL,
	[Friday] [bit] NULL,
	[Saturday] [bit] NULL,
 CONSTRAINT [PK_WorksAt] PRIMARY KEY CLUSTERED 
(
	[DoctorID] ASC,
	[ClinicID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Clinic] ON 

INSERT [dbo].[Clinic] ([ID], [Name], [ClinicValidityNumber]) VALUES (2, N'Doctor Diet', 123456789)
INSERT [dbo].[Clinic] ([ID], [Name], [ClinicValidityNumber]) VALUES (3, N'Swah Clinic', 345678901)
SET IDENTITY_INSERT [dbo].[Clinic] OFF
GO
SET IDENTITY_INSERT [dbo].[Disease] ON 

INSERT [dbo].[Disease] ([ID], [Name], [Description]) VALUES (1, N'The common cold', N'mild upper respiratory viral illness, caused by over 200 subtypes of viruses')
SET IDENTITY_INSERT [dbo].[Disease] OFF
GO
INSERT [dbo].[Doctor] ([ID], [Firstname], [MiddleName], [LastName], [Major], [PhoneNumber], [Rating], [Gender], [CheckUpPrice], [FollowUpPrice], [Age]) VALUES (11, N'Hady', N'Shady', N'Ahmed', N'lab', 7698769, 2, N'F', 1223.5600, 4565.0000, 22)
INSERT [dbo].[Doctor] ([ID], [Firstname], [MiddleName], [LastName], [Major], [PhoneNumber], [Rating], [Gender], [CheckUpPrice], [FollowUpPrice], [Age]) VALUES (50, N'Maged', N'Magdi', N'Alosali', N'Dentist', 2233445, 5, N'Male', 23.0000, 16.0000, 34)
INSERT [dbo].[Doctor] ([ID], [Firstname], [MiddleName], [LastName], [Major], [PhoneNumber], [Rating], [Gender], [CheckUpPrice], [FollowUpPrice], [Age]) VALUES (61, N'Maged', N'Hany', N'Ahmed', N'Lab', 122334456, 5, N'Male', 120.0000, 100.0000, 23)
GO
INSERT [dbo].[DoctorTreats] ([DoctorID], [DiseaseId]) VALUES (50, 1)
INSERT [dbo].[DoctorTreats] ([DoctorID], [DiseaseId]) VALUES (61, 1)
GO
INSERT [dbo].[EquipmentOrder] ([OrderID], [DoctorID], [ItemID], [SupplierID], [Quantity], [Price], [Order_Delivered]) VALUES (20, 61, 4, 60, 8, 10.0000, 0)
INSERT [dbo].[EquipmentOrder] ([OrderID], [DoctorID], [ItemID], [SupplierID], [Quantity], [Price], [Order_Delivered]) VALUES (20, 61, 6, 10, 3, 11.0000, 0)
INSERT [dbo].[EquipmentOrder] ([OrderID], [DoctorID], [ItemID], [SupplierID], [Quantity], [Price], [Order_Delivered]) VALUES (20, 61, 9, 60, 14, 10.0000, 0)
INSERT [dbo].[EquipmentOrder] ([OrderID], [DoctorID], [ItemID], [SupplierID], [Quantity], [Price], [Order_Delivered]) VALUES (21, 61, 9, 60, 1, 10.0000, 0)
INSERT [dbo].[EquipmentOrder] ([OrderID], [DoctorID], [ItemID], [SupplierID], [Quantity], [Price], [Order_Delivered]) VALUES (22, 61, 4, 60, 1, 10.0000, 0)
INSERT [dbo].[EquipmentOrder] ([OrderID], [DoctorID], [ItemID], [SupplierID], [Quantity], [Price], [Order_Delivered]) VALUES (23, 61, 2, 60, 1, 10.0000, 0)
INSERT [dbo].[EquipmentOrder] ([OrderID], [DoctorID], [ItemID], [SupplierID], [Quantity], [Price], [Order_Delivered]) VALUES (24, 61, 2, 60, 1, 10.0000, 0)
INSERT [dbo].[EquipmentOrder] ([OrderID], [DoctorID], [ItemID], [SupplierID], [Quantity], [Price], [Order_Delivered]) VALUES (24, 61, 4, 60, 1, 10.0000, 0)
INSERT [dbo].[EquipmentOrder] ([OrderID], [DoctorID], [ItemID], [SupplierID], [Quantity], [Price], [Order_Delivered]) VALUES (24, 61, 9, 60, 1, 10.0000, 0)
INSERT [dbo].[EquipmentOrder] ([OrderID], [DoctorID], [ItemID], [SupplierID], [Quantity], [Price], [Order_Delivered]) VALUES (25, 61, 2, 60, 1, 10.0000, 0)
INSERT [dbo].[EquipmentOrder] ([OrderID], [DoctorID], [ItemID], [SupplierID], [Quantity], [Price], [Order_Delivered]) VALUES (26, 61, 2, 60, 1, 10.0000, 0)
GO
INSERT [dbo].[Illnes] ([SymptomID], [DiseasesID]) VALUES (1, 1)
INSERT [dbo].[Illnes] ([SymptomID], [DiseasesID]) VALUES (2, 1)
INSERT [dbo].[Illnes] ([SymptomID], [DiseasesID]) VALUES (3, 1)
INSERT [dbo].[Illnes] ([SymptomID], [DiseasesID]) VALUES (4, 1)
GO
SET IDENTITY_INSERT [dbo].[MedicalEquipment] ON 

INSERT [dbo].[MedicalEquipment] ([ID], [Name], [Description]) VALUES (2, N'Toothbrush', N'Cleans teeth')
INSERT [dbo].[MedicalEquipment] ([ID], [Name], [Description]) VALUES (3, N'Book', N'About Pregnancy')
INSERT [dbo].[MedicalEquipment] ([ID], [Name], [Description]) VALUES (4, N'Toothpaste', N'used with toothbrush')
INSERT [dbo].[MedicalEquipment] ([ID], [Name], [Description]) VALUES (5, N'Sonar', N'for baby')
INSERT [dbo].[MedicalEquipment] ([ID], [Name], [Description]) VALUES (6, N'New Toothbrush', N'cleans teeth faster')
INSERT [dbo].[MedicalEquipment] ([ID], [Name], [Description]) VALUES (7, N'Panadol', N'reduce body temp')
INSERT [dbo].[MedicalEquipment] ([ID], [Name], [Description]) VALUES (8, N'Tramadol', N'reduces pain')
INSERT [dbo].[MedicalEquipment] ([ID], [Name], [Description]) VALUES (9, N'Syringe', N'Inject blood')
INSERT [dbo].[MedicalEquipment] ([ID], [Name], [Description]) VALUES (11, N'xray', N'get a photo of the bones')
SET IDENTITY_INSERT [dbo].[MedicalEquipment] OFF
GO
SET IDENTITY_INSERT [dbo].[Medicine] ON 

INSERT [dbo].[Medicine] ([ID], [Name], [Description]) VALUES (1, N'Depakine', N'Epilepsy')
INSERT [dbo].[Medicine] ([ID], [Name], [Description]) VALUES (2, N'Kepradil', N'Vitamin')
SET IDENTITY_INSERT [dbo].[Medicine] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID], [DateOfOrder]) VALUES (1, CAST(N'2020-01-11' AS Date))
INSERT [dbo].[Order] ([ID], [DateOfOrder]) VALUES (2, CAST(N'2020-02-12' AS Date))
INSERT [dbo].[Order] ([ID], [DateOfOrder]) VALUES (3, CAST(N'2020-02-12' AS Date))
INSERT [dbo].[Order] ([ID], [DateOfOrder]) VALUES (4, CAST(N'2020-02-12' AS Date))
INSERT [dbo].[Order] ([ID], [DateOfOrder]) VALUES (5, CAST(N'2021-07-01' AS Date))
INSERT [dbo].[Order] ([ID], [DateOfOrder]) VALUES (6, CAST(N'2021-07-01' AS Date))
INSERT [dbo].[Order] ([ID], [DateOfOrder]) VALUES (7, CAST(N'2021-07-01' AS Date))
INSERT [dbo].[Order] ([ID], [DateOfOrder]) VALUES (8, CAST(N'2021-07-01' AS Date))
INSERT [dbo].[Order] ([ID], [DateOfOrder]) VALUES (9, CAST(N'2021-07-01' AS Date))
INSERT [dbo].[Order] ([ID], [DateOfOrder]) VALUES (10, CAST(N'2021-07-01' AS Date))
INSERT [dbo].[Order] ([ID], [DateOfOrder]) VALUES (11, CAST(N'2021-07-01' AS Date))
INSERT [dbo].[Order] ([ID], [DateOfOrder]) VALUES (12, CAST(N'2021-07-01' AS Date))
INSERT [dbo].[Order] ([ID], [DateOfOrder]) VALUES (13, CAST(N'2021-07-01' AS Date))
INSERT [dbo].[Order] ([ID], [DateOfOrder]) VALUES (14, CAST(N'2021-07-01' AS Date))
INSERT [dbo].[Order] ([ID], [DateOfOrder]) VALUES (15, CAST(N'2021-07-01' AS Date))
INSERT [dbo].[Order] ([ID], [DateOfOrder]) VALUES (16, CAST(N'2021-07-01' AS Date))
INSERT [dbo].[Order] ([ID], [DateOfOrder]) VALUES (17, CAST(N'2021-07-01' AS Date))
INSERT [dbo].[Order] ([ID], [DateOfOrder]) VALUES (18, CAST(N'2021-09-01' AS Date))
INSERT [dbo].[Order] ([ID], [DateOfOrder]) VALUES (19, CAST(N'2021-09-01' AS Date))
INSERT [dbo].[Order] ([ID], [DateOfOrder]) VALUES (20, CAST(N'2021-10-01' AS Date))
INSERT [dbo].[Order] ([ID], [DateOfOrder]) VALUES (21, CAST(N'2021-10-01' AS Date))
INSERT [dbo].[Order] ([ID], [DateOfOrder]) VALUES (22, CAST(N'2021-10-01' AS Date))
INSERT [dbo].[Order] ([ID], [DateOfOrder]) VALUES (23, CAST(N'2021-10-01' AS Date))
INSERT [dbo].[Order] ([ID], [DateOfOrder]) VALUES (24, CAST(N'2021-10-01' AS Date))
INSERT [dbo].[Order] ([ID], [DateOfOrder]) VALUES (25, CAST(N'2021-10-01' AS Date))
INSERT [dbo].[Order] ([ID], [DateOfOrder]) VALUES (26, CAST(N'2021-10-01' AS Date))
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[Pharmacy] ([ID], [Name], [StreetNumber], [City], [BuildingNumber], [PhoneNumber]) VALUES (1, N'Ezaby', N'23', N'Cairo', N'23', 123213)
INSERT [dbo].[Pharmacy] ([ID], [Name], [StreetNumber], [City], [BuildingNumber], [PhoneNumber]) VALUES (51, N'Seif', N'2', N'Cairo', N'6', 23)
INSERT [dbo].[Pharmacy] ([ID], [Name], [StreetNumber], [City], [BuildingNumber], [PhoneNumber]) VALUES (52, N'Mostafa', N'10', N'Giza', N'7', 3356478)
INSERT [dbo].[Pharmacy] ([ID], [Name], [StreetNumber], [City], [BuildingNumber], [PhoneNumber]) VALUES (54, N'Dr. Gamal', N'1', N'Fayoum', N'3', 56632145)
INSERT [dbo].[Pharmacy] ([ID], [Name], [StreetNumber], [City], [BuildingNumber], [PhoneNumber]) VALUES (55, N'Megz', N'8', N'Obour', N'24', 44896532)
INSERT [dbo].[Pharmacy] ([ID], [Name], [StreetNumber], [City], [BuildingNumber], [PhoneNumber]) VALUES (56, N'Light', N'4', N'Rehab', N'17', 4598662)
INSERT [dbo].[Pharmacy] ([ID], [Name], [StreetNumber], [City], [BuildingNumber], [PhoneNumber]) VALUES (57, N'Amr', N'15', N'6 October', N'10', 44587933)
INSERT [dbo].[Pharmacy] ([ID], [Name], [StreetNumber], [City], [BuildingNumber], [PhoneNumber]) VALUES (58, N'Omar', N'2', N'Aswan', N'14', 33489671)
GO
INSERT [dbo].[Sells] ([PharmacyID], [MedicineID], [Price], [Stock]) VALUES (51, 2, 325, 60)
GO
INSERT [dbo].[Supplier] ([ID], [PhoneNumber], [FirstName]) VALUES (10, 212, N'DAD')
INSERT [dbo].[Supplier] ([ID], [PhoneNumber], [FirstName]) VALUES (60, 1234455602, N'Health')
INSERT [dbo].[Supplier] ([ID], [PhoneNumber], [FirstName]) VALUES (62, 123889971, N'All in one')
GO
INSERT [dbo].[Supplies] ([SupplierID], [ItemID], [Price], [NumberOfItems]) VALUES (10, 6, 11.0000, 2)
INSERT [dbo].[Supplies] ([SupplierID], [ItemID], [Price], [NumberOfItems]) VALUES (60, 2, 10.0000, 226)
INSERT [dbo].[Supplies] ([SupplierID], [ItemID], [Price], [NumberOfItems]) VALUES (60, 4, 10.0000, 220)
INSERT [dbo].[Supplies] ([SupplierID], [ItemID], [Price], [NumberOfItems]) VALUES (60, 9, 10.0000, 84)
INSERT [dbo].[Supplies] ([SupplierID], [ItemID], [Price], [NumberOfItems]) VALUES (62, 2, 1050.0000, 12)
INSERT [dbo].[Supplies] ([SupplierID], [ItemID], [Price], [NumberOfItems]) VALUES (62, 8, 200.0000, 12)
INSERT [dbo].[Supplies] ([SupplierID], [ItemID], [Price], [NumberOfItems]) VALUES (62, 11, 2000.0000, 12)
GO
SET IDENTITY_INSERT [dbo].[Symptoms] ON 

INSERT [dbo].[Symptoms] ([ID], [Name], [Description]) VALUES (1, N'StuffyNose', NULL)
INSERT [dbo].[Symptoms] ([ID], [Name], [Description]) VALUES (2, N'Runny nose', NULL)
INSERT [dbo].[Symptoms] ([ID], [Name], [Description]) VALUES (3, N'Sneezing', NULL)
INSERT [dbo].[Symptoms] ([ID], [Name], [Description]) VALUES (4, N'Cough', NULL)
SET IDENTITY_INSERT [dbo].[Symptoms] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [Email], [Password], [Type]) VALUES (10, N'AD2', N'22', N'Supplier')
INSERT [dbo].[Users] ([ID], [Email], [Password], [Type]) VALUES (11, N'Arwa@yahoo.com', N'Arwa', N'Patient')
INSERT [dbo].[Users] ([ID], [Email], [Password], [Type]) VALUES (50, N'maged12@gmail.com', N'Maged3', N'Doctor')
INSERT [dbo].[Users] ([ID], [Email], [Password], [Type]) VALUES (51, N'sagetoshiro@hotmail.com', N'SeifEmam39', N'Pharmacy')
INSERT [dbo].[Users] ([ID], [Email], [Password], [Type]) VALUES (52, N'mostafagamil@hotmail.com', N'Mostafa34', N'Pharmacy')
INSERT [dbo].[Users] ([ID], [Email], [Password], [Type]) VALUES (54, N'Gamal7@yahoo.com', N'Gamal79', N'Pharmacy')
INSERT [dbo].[Users] ([ID], [Email], [Password], [Type]) VALUES (55, N'Magdy187@gmail.com', N'Magdy1887', N'Pharmacy')
INSERT [dbo].[Users] ([ID], [Email], [Password], [Type]) VALUES (56, N'noureldin@yahoo.com', N'Nour1536', N'Pharmacy')
INSERT [dbo].[Users] ([ID], [Email], [Password], [Type]) VALUES (57, N'Amrhady@yahoo.com', N'Amr8732', N'Pharmacy')
INSERT [dbo].[Users] ([ID], [Email], [Password], [Type]) VALUES (58, N'omarlabeeb@outlook.com', N'OmarPro39', N'Pharmacy')
INSERT [dbo].[Users] ([ID], [Email], [Password], [Type]) VALUES (60, N'TAWHEED@gmail.com', N'123456', N'Supplier')
INSERT [dbo].[Users] ([ID], [Email], [Password], [Type]) VALUES (61, N'magedalosali@gmail.com', N'123456', N'Doctor')
INSERT [dbo].[Users] ([ID], [Email], [Password], [Type]) VALUES (62, N'Ahmed12@gmail.com', N'1234', N'Supplier')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
/****** Object:  Index [IX_Clinic]    Script Date: 10/01/2021 23:57:08 ******/
ALTER TABLE [dbo].[Clinic] ADD  CONSTRAINT [IX_Clinic] UNIQUE NONCLUSTERED 
(
	[ClinicValidityNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Clinic_1]    Script Date: 10/01/2021 23:57:08 ******/
ALTER TABLE [dbo].[Clinic] ADD  CONSTRAINT [IX_Clinic_1] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Disease]    Script Date: 10/01/2021 23:57:08 ******/
ALTER TABLE [dbo].[Disease] ADD  CONSTRAINT [IX_Disease] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_MedicalEquipment]    Script Date: 10/01/2021 23:57:08 ******/
ALTER TABLE [dbo].[MedicalEquipment] ADD  CONSTRAINT [IX_MedicalEquipment] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Medicine]    Script Date: 10/01/2021 23:57:08 ******/
ALTER TABLE [dbo].[Medicine] ADD  CONSTRAINT [IX_Medicine] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Supplier]    Script Date: 10/01/2021 23:57:08 ******/
ALTER TABLE [dbo].[Supplier] ADD  CONSTRAINT [IX_Supplier] UNIQUE NONCLUSTERED 
(
	[FirstName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Symptoms]    Script Date: 10/01/2021 23:57:08 ******/
ALTER TABLE [dbo].[Symptoms] ADD  CONSTRAINT [IX_Symptoms] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Users]    Script Date: 10/01/2021 23:57:08 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [IX_Users] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EquipmentOrder] ADD  CONSTRAINT [orders_not_delivered]  DEFAULT ((0)) FOR [Order_Delivered]
GO
ALTER TABLE [dbo].[Complaints]  WITH CHECK ADD  CONSTRAINT [FK_Complaints_Doctor] FOREIGN KEY([Doctor_ID])
REFERENCES [dbo].[Doctor] ([ID])
GO
ALTER TABLE [dbo].[Complaints] CHECK CONSTRAINT [FK_Complaints_Doctor]
GO
ALTER TABLE [dbo].[Complaints]  WITH CHECK ADD  CONSTRAINT [FK_Complaints_MedicalEquipment] FOREIGN KEY([Item_ID])
REFERENCES [dbo].[MedicalEquipment] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Complaints] CHECK CONSTRAINT [FK_Complaints_MedicalEquipment]
GO
ALTER TABLE [dbo].[Complaints]  WITH CHECK ADD  CONSTRAINT [FK_Complaints_Supplier] FOREIGN KEY([Supplier_ID])
REFERENCES [dbo].[Supplier] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Complaints] CHECK CONSTRAINT [FK_Complaints_Supplier]
GO
ALTER TABLE [dbo].[Doctor]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_Users] FOREIGN KEY([ID])
REFERENCES [dbo].[Users] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Doctor] CHECK CONSTRAINT [FK_Doctor_Users]
GO
ALTER TABLE [dbo].[DoctorTreats]  WITH CHECK ADD  CONSTRAINT [FK_DoctorTreats_Disease] FOREIGN KEY([DiseaseId])
REFERENCES [dbo].[Disease] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DoctorTreats] CHECK CONSTRAINT [FK_DoctorTreats_Disease]
GO
ALTER TABLE [dbo].[DoctorTreats]  WITH CHECK ADD  CONSTRAINT [FK_DoctorTreats_Doctor] FOREIGN KEY([DoctorID])
REFERENCES [dbo].[Doctor] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DoctorTreats] CHECK CONSTRAINT [FK_DoctorTreats_Doctor]
GO
ALTER TABLE [dbo].[EquipmentOrder]  WITH CHECK ADD  CONSTRAINT [FK_EquipmentOrder_Doctor] FOREIGN KEY([DoctorID])
REFERENCES [dbo].[Doctor] ([ID])
GO
ALTER TABLE [dbo].[EquipmentOrder] CHECK CONSTRAINT [FK_EquipmentOrder_Doctor]
GO
ALTER TABLE [dbo].[EquipmentOrder]  WITH CHECK ADD  CONSTRAINT [FK_EquipmentOrder_MedicalEquipment] FOREIGN KEY([ItemID])
REFERENCES [dbo].[MedicalEquipment] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EquipmentOrder] CHECK CONSTRAINT [FK_EquipmentOrder_MedicalEquipment]
GO
ALTER TABLE [dbo].[EquipmentOrder]  WITH CHECK ADD  CONSTRAINT [FK_EquipmentOrder_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EquipmentOrder] CHECK CONSTRAINT [FK_EquipmentOrder_Order]
GO
ALTER TABLE [dbo].[EquipmentOrder]  WITH CHECK ADD  CONSTRAINT [FK_EquipmentOrder_Supplier] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Supplier] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EquipmentOrder] CHECK CONSTRAINT [FK_EquipmentOrder_Supplier]
GO
ALTER TABLE [dbo].[Illnes]  WITH CHECK ADD  CONSTRAINT [FK_Illnes_Disease] FOREIGN KEY([DiseasesID])
REFERENCES [dbo].[Disease] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Illnes] CHECK CONSTRAINT [FK_Illnes_Disease]
GO
ALTER TABLE [dbo].[Illnes]  WITH CHECK ADD  CONSTRAINT [FK_Illnes_Symptoms] FOREIGN KEY([SymptomID])
REFERENCES [dbo].[Symptoms] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Illnes] CHECK CONSTRAINT [FK_Illnes_Symptoms]
GO
ALTER TABLE [dbo].[MedicalOrdersinfo]  WITH CHECK ADD  CONSTRAINT [FK_MedicalOrders_Medicine] FOREIGN KEY([MedicineID])
REFERENCES [dbo].[Medicine] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MedicalOrdersinfo] CHECK CONSTRAINT [FK_MedicalOrders_Medicine]
GO
ALTER TABLE [dbo].[MedicalOrdersinfo]  WITH CHECK ADD  CONSTRAINT [FK_MedicalOrders_Patient] FOREIGN KEY([PatientID])
REFERENCES [dbo].[Patient] ([ID])
GO
ALTER TABLE [dbo].[MedicalOrdersinfo] CHECK CONSTRAINT [FK_MedicalOrders_Patient]
GO
ALTER TABLE [dbo].[MedicalOrdersinfo]  WITH CHECK ADD  CONSTRAINT [FK_MedicalOrders_Pharmacy] FOREIGN KEY([PharmacyID])
REFERENCES [dbo].[Pharmacy] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MedicalOrdersinfo] CHECK CONSTRAINT [FK_MedicalOrders_Pharmacy]
GO
ALTER TABLE [dbo].[MedicalOrdersinfo]  WITH CHECK ADD  CONSTRAINT [FK_MedicalOrdersinfo_MedicalOrders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[MedicalOrders] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MedicalOrdersinfo] CHECK CONSTRAINT [FK_MedicalOrdersinfo_MedicalOrders]
GO
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD  CONSTRAINT [FK_Patient_Users] FOREIGN KEY([ID])
REFERENCES [dbo].[Users] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [FK_Patient_Users]
GO
ALTER TABLE [dbo].[Sells]  WITH CHECK ADD  CONSTRAINT [FK_Sells_Medicine] FOREIGN KEY([MedicineID])
REFERENCES [dbo].[Medicine] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sells] CHECK CONSTRAINT [FK_Sells_Medicine]
GO
ALTER TABLE [dbo].[Sells]  WITH CHECK ADD  CONSTRAINT [FK_Sells_Pharmacy] FOREIGN KEY([PharmacyID])
REFERENCES [dbo].[Pharmacy] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sells] CHECK CONSTRAINT [FK_Sells_Pharmacy]
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_Users] FOREIGN KEY([ID])
REFERENCES [dbo].[Users] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [FK_Supplier_Users]
GO
ALTER TABLE [dbo].[Supplies]  WITH CHECK ADD  CONSTRAINT [FK_Supplies_MedicalEquipment] FOREIGN KEY([ItemID])
REFERENCES [dbo].[MedicalEquipment] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Supplies] CHECK CONSTRAINT [FK_Supplies_MedicalEquipment]
GO
ALTER TABLE [dbo].[Supplies]  WITH CHECK ADD  CONSTRAINT [FK_Supplies_Supplier] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Supplier] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Supplies] CHECK CONSTRAINT [FK_Supplies_Supplier]
GO
ALTER TABLE [dbo].[WorksAt]  WITH CHECK ADD  CONSTRAINT [FK_WorksAt_Clinic] FOREIGN KEY([ClinicID])
REFERENCES [dbo].[Clinic] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WorksAt] CHECK CONSTRAINT [FK_WorksAt_Clinic]
GO
ALTER TABLE [dbo].[WorksAt]  WITH CHECK ADD  CONSTRAINT [FK_WorksAt_Doctor] FOREIGN KEY([DoctorID])
REFERENCES [dbo].[Doctor] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WorksAt] CHECK CONSTRAINT [FK_WorksAt_Doctor]
GO
/****** Object:  StoredProcedure [dbo].[ADD_EQUIPMENT]    Script Date: 10/01/2021 23:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--ADD_EQUIPMENT_SUPPLIER_QUERY
CREATE PROCEDURE [dbo].[ADD_EQUIPMENT]
@SUPPLIER_ID int,
@ITEM_ID int,
@PRICE int,
@QTY int
AS
BEGIN
INSERT INTO Supplies (SupplierID,ItemID,Price,NumberOfItems) VALUES (@SUPPLIER_ID,@ITEM_ID,@PRICE,@QTY) 
END
GO
/****** Object:  StoredProcedure [dbo].[ADD_EQUIPMENT2]    Script Date: 10/01/2021 23:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--ADD_EQUIPMENT_MEDICAL_EQUIPMENT_SUPPLIER_QUERY
CREATE PROCEDURE [dbo].[ADD_EQUIPMENT2]
@NAME varchar(50),
@DESCRIPTION varchar(100)
AS
BEGIN
INSERT INTO MedicalEquipment (Name,Description) VALUES (@NAME,@DESCRIPTION);
END
GO
/****** Object:  StoredProcedure [dbo].[DISP_SUPPLIER]    Script Date: 10/01/2021 23:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Add the procedure to the database
--DISPLAY ALL SUPPLIERS
CREATE PROCEDURE [dbo].[DISP_SUPPLIER]
AS
BEGIN
SELECT * FROM SUPPLIER
END
GO
/****** Object:  StoredProcedure [dbo].[MEDICAL_DESCRIPTION]    Script Date: 10/01/2021 23:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--MEDICAL_DESCRIPTION_SUPPLIER QUERY
CREATE PROCEDURE [dbo].[MEDICAL_DESCRIPTION]
@EQUIP_NAME varchar(50)
AS
BEGIN
SELECT * 
FROM MedicalEquipment 
WHERE Name = @EQUIP_NAME
END
GO
/****** Object:  StoredProcedure [dbo].[SELECT_ALL_EQUIPMENT]    Script Date: 10/01/2021 23:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--SELECT ALL MEDICAL EQUIPMENT
CREATE PROCEDURE [dbo].[SELECT_ALL_EQUIPMENT]
AS
BEGIN
SELECT * FROM MedicalEquipment
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_SUPPLIER]    Script Date: 10/01/2021 23:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--UPDATE_SUPPLIER QUERY
CREATE PROCEDURE [dbo].[UPDATE_SUPPLIER]
@ID int,
@PHONE_NUMBER int
AS
BEGIN
UPDATE Supplier SET PhoneNumber=@PHONE_NUMBER WHERE ID=@ID; 
END
GO
