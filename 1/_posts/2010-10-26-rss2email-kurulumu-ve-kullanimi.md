---
layout: post
title: rss2email kurulumu ve kullanımı
---

rss2email programı adından da anlaşılacağı gibi rss'leri istediğimiz e-mail adresine gönderiyor .

**Kurulum**

        sudo apt-get install rss2email

**Yapılandırma ve Kullanım**

Yukarıda komutla programımızı yükledikten sonra `r2e` komutuyla programı çalıştırabiliriz .

- ilk önce maillerimizi göndermek için bir ayar dosyası oluşturalım :

        gedit ~/.rss2email/config.py

- şimdi açtığımız bu config.py içerisine alttaki gibi ayarları yazmak gerekiyor :

        SMTP_SEND = 1
        SMTP_SERVER = "mail sağlayıcınızın smtp adresi"

        AUTHREQUIRED = 1
        SMTP_USER = "mail adresi"
        SMTP_PASS = "parola"

- yukarıda belirtilen işlemleri yapmamızın nedeni, ayar dosyasında belirtilen mail adresinden mail göndermek için gerekliydi .

- şimdi maillerimizin gideceği default adresimizi tanımlayalım :

        r2e new user@domain.com

- default adresimizi daha sonradan değiştirmek istersek o da şöyle :

        r2e email yenimail@domain.com

- daha sonra istediğimiz rss adresini ekleyelim :

        r2e add "tırnaklar arasına rss adresi yazılır"

- eğer istediğimiz adresi default mail adresine değil de istediğimiz adrese göndermek istersek şöyle yapıyoruz :

        r2e add "tırnaklar arasına rss adresi yazılır" mail@domain.com

- rss'deki eski gönderilerin mail adresine gitmemesi için ilk seferliğe mahsus olmak üzere şu kullanılabilir :

        r2e run --no-send

- rss'de ki değişiklikleri göndermek içinse :

        r2e run

- eklenen rss adreslerinin listesini görmek için :

        r2e liste

- listede görünen rss adreslerinden birini silmek için :

        r2e delete n


** Bu programı daha verimli kullanmak için bunu bir cron görevi haline getirmek yeterli olacaktır  **


**cron görevi oluşturma **

- ilk önce alttaki komutla cron görevlerini yazdığımız dosyasımızı açıyoruz .

        crontab -e

- açılan dosyaya alttaki yazıyı yazıyoruz .

        */5 * * * * r2e run

yukarıdaki yazı her 5 dakikada bir r2e run komutunun çalışmasını sağlar .

