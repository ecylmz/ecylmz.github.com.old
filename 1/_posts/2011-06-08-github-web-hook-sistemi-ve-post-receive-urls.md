---
layout: post
title: github web hook sistemi ve Post-Receive-URLs
---

github'ın `service hooks` servisi depolarda yapılan her değişikliği
istenilen yerde yayınlama, uyarma fırsatı sunuyor. bu servisi kullanabileceğimiz
yerlerden bazıları şunlardır:

Twitter, statusnet, rubyforge, jabber, irc, email, campfire vs.

Benim bu yazıda bahsedeceğim şey ise Post-Receive-URLs özelliğini kullanmak.
Bu özellik sayesinde, depoya bir komit gönderildiğinde istenilen bir url'ye
komit mesajı hakkında bilgileri içeren bir json verisini github bizim için yolluyor.

Bizim sunucumuza bir veri geldiğinde bu veriyi işleyerek, neler yapılmasını
istiyorsak yaptırabiliriz. örneğin: sitemizin kaynağı github'da bulunuyor;
github'daki depoyu güncellediğimizde sunucudaki sitenin de güncellenmesini
istiyoruz. Bu noktada github'ın özelliği devreye giriyor.

---

sunucuda github adında dizin açalım ve içerisine index.php adında dosya koyalım
bu index.php'nin içi şu şekilde olsun.

<script src="https://gist.github.com/923395.js"> </script>

kod zaten gayet anlaşılır şekilde. burada komit mesajında [tetikle] varsa aynı
dizinde bulunan `betik.sh` dosyasını çalıştıracaktır.

daha sonra bu github klasorunun grubunu `www-data` olarak değiştirelim ve yazma
izni verelim.

	$ sudo chown -R www-data github
	$ sudo chmod g+w github

**uyarı:** nginx veya apache yapılandırılmasını yaptığınızı farzediyorum.

---

yukarıdaki ayarlar tamamsa github'da hangi depomuzla işlem yapacaksak oraya
giriyoruz. sonra şu yolu takip ediyoruz.

`admin --> service hooks --> post-receive-urls` buraya hangi link uyarılacaksa
onu yazarız. yani `http://example.com/github` gibi...

ya da kısaca şu linki kendinize göre düzenleyerek aynı yere girebilirsiniz.

`https://github.com/kullanici/kullanici_deposu_adi/admin/hooks`

---

bunlar da tamamsa her şey yazır demektir. depoda bir değişiklik yapıp komit
mesajında da [tetikle] derseniz, betiğiniz çalışacaktır.
