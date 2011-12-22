---
layout: post
title: PATH ' i Düzenlemek
---



Linux işletim sistemlerinde komut satırından bir programı çalıştırmaya kalktığımızda bu programı belirtilen yollarda arar ve varsa
çalıştırır.

Bazen bunu düzenlemek isteriz kendi yazdığımız betiği çalıştığımız dizinde çalıştırmak isteriz . Bunun için Path Değişkenini düzenleriz.

    Path'ı görmek için :
    $ echo $PATH
    /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

Path'ı değiştirmek için daha doğrusu ekleme yapmak için :

    $ PATH=$PATH:~/Masaüstü

Şimdi tekrar bakalım PATH ' imize :

    $ echo $PATH
    /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:
    /bin:/usr/games:/home/ecylmz/Masaüstü/


görüldüğü gibi Masaüstü'müz eklendi .

Konsolu kapatıp açtığında bu path değişkeni değeri eski halini alır .

Bunu kalıcı hale getirmek için şunu yapmak gerek :

.bashrc dosyası açılır :

`$EDITOR ~/.bashrc`

Girdikten sonra en son satıra geliyoruz ve şu satırı ekliyoruz . Ben örnekte “~/” dosya yolunu path’e ekledim .

`export PATH=$PATH:~/`

Şimdi çıkıp şu satırı komut satırına giriyoruz :

`source .bashrc`

