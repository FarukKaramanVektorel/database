# Okul Sistemi Veritabanı

Bu proje, okul yönetim sistemini simüle eden bir SQL veritabanını içermektedir. Eğitim amaçlı olarak, öğrenci, öğretmen, ders, sınav ve kulüp bilgilerini saklayan bir dizi tabloyu içermektedir. Bu veritabanı, öğrenci bilgileri, dersler, sınav sonuçları, öğretmen bilgileri ve kulüp üyeliklerini içeren bir sistemin temel yapı taşlarını temsil etmektedir.

Veritabanı, farklı tablolara sahip olup aşağıdaki ana veri kümelerini içermektedir:

- **Öğrenciler**: Öğrencilerin kişisel bilgileri (ad, soyad, doğum tarihi, cinsiyet, adres, telefon numarası)
- **Öğretmenler**: Öğretmenlerin kişisel bilgileri (ad, soyad, bölüm, doğum tarihi, telefon numarası)
- **Dersler**: Derslerin bilgileri (ders adı, öğretmen ataması)
- **Sınavlar ve Sonuçlar**: Ders bazında sınavların bilgileri ve öğrenci sınav sonuçları
- **Kulüpler**: Öğrencilerin katıldığı okul kulüpleri
- **Sınıflar**: Okul sınıflarının bilgileri (sınıf adı, kapasite)
- **İlişkiler**: Öğrencilerin derslere, kulüplere ve sınıflara olan ilişkileri

### Veritabanı Yapısı

Veritabanında şu tablolar bulunmaktadır:

- **ogrenciler**: Öğrenci bilgilerini içerir.
- **ogretmenler**: Öğretmen bilgilerini içerir.
- **dersler**: Derslerin bilgilerini içerir.
- **sinavlar**: Sınavların bilgilerini içerir.
- **sinav_sonuclari**: Öğrencilerin sınav sonuçlarını içerir.
- **klup**: Okul kulüpleri bilgilerini içerir.
- **ogrenci_klup**: Öğrencilerin katıldığı kulüplerle ilgili bilgileri içerir.
- **ogrenci_ders**: Öğrencilerin aldıkları derslerle ilgili bilgileri içerir.
- **ogrenci_sinif**: Öğrencilerin hangi sınıfla ilişkilendirildiğini içerir.
- **siniflar**: Okuldaki sınıfların bilgilerini içerir.

### Kullanım

Bu veritabanı, eğitim amaçlı olarak okullarda yönetim, öğrenci takibi, sınav değerlendirmesi, ders ve kulüp yönetimi gibi çeşitli senaryolar için kullanılabilir. Öğrenciler, öğretmenler ve dersler arasında ilişkiler kurularak, gerçek hayat okul yönetim sistemlerine benzer bir yapı oluşturulmuştur.

### Veritabanı Özellikleri

- **Öğrenci ve öğretmen ilişkileri**: Öğrenciler ders alırken, öğretmenler dersleri verebilir.
- **Sınavlar ve sonuçlar**: Öğrencilerin sınav notları takip edilebilir.
- **Kulüpler**: Öğrencilerin okul kulüplerine katılımı izlenebilir.
- **Sınıflar**: Öğrencilerin hangi sınıflarda eğitim aldığı bilgisi yer almaktadır.
  
### Nasıl Kullanılır?

1. **SQL Server Kurulumu**: Bu veritabanını kullanabilmek için SQL Server kurulumuna sahip olmanız gerekmektedir.
2. **Veritabanı Yükleme**: Veritabanı şemasını ve örnek verileri SQL Server Management Studio (SSMS) ya da herhangi bir SQL istemcisi aracılığıyla yükleyebilirsiniz.
3. **Veri Girişi**: Sistemdeki tablolara daha fazla veri ekleyerek simülasyonunuzu genişletebilirsiniz.

### Ekran Görüntüleri

Aşağıdaki ekran görüntüleri, veritabanının örnek kullanımını ve tablolarda yer alan verilerin nasıl yapılandırıldığını göstermektedir:

- **Tablo Yapısı**
- **Sorgu Örnekleri**
  
*(Ekran görüntülerini buraya ekleyebilirsiniz.)*

### Katkıda Bulunma

Eğer bu projeye katkıda bulunmak isterseniz, aşağıdaki adımları izleyebilirsiniz:

1. Bu repository'yi forklayın.
2. Yaptığınız değişiklikleri kendi branch'inizde yapın.
3. Yapmak istediğiniz katkıyı açıklayan bir pull request oluşturun.

### Lisans

Bu proje, eğitim amaçlı olarak yayımlanmış olup herhangi bir ticari amaçla kullanılamaz. Yalnızca kişisel ve eğitimsel kullanım için açılmıştır.

---

**Not**: Bu veritabanı şeması ve veriler, tamamen eğitim amaçlıdır ve gerçek bir okul sistemine dayalı değildir. Gerçek okul yönetim verileri kullanmak için gerekli gizlilik ve güvenlik önlemleri alınmalıdır.

