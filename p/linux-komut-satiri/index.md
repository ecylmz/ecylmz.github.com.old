# Linux Komut Satırı

.fx: first

Emre Can Yılmaz `<ecylmz@bil.omu.edu.tr>`

[http://ecylmz.com/](http://ecylmz.com/)

![tux](media/tux.png)

Şubat 2012

----

# Unix ve GNU / Linux Komut Satırı

---

# İçerik (1)

Shell, dosya sistemi, dosya işlemleri

- Her şey dosyadır
- GNU / Linux dosya sistemi yapısı
- Dosya ve dizinler işlemleri
- Dosya görüntüleme, arama ve sıralama
- Sembolik ve hard link
- Dosya erişim hakları

----

# İçerik (2)

Standart I/O, yönlendirmeler, boru hatları

- Standart giriş ve çıkış, dosyalara yönlendirme
- Boru hattı: standart çıkışı diğer komutlara yönlendirme
- Standart hata

---

# İçerik (3)

Görev Kontrol

- Görevler üzerinde tam kontrol
- Arkaplanda çalıştırma, askıya alma, devam ettirme, durdurma
- Aktif görevleri listeleme
- İşlem öldürme
- Çevre değişkenleri
- PATH çevre değişkeni
- Shell alias'ları, .bashrc dosyası

---

# İçerik (4)

- Metin editörleri
- Sıkıştırma ve arşivleme
- Dosyaları yazdırma
- Dosya ve dizin karşılaştırma
- Dosya arama
- Kullanıcılar hakkında bilgi almak

---

# İçerik (5)

Temel sistem yönetimi

- Dosya sahipliği
- Ağ yapılandırması
- Dosya sistemleri: oluşturma ve bağlama
- Yardım alma, man sayfalarına erişim
- Kaynaklar için internette arama yapma

---

# Unix Dosya Sistemi

---

# Her şey Dosyadır

Unix'te neredeyse her şey bir dosyadır!

- Düzenli dosyalar
- Dizinler (dosyaları dinlemek üzere set edilmiş dosyadır.)
- Sembolik linkler (dosyalara referans gösterir)
- Soketler
- ...

---

# Dosya İsimleri

Dosya isimlerinin özellikleri Unix'ten beri aynıdır.

- Küçük/Büyük harfe duyarlı
- Dosya isimleri uzunluğunun sınırı yoktur.
- İsimlerde her karakteri kullanılabilir. (boşluk içeriyorsa / ile kaçış yapılır. Dosya uzantısına ihtiyaç duyulmaz, sadece kullanıcı kolaylığı için koyulur.
- Dosya isimleri Örnekleri:
README  .bashrc  index.html  index.html.old
