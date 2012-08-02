# Komut Satırını Kaydetme

.fx: first

Emre Can Yılmaz `<ecylmz@bil.omu.edu.tr>`

[http://ecylmz.com/](http://ecylmz.com)

Ağustos 2012

---

# Shelr Gem

shelr gem'i komut satırını **metin** olarak kaydedip kendi sitesine yükleyen bir gem. Yani oynatılan görüntü resimlerden değil düz metinden oluşuyor.

## Kurulum

    !sh
    $ [sudo] gem install shelr

Detaylar için :

[asciicast](http://shelr.tv/records/4f49ea4ae557800001000004)

---

# Komut Satırını Kaydet

    !sh
    $ shelr record

Kayıt başlar ve bundan sonra yazdıklarınız kayıt altına alınır. Kaydı bitirmek
için `exit` yazın veya `Ctrl + D`

---

# Yayınlama

[http://shelr.tv/](http://shelr.tv/) bu adrese Github, Twitter, Google veya
OpenID hesaplarınızdan biriyle girip kaydolduktan sonra gelen ilk ekranda yazan komutları sırayla girmeniz gerekmektedir.

    !sh
    $ shelr push last

Bu komut sizin son kaydınız siteye yükler.

---

# Avantajları

- Vidyo boyutları normalde çok büyük olur ama burada çok çok az.
- Kişinin kayıtlarındaki komutları veya herhangi bir metni kopyalamaya imkan
  veriyor.
- gif'lere göre avantajı hem boyut hem de ileri-geri sardırabilme.
- Bu kayıtları kendi sitemize de gömebiliyoruz.
