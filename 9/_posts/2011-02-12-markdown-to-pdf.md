---
layout: post
title: markdown to pdf
---

[Recai Oktaş](http://roktas.me) hocamızın [yazdığı](https://gist.github.com/676169) jekyll sayfalarından pdf üretme betiğini çok az değiştirerek bunu daha genel bir hale getirdim.Kendilerine de buradan selam yollamak istiyorum :) :)

Kısaca markdown'u pdf'e çevirmeye yarayan bir betik ortaya çıktı.

**Kurulum**

**Not:** sistemde ruby yüklü olmalıdır.

  	$ git clone git://gist.github.com/823003.git gist-823003
  	$ cd gist-823003
  	$ chmod +x mkpdf

**Kullanım**

  	$ ./mkpdf < markdown dosyası >

Örnek:

	$ ./mkpdf ~/examples.md
