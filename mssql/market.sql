USE [master]
GO
/****** Object:  Database [market]    Script Date: 12.03.2025 13:14:10 ******/
CREATE DATABASE [market]

USE [market]
GO
/****** Object:  Table [dbo].[Calisanlar]    Script Date: 12.03.2025 13:14:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calisanlar](
	[CalisanID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NULL,
	[Soyad] [nvarchar](50) NULL,
	[Pozisyon] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CalisanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategoriler]    Script Date: 12.03.2025 13:14:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategoriler](
	[KategoriID] [int] IDENTITY(1,1) NOT NULL,
	[KategoriAdi] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[KategoriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musteriler]    Script Date: 12.03.2025 13:14:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteriler](
	[MusteriID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NULL,
	[Soyad] [nvarchar](50) NULL,
	[Sehir] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MusteriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Siparisler]    Script Date: 12.03.2025 13:14:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Siparisler](
	[SiparisID] [int] IDENTITY(1,1) NOT NULL,
	[MusteriID] [int] NULL,
	[UrunID] [int] NULL,
	[CalisanID] [int] NULL,
	[SiparisTarihi] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[SiparisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urunler]    Script Date: 12.03.2025 13:14:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urunler](
	[UrunID] [int] IDENTITY(1,1) NOT NULL,
	[UrunAdi] [nvarchar](50) NULL,
	[Fiyat] [decimal](10, 2) NULL,
	[KategoriID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UrunID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Calisanlar] ON 

INSERT [dbo].[Calisanlar] ([CalisanID], [Ad], [Soyad], [Pozisyon]) VALUES (1, N'Ahmet', N'Kurt', N'Satış Temsilcisi')
INSERT [dbo].[Calisanlar] ([CalisanID], [Ad], [Soyad], [Pozisyon]) VALUES (2, N'Can', N'Bilir', N'Müdür')
INSERT [dbo].[Calisanlar] ([CalisanID], [Ad], [Soyad], [Pozisyon]) VALUES (3, N'Deniz', N'Güneş', N'Depo Görevlisi')
INSERT [dbo].[Calisanlar] ([CalisanID], [Ad], [Soyad], [Pozisyon]) VALUES (4, N'Esra', N'Yıldırım', N'Pazarlama Uzmanı')
INSERT [dbo].[Calisanlar] ([CalisanID], [Ad], [Soyad], [Pozisyon]) VALUES (5, N'Furkan', N'Kaplan', N'Müşteri Temsilcisi')
INSERT [dbo].[Calisanlar] ([CalisanID], [Ad], [Soyad], [Pozisyon]) VALUES (6, N'Gizem', N'Koç', N'Muhasebe')
INSERT [dbo].[Calisanlar] ([CalisanID], [Ad], [Soyad], [Pozisyon]) VALUES (7, N'Hakan', N'Demirtaş', N'Lojistik')
INSERT [dbo].[Calisanlar] ([CalisanID], [Ad], [Soyad], [Pozisyon]) VALUES (8, N'İrem', N'Aslan', N'İnsan Kaynakları')
INSERT [dbo].[Calisanlar] ([CalisanID], [Ad], [Soyad], [Pozisyon]) VALUES (9, N'Kadir', N'Eroğlu', N'Teknik Destek')
INSERT [dbo].[Calisanlar] ([CalisanID], [Ad], [Soyad], [Pozisyon]) VALUES (10, N'Levent', N'Özkan', N'Satın Alma')
SET IDENTITY_INSERT [dbo].[Calisanlar] OFF
GO
SET IDENTITY_INSERT [dbo].[Kategoriler] ON 

INSERT [dbo].[Kategoriler] ([KategoriID], [KategoriAdi]) VALUES (1, N'Elektronik')
INSERT [dbo].[Kategoriler] ([KategoriID], [KategoriAdi]) VALUES (2, N'Giyim')
INSERT [dbo].[Kategoriler] ([KategoriID], [KategoriAdi]) VALUES (3, N'Ev Eşyaları')
INSERT [dbo].[Kategoriler] ([KategoriID], [KategoriAdi]) VALUES (4, N'Kitap')
INSERT [dbo].[Kategoriler] ([KategoriID], [KategoriAdi]) VALUES (5, N'Kozmetik')
INSERT [dbo].[Kategoriler] ([KategoriID], [KategoriAdi]) VALUES (6, N'Spor')
INSERT [dbo].[Kategoriler] ([KategoriID], [KategoriAdi]) VALUES (7, N'Otomotiv')
INSERT [dbo].[Kategoriler] ([KategoriID], [KategoriAdi]) VALUES (8, N'Oyuncak')
INSERT [dbo].[Kategoriler] ([KategoriID], [KategoriAdi]) VALUES (9, N'Mobilya')
INSERT [dbo].[Kategoriler] ([KategoriID], [KategoriAdi]) VALUES (10, N'Bahçe')
SET IDENTITY_INSERT [dbo].[Kategoriler] OFF
GO
SET IDENTITY_INSERT [dbo].[Musteriler] ON 

INSERT [dbo].[Musteriler] ([MusteriID], [Ad], [Soyad], [Sehir]) VALUES (1, N'Ali', N'Yılmaz', N'İstanbul')
INSERT [dbo].[Musteriler] ([MusteriID], [Ad], [Soyad], [Sehir]) VALUES (2, N'Ayşe', N'Kaya', N'Ankara')
INSERT [dbo].[Musteriler] ([MusteriID], [Ad], [Soyad], [Sehir]) VALUES (3, N'Mehmet', N'Demir', N'İzmir')
INSERT [dbo].[Musteriler] ([MusteriID], [Ad], [Soyad], [Sehir]) VALUES (4, N'Fatma', N'Çelik', N'Bursa')
INSERT [dbo].[Musteriler] ([MusteriID], [Ad], [Soyad], [Sehir]) VALUES (5, N'Hasan', N'Öztürk', N'Antalya')
INSERT [dbo].[Musteriler] ([MusteriID], [Ad], [Soyad], [Sehir]) VALUES (6, N'Zeynep', N'Aydın', N'Adana')
INSERT [dbo].[Musteriler] ([MusteriID], [Ad], [Soyad], [Sehir]) VALUES (7, N'Murat', N'Şahin', N'Konya')
INSERT [dbo].[Musteriler] ([MusteriID], [Ad], [Soyad], [Sehir]) VALUES (8, N'Emine', N'Korkmaz', N'Trabzon')
INSERT [dbo].[Musteriler] ([MusteriID], [Ad], [Soyad], [Sehir]) VALUES (9, N'Selim', N'Erdoğan', N'Diyarbakır')
INSERT [dbo].[Musteriler] ([MusteriID], [Ad], [Soyad], [Sehir]) VALUES (10, N'Elif', N'Arslan', N'Samsun')
SET IDENTITY_INSERT [dbo].[Musteriler] OFF
GO
SET IDENTITY_INSERT [dbo].[Siparisler] ON 

INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [UrunID], [CalisanID], [SiparisTarihi]) VALUES (1, 1, 1, 1, CAST(N'2024-03-01' AS Date))
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [UrunID], [CalisanID], [SiparisTarihi]) VALUES (2, 2, 2, 2, CAST(N'2024-03-02' AS Date))
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [UrunID], [CalisanID], [SiparisTarihi]) VALUES (3, 3, 3, 3, CAST(N'2024-03-03' AS Date))
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [UrunID], [CalisanID], [SiparisTarihi]) VALUES (4, 4, 4, 4, CAST(N'2024-03-04' AS Date))
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [UrunID], [CalisanID], [SiparisTarihi]) VALUES (5, 5, 5, 5, CAST(N'2024-03-05' AS Date))
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [UrunID], [CalisanID], [SiparisTarihi]) VALUES (6, 6, 6, 6, CAST(N'2024-03-06' AS Date))
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [UrunID], [CalisanID], [SiparisTarihi]) VALUES (7, 7, 7, 7, CAST(N'2024-03-07' AS Date))
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [UrunID], [CalisanID], [SiparisTarihi]) VALUES (8, 8, 8, 8, CAST(N'2024-03-08' AS Date))
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [UrunID], [CalisanID], [SiparisTarihi]) VALUES (9, 9, 9, 9, CAST(N'2024-03-09' AS Date))
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [UrunID], [CalisanID], [SiparisTarihi]) VALUES (10, 10, 10, 10, CAST(N'2024-03-10' AS Date))
SET IDENTITY_INSERT [dbo].[Siparisler] OFF
GO
SET IDENTITY_INSERT [dbo].[Urunler] ON 

INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [Fiyat], [KategoriID]) VALUES (1, N'Laptop', CAST(15000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [Fiyat], [KategoriID]) VALUES (2, N'T-Shirt', CAST(250.00 AS Decimal(10, 2)), 2)
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [Fiyat], [KategoriID]) VALUES (3, N'Koltuk', CAST(7000.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [Fiyat], [KategoriID]) VALUES (4, N'Kamera', CAST(5000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [Fiyat], [KategoriID]) VALUES (5, N'Roman', CAST(150.00 AS Decimal(10, 2)), 4)
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [Fiyat], [KategoriID]) VALUES (6, N'Parfüm', CAST(500.00 AS Decimal(10, 2)), 5)
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [Fiyat], [KategoriID]) VALUES (7, N'Koşu Ayakkabısı', CAST(1200.00 AS Decimal(10, 2)), 6)
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [Fiyat], [KategoriID]) VALUES (8, N'Araba Lastiği', CAST(3000.00 AS Decimal(10, 2)), 7)
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [Fiyat], [KategoriID]) VALUES (9, N'Oyuncak Araba', CAST(350.00 AS Decimal(10, 2)), 8)
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [Fiyat], [KategoriID]) VALUES (10, N'Bahçe Makası', CAST(400.00 AS Decimal(10, 2)), 10)
SET IDENTITY_INSERT [dbo].[Urunler] OFF
GO
ALTER TABLE [dbo].[Siparisler]  WITH CHECK ADD FOREIGN KEY([MusteriID])
REFERENCES [dbo].[Musteriler] ([MusteriID])
GO
USE [master]
GO
ALTER DATABASE [market] SET  READ_WRITE 
GO
