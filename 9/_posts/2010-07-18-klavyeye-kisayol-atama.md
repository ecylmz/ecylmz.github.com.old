---
layout: post
title: Klavyeye Kısayol Atama
---

Bunun için önce gerekli olan xbindkeys paketini kuruyoruz:

`sudo apt-get install xbindkeys `

Sonra home dizinimizin altında .xbindkeysrc adlı dosya oluşturuyoruz :

`touch .xbindkeysrc `

Daha sonra terminalde kısayol ataması yapmak için şu komutları veriyoruz :

`xbindkeys -k `

Program sizden bir tuşa basmanızı bekliyor olacak mesela “f7″ ye basalım.

    "NoCommand"
    m:0x10 + c:71
    Mod2 + F7

Böyle bir çıktı gelecek bunu kopyalayıp .xbindkeysrc adlı dosyanın içine yapıştırıyoruz :

`$EDITOR ~/.xbindkeysrc`

NoCommand yazan yere çalıştıracağımız programın ismini yazıyoruz .

Son hali şu şekilde olmalı :

       "/usr/bin/xterm"
    m:0x10 + c:73
    Mod2 + F7

**Not :** xbindkeys programını her açılışta çalıştırmak gerekiyor .

