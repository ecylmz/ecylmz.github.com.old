---
layout: post
title: Shell’de Kendi Komutlarımızı Oluşturma
---

Linux deyince bilgisayara tam bi hakimiyet gelir aklıma . Yeni başladığımda bilgisayarımı özelleştirmek istiyordum ama nasıl olur fikrim yokdu . Shell’de komut oluşturabildiğimizi görmüştüm ve hemen denedim .

Mesela kapat dediğimde makine kapansın ya da root dediğimde root olsun .

Hemen nasıl yapılacağına geçiyorum .

Önce konsolumuzu açıyoruz ve .bashrc dosyamızı ziyaret ediyoruz :

`$EDITOR ~/.bashrc`

Son satıra gelip şu satırı ekliyoruz :

`alias kur="sudo apt-get install"`

.bashrc dosyamızı kaydedip çıktıktan sonra , şu satırımızı konsolumuzda yazıyoruz :

`source .bashrc`

Burada alias bu imkanı sağlıyan kelime . kur bizim yeni komutumuz . sudo apt-get install ‘da kur yazınca hangi komutun çalışacağını gösteren yer .

Bu örnek sadece fikir vermesi içindi . Düşünüldüğünde çok işe yarıyacak birşey . Sürekli uzun işlemleri tekrarlamakdan sıkılanlar için birebir :)

