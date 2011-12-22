---
layout: post
title: Linux Flash Player Kurulumu
---

Öncelikle Adobe'un sitesinden gerekli paketi indiriyoruz .

<a href="http://get.adobe.com/tr/flashplayer/thankyou/?installer=Flash_Player_10.1_for_Linux_(.tar.gz)"> Paket için tıklayınız . </a>

Daha sonra bu tar.gz paketini bildiğimiz bir yoldan açıyoruz .

İçinden çıkan `libflashplayer.so` adındaki dosyayı /usr/lib/mozilla/plugins içine kopyalıyoruz .

    sudo cp ~/Masaüstü/libflashplayer.so /usr/lib/mozilla/plugins

**Uyarı:** Yukarıdaki örnekte tar.gz içinden çıkan paketin Masaüstü'nde olduğunu kabul ettik . Siz kendinize göre uyarlayınız .

Bu işlem debian ve ubuntu üzerinde başarıyla çalıştı . Her linux dağıtımında işe yarayıp yaramadığı denetlenmemiştir.

