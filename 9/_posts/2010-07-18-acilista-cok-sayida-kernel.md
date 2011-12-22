---
layout: post
title: Açılışta Birden Fazla Kernel Sorunu ve Çözümü
---

Öncelikle hangi sürümle devam etmek istiyorsan onunla makineyi çalıştır.

Şimdi silme işlemine geçelim...

Örneğin bizim kullandığımız çekirdek `linux-image-2.6.31-17-generic` ama daha sonradan güncelleştirme sırasında `linux-image-2.6.31-19-generic` geldi.Bunu silmek istiyoruz .

Şu komutu ,komut satırına yazıyoruz...

`sudo apt-get purge linux-image-2.6.31-19-generic`

**Not:** Son sildiğiniz çekirdek ile birlikte önemli güvenlik güncelleştirmeleri de gidecektir ...

