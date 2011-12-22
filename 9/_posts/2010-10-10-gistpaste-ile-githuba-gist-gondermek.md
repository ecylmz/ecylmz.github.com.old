---
layout: post
title: Gistpaste ile Github'a Gist Göndermek
---

Hazırlanan bu betiğin amacı mouse ile seçilen yazının gist.github.com'a gönderilmesini sağlamak.

Ayrıca bir dizindeki tüm dosyaları tek bir gist altında göndermek .

**Kurulum**

        cd /tmp
        sudo apt-get install xclip
        wget http://github.com/dblevins/gistpaste/raw/master/gistpaste
        chmod 755 gistpaste
        sudo mv gistpaste /usr/local/bin/

Bunları yaptıktan sonra panelimize bu kısayolu ekleyelim .

![ust-panel](http://ecylmz.com/file/ust-panel.png)

resimde görülen panele(yani sizin ekranınızın en üstü olabilir) sağ tıklayıp panele ekle diyoruz .

Daha sonra `Özel uygulama başlatıcı`ya tıklayıp boş yerleri şu şekilde dolduralım .

![gistpaste-panel](http://ecylmz.com/file/gistpaste-panel.png)

**Kullanım**

- Ekranın herhangi bir yerinden bir metin seçiniz ve seçtikten sonra panele oluşturulan kısayola tıklayınız .

- Bir dizin içindeki birden fazla dosyayı aynı gist içinde göndermek içinse `gistpaste *` dememiz yeterli .

**Uyarı:** Örneğin c kodunu göndermek istiyoruz eğer o klasor içinde a.out gibi dosyalar varsa onları da göndermeye çalışacaktır .

Bu uyarı dikkate alınırsa c kodları için doğru kullanım şu şekilde olmalıdır .

        gistpaste *.[ch]

