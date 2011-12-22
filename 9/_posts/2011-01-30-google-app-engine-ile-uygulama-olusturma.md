---
layout: post
title: google app engine ile uygulama oluşturma
---

### Kayıt Olma

uygulamamızı oluşturmak için önce [buradan](https://appengine.google.com/) kayıt
olmanız gerekmektedir.

google telefona onay kodu gönderecektir.onu da girdikten sonra ilk uygulama gelen
sayfadan ismi girilerek oluşturulur...

---

### Gerekli Ortamı Oluşturma

şimdi gerekli paketi makinemize indirelim :

	$ wget http://googleappengine.googlecode.com/files/google_appengine_1.4.1.zip

ve zip'li dosyayı açalım :

	$ unzip google_appengine_1.4.1.zip

### Hello World! Uygulaması

uygulama adına uygun bir klasor açalım :

	$ mkdir helloworld

şimdi ise bu klasorumuzun içine uygulama dosyalarımızı oluşturalım. öncelikli
olarak `helloworld.py` :

	$ cd helloworld/
	$ vim helloworld.py # editör olarak vim tercih ettim siz kendinize uygun
	editör seçiniz...

`helloworld.py` 'nin içeriği şu şekilde olsun :

	print 'Content-Type: text/plain'
	print ''
	print 'Hello, world!'

dosyayı kaydettikten sonra konfigürasyon dosyamızı oluşturalım. tabi ki bu da
helloworld klasörünün içinde olmalı ve ismi app.yaml olmalıdır :

	$ vim app.yaml

bu dosyanın içeriği ise şu şekilde olmalı :

	application: helloworld
	version: 1
	runtime: python
	api_version: 1

	handlers:
	- url: /.*url
	  script: helloworld.py

`application: helloworld` yazan kısımda kendi "app" adınız neyse onu yazmalısınız...
`script: helloworld.py` burada ise ana dosyamız hangisi ise onun adını
yazıyoruz. burada bizim dosyamız helloworld.py idi...

şimdi oluşturduğumuz uygulamayı yerelde çalıştıralım...

**UYARI: Denemeleri yapmak için makinenizde python 2.5 kurulu olmalıdır...**

	$ google_appengine/dev_appserver.py helloworld/

tarayıcınızdan http://localhost:8080 adresine girdiğinizde burada çalışmanız gözükecektir.

---

### Uygulamayı Karşıya Yüklemek

	$ google_appengine/appcfg.py update helloworld/

bu komuttan sonra sizden mail adresinizi ve şifrenizi isteyecektir.girdikten
sonra karşıya yükleyecektir.

artık uygulamanız hazırdır.

http://application-id.appspot.com
