---
layout: post
title: 19.status.net'i kullanmak
---

Bu yazıda bulabilecekleriniz şöyle :

<li><a href="#kurulum">bti programını kullanarak konsoldan tweet göndermek . </a></li>
<li><a href="#yonlendirme">19.status.net'e gönderilen tweet'leri tweeter'a da göndermek . </a></li>

---


### <a id="kurulum">bti programını kullanarak konsoldan tweet göndermek </a>

**Gerekli Program**

`bti`

**Kurulum**

`sudo apt-get install bti`

**Yapılandırma**

Ev dizininde bir ayar dosyası oluşturmak gerekiyor, ~/.bti adında.

Şu komutla bu dosyayı oluşturabilirsiniz ya da açabilirsiniz :

`gedit ~/.bti`

Bu dosyanın içeriği ise şöyle olmalıdır :

       # comments are allowed in the bti config file
       # rename this to ~/.bti so that you do not need
       # to constantly enter your account name and/or
       # password on the command line every time you send
       # a message.
       account=<Kullanıcı adın>
       password=<Parolan>
       host=https://19.status.net/api/statuses
       logfile=.bti.log

**Kullanım**

Konsolumuzu açıp `bti` yazıp enter’a basıyoruz .

`tweet:<Buraya ne yazacaksak onu yazıyoruz>`

---

### <a id="yonlendirme">19.status.net'e gönderilen tweet'leri tweeter'a da göndermek</a>


Öncelikle `19.status.net` hesabımızı açmamız lazım ..

Daha sonra alttaki resimde görülen `1` nolu okun gösterdiği Bağlan sekmesine tıklanır .

Hemen peşine `2` nolu okun gösterdiği `Connect my Twitter account` butonuna tıklanır .

![1](http://i.imagehost.org/0232/stat1-nq8.png)

Butona tıkladıktan sonra yeni bir sayfa açılıp twitter’a bağlanmaya çalışacaktır .

Çıkan sayfanın görüntüsü aşağıdaki gibi olacaktır .Bu resimde bizden izin istemektedir . `Allow` diyerek yola devam ediyoruz .

Twitter'da açık kalan oturumunuz yoksa kullanıcı adınızı ve parolanızı da isteyecektir . Eğer açık olan oturumuzun varsa sadece `Allow` demek yeterli olacaktır .

![2](http://i.imagehost.org/0308/stat2-nq8.png)

Son olarak aşağıdaki gibi bir görüntü görüyorsanız işlem başarılı olmuş demektir .

![3](http://i.imagehost.org/0708/stat3-nq8.png)

