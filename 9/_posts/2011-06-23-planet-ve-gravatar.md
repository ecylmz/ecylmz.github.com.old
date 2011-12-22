---
layout: post
title: planet yazılımında gravatar kullanımı
---

Bu yazıya kimsenin ihtiyacı olacağını sanmıyorum ama yine de yazayım. Günün
birinde birisinin ihtiyacı olabilir :d :)

Böyle bir şey yapmak için önce her yazar için hash adında bir değişken
oluşturdum. ve mail adreslerinin `md5` ile kodlanmış halini bu değişkenlere
atadım. değişkenleri `planet.ini` dosyasına yazıyoruz.

örnek planet.ini dosyası :

<script src="https://gist.github.com/1042472.js"> </script>

md5'li halini nasıl elde edeceğiz derseniz de:

python kabuğunda şu komutları yazın:

	import hashlib
	hashlib.md5("email adresini buraya yazın").hexdigest()

her kullanıcı için `hashlib.md5("email adresini buraya yazın").hexdigest()` bu
komutu tekrarlayın.

bunlar tamamsa şimdi bunu html şablonunda nasıl kullanıcaz onu söyleyelim:

theme dizini altında bulunan index.html.tmpl dosyasını açarak.

` <img src="http://gravatar.com/avatar/<TMPL_VAR channel_hash ESCAPE="HTML">?s=72" /> `

bu satırı döngü içinde nereye koymak istiyorsak oraya ekliyoruz.

örnek kullanım :

<script src="https://gist.github.com/1042484.js"> </script>

**uyarı:** bu kodlar sadece döngü kısmını içeriyor, tmpl dosyasının tamamını değil
