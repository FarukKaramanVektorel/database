SQL Server Veritabanı

Bu proje, SQL Server için bir test veritabanı oluşturur. Veritabanı, JOIN ve Subquery gibi sorguları test etmek için tasarlanmıştır.

📚 Veritabanı Yapısı

Veritabanında toplam 5 tablo bulunmaktadır:

Musteriler: Müşteri bilgilerini tutar.

Siparisler: Her siparişi kaydeder ve ilgili müşteriyle ilişkili hale getirir.

Urunler: Satışa sunulan ürünleri tutar.

Kategoriler: Ürünlerin ait olduğu kategorileri barındırır.

Calisanlar: Siparişleri yöneten çalışanları tutar.

📊 Veri Modeli (Tablo İlişkileri)

Musteriler  (MusteriID)  1----*  (MusteriID)  Siparisler
Siparisler  (UrunID)    *----1  (UrunID)      Urunler
Urunler     (KategoriID) *----1  (KategoriID)  Kategoriler
Siparisler  (CalisanID)  *----1  (CalisanID)  Calisanlar

📝 Kurulum

SQL Server'da veritabanını oluşturun:

CREATE DATABASE market;
USE market;

Tabloları oluşturun ve verileri ekleyin (Tam SQL Script: market.sql dosyasında bulunmaktadır).

Veritabanını test etmek için aşağıdaki JOIN sorgularını çalıştırın:

INNER JOIN:

SELECT M.Ad, M.Soyad, S.SiparisTarihi, U.UrunAdi, U.Fiyat
FROM Musteriler M
INNER JOIN Siparisler S ON M.MusteriID = S.MusteriID
INNER JOIN Urunler U ON S.UrunID = U.UrunID;

LEFT JOIN:

SELECT M.Ad, M.Soyad, S.SiparisID
FROM Musteriler M
LEFT JOIN Siparisler S ON M.MusteriID = S.MusteriID;

RIGHT JOIN:

SELECT C.Ad, C.Soyad, S.SiparisID
FROM Calisanlar C
RIGHT JOIN Siparisler S ON C.CalisanID = S.CalisanID;

FULL JOIN:

SELECT M.Ad, M.Soyad, S.SiparisID
FROM Musteriler M
FULL JOIN Siparisler S ON M.MusteriID = S.MusteriID;



🔧 Geliştirme

Bu proje, Subquery ve daha karmaşık SQL analizleri eklemek için uygundur. Yeni sorgular ve fonksiyonlar eklemek için queries.sql dosyasını kullanabilirsiniz.

Katkıda bulunmak isterseniz:

Forklayın ve geliştirin 🚀

Pull Request gönderin 👌

💪 Keyifli kodlamalar! 🚀
