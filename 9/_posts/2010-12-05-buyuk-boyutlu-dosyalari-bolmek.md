---
layout: post
title: büyük boyutlu dosyaları bölmek
---

Linux'da büyük boyutlu dosyaları bölmek için `split` programı kullanılabilir.

bu program dosyamızı istediğimiz boyutta eşit parçalara bölmeye yarıyor.

**Kullanım**

    $ split -b 10000k -d buyuk_dosya kucuk_dosya
    $ ls -l kucuk_dosya*
    -rw-r--r-- 1 ecylmz ecylmz  10240000 2010-12-05 11:07 kucuk_dosya01
    -rw-r--r-- 1 ecylmz ecylmz  10240000 2010-12-05 11:07 kucuk_dosya02
    -rw-r--r-- 1 ecylmz ecylmz  10240000 2010-12-05 11:07 kucuk_dosya03

- -b 10000k --> parçalarımızı 10MB böleceğimizi belirttik . Girilen değer byte türünden .
- -d --> dosya adının sonundaki `01- 02` gibi numaralandırmayı sağladı. Eğer -d yazmasaydık `aa - ab -ac` diye giderdi.


Şimdi parçalanmış dosyaları birleştirelim :

    $ cat kucuk_dosya* > yeni_buyuk_dosya

elde edilen yeni_buyuk_dosya , parçaladığımız buyuk_dosya'nın aynısıdır.Hiçbir kayıp yoktur.

