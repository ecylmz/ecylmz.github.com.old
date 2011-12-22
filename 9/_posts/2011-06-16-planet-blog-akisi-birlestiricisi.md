---
layout: post
title: planet blog akışı birleştiricisi
---

planet python ile yazılmış bir
program olup ana özelliği, verilen blogların RSS , atom gibi akış linklerini
ayrıştırıp düzenli şekilde birleştirdikten sonra bir tane HTML sayfa üretir.

#### Gerekli paketin kurulumu

	$ sudo apt-get install planet-venus

#### İlk kez çalıştırma

	$ planet --create example

yukarıdaki komut verildiğinde bulunan dizine `example` adında dizin açılır ve
dizin içeriği şu şekilde olur. `cache  output  planet.ini  theme`

buradaki `planet.ini` dosyası üretilecek HTML sayfa ile ilgili temel bilgiler yer alır.
Hangi sitelerin inceleneceği, üretilecek sayfanın başlığı gibi temel şeyler.

`theme` dizininde ise üretilecek HTML sayfanın şablonu bulunmaktadır.

`output`'da ise üretilen HTML sayfamız bulunur.

şimdi ise bu bahsedilen sayfayı üretelim:

	$ cd example && planet --verbose planet.ini

#### Konfigürasyon

`planet.ini` dosyasının içerisi incelenip gerekli sözdizimine göre istenildiği
şekilde düzenlenebilir.

#### Cron görevi ekleme

Bu betiği belirli aralıkda sunucuda çalıştırmak gerekir. Bunu elle yapmak
zamanla imkansız hale geleceği için en iyisi cron görevi eklemek :)

	$ su
	# crontab -e

dedikten sonra aşağıdaki cron şeysini ekleriz.

`*/30 * * * *  cd ~/bizim/dizin/example; planet ~/bizim/dizin/example/planet.ini;`

bu görev her yarım saatte bir çalışacaktır, ve HTML sayfamız yarım saatte bir
güncellenecektir.
