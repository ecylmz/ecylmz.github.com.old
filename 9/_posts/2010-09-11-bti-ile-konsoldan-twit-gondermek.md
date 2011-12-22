---
layout: post
title: bti ile Konsoldan twitter'a , identi.ca'ya ve status.net'e tweet göndermek
---

**Kurulum**

`sudo apt-get install bti`

---

**Yapılandırma**

ev dizininde bir ayar dosyası oluşturmak gerekiyor, ~/.bti adında.

`gedit ~/.bti`

içinde şu olmalı:


       # comments are allowed in the bti config file
       # rename this to ~/.bti so that you do not need
       # to constantly enter your account name and/or
       # password on the command line every time you send
       # a message.
       account=<Kullanıcı adın>
       password=<Parolan>
       host=twitter
       logfile=.bti.log

- Twitter'a bağlanmak için `host=twitter`
- identi.ca'ya bağlanmak için `host=identica`
- status.net'de ki 19 bulutu sayfasına bağlanmak için `host=https://19.status.net/api/statuses`  (bu kısım Omü Bilgisayar Mühendisliğine Özel Bir Alan)

---

**Kullanım**

Konsolumuzu açıp `bti` yazıp enter'a basıyoruz .

`tweet:<Buraya ne yazacaksak onu yazıyoruz>`

---

bti programının proje sayfasına ulaşmak için [tıklayınız](http://gregkh.github.com/bti/)

