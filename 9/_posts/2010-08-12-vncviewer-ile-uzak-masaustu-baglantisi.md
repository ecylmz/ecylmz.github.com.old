---
layout: post
title: vncviewer ile uzak masaüstü bağlantısı
---

Bu program ile linux dağıtımları arasında uzak masaüstü bağlantısı yapabilirsiniz .

Her iki tarafta da bu programın yüklü olması gerekmektedir . Programı şu komutla kurabilirsiniz .

`sudo apt-get install vncviewer`

Kurulumu yaptıktan sonra birkaç ayar yapmak lazım . Bu ayarları şuradan yapıyoruz :

`Sistem --> Tercihler --> Uzaktaki Masaüstü `

Burayı açtığınızda ayarlar aşağıdaki resime benzer olmalı ya da kendinize göre düzenlemelisiniz .

<img src="http://i34.tinypic.com/2yopk5v.png" />

Daha sonra konsolumuzu açıp şöyle bir komut veriyoruz :

`vncviewer uzak_makine_ip`

Karşı tarafın tercihlerine göre şifre sorabilir ya da bağlanmak için onaylaması gerekebilir .

uzak_makine_ip --> yereldeki bir makineye bağlanıyorsanız bu ip'yi `ifconfig` komutu ile öğrenebilirsiniz .

