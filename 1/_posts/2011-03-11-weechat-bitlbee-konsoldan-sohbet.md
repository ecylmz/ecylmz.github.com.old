---
layout: post
title: weechat ve bitlbee ile konsoldan sohbet
---

### weechat ve bitlbee'nin kullanımı

#### İÇERİK

- [kurulum](#kurulum)
- [ilk kez çalıştırma ve konfigürasyon](#konfigurasyon)
- [hesap ekleme](#hesapEkleme)
- [kısayollar](#kisayollar)
- [kullanım](#kullanim)

### <a id="kurulum">gerekli programların kurulması</a>

alttaki komutla beraber iki adet program yüklenecektir.

    $ sudo apt-get install weechat bitlbee

### <a id="konfigurasyon">Programı Çalıştırmak ve İlk Ayarlar</a>

alttaki komutla `weechat` programı çalışır.

    $ weechat-curses

şimdi yerel sunucumuza bağlanalım.
bundan sonraki komutlar `weechat` programı içerisinde yazılacaktır.

    /connect localhost

bitlbee adındaki sanal kanalımıza bağlanalım.
hesap ekleme, çıkarma gibi işlemler bu kanal üzerinden yapılacaktır.

    /join &bitlbee

esc + 2'ye basarak bitlbee kanalına geçelim.
alttaki komutla weechat sistemine bir parola koymuş oluyoruz.Sonraki girişlerde
bu parolayı kullanacağımız için unutmamak gerekiyor.

    register <burada herhangi bir parola>

bu noktada durumu kaydetmekte fayda var.alttaki komut verilir :

    save

---

### <a id="hesapEkleme">Hesap Ekleme</a>

- [gtalk](#gtalk)
- [twitter](#twitter)
- [facebook](#facebook)

yine bitlbee kanalında olmamız gerekiyor. daha önceden de dediğim gibi
bu tür işlemler hep bu kanal üzerinden gerçekleştirilir.

<a id="gtalk">**gtalk hesabı ekleme**</a>

    account add jabber <kullanici_adi>@bil.omu.edu.tr <parola> talk.google.com:5223:ssl

bu hesabı şimdi açalım :

    account on


<a id="twitter">**twitter hesabı ekleme**</a>

    account add twitter <kullanıcı adı> <parola>

allttaki url bizim kullandığımız 19.status.net servisinindir.twitter.com'un
url'si farklı olacaktır.sırayla alttaki komutları verelim.

    account 1 set base_url http://19.status.net/index.php/api
    account 1 set mode chat
    account 1 set oauth false

ve şimdi de bu hesabı aktif edelim:

    account on 1

sekmelerin birine 19.status.net gelmiş olması gerekiyor. esc + [1-9] bu tuşlarla
sekmeler arasında dolaşabilirsiniz. eğer 19.status.net sekmesi 4.sekme olduysa ,
ulaşmak için esc + 4 demek gerekir.

<a id="facebook">**facebook hesabı ekleme**</a>

    account add jabber <username>@chat.facebook.com <password>
    save
    account on

yukarıdaki komutları verdikten sonra  facebook hesabı da aktif
olacaktır.

online insanların isimleri rakamlarla(profil id) gözükecektir.
bunları gerçek isimlerine çevirmek içinse bir eklenti kurmamız gerekiyor.
eklenti kurulumunu aşağıda yazdım.

eklenti adı : **facebook rename**

*kaynak :* [http://www.weechat.org/scripts/source/stable/facebook_rename.py/](http://www.weechat.org/scripts/source/stable/facebook_rename.py/)

*kurulum :*

    wget http://www.weechat.org/files/scripts/facebook_rename.py
    cp facebook_rename.py ~/.weechat/python/autoload

*kullanım :*

özel bir şey yapmak geremiyor.giriş yaptıktan sonra kendisi otomatik devreye
girecektir.

---

her ihtimale karşı biz yine ayarlarımızı kaydedelim :

    save

### <a id="kisayollar">Kısayollar</a>

Zamanla eklenecektir...

hemen bir şeyler okumak isteyenler [buraya](http://www.weechat.org/files/doc/stable/weechat_user.en.html#key_bindings) bakabilir.

### <a id="kullanim"> Kullanım </a>

Gerekli ayarları yaptık ettik, şimdi çıkıp yeniden girmek isteyelim :

programdan çıkmak için alttaki komutu bitlbee kanalı dışında vermek gerek:

    /bye

yeniden çalıştıralım.

    $ weechat-curses

yerel sunucumuza bağlanalım.

    /connect localhost

önceden yapmış olduğumuz ayarları , oturumları aktif edelim.

    identify <önceden oluşturulan parola>

bunlardan sonra, önceden tanımlanan hesaplar açılmış olacaktır.

ilk mesajımızı da atalım o vakit.

"esc + 2" ile bitlbee kanalımıza geçtik. sağda online kullanıcılar gözükecektir.
onlardan birinin nick'i de ecylmz olsun diyelim.mesajı şöyle yazıyoruz.

    /msg ecylmz ohooo müdür nasılsın ya :)

bu kişiden cevap geldiğinde, hangi sekmede bu sohbet penceresinin açıldığını
gösterecektir program. diyelimki 4.sekmede bu sohbet penceresi açıldı, buraya
geçmek için önceden de dediğimiz gibi "esc + 4" kombinasyonu kullanılır.
