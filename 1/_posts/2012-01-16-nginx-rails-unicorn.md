---
layout: post
title: nginx, rails ve unicorn
---

Önceki yazılarımdan [birinde](http://ecylmz.com/107/nginx-rails-ve-thin/) nginx, rails ve thin'i yazmıştım. Bu sefer
thin'den daha iyi olan ve [GitHub](https://github.com/blog/517-unicorn)'ın da kullandığı unicorn'un kullanımını yazıyorum.

![unicorn](http://ecylmz.com/file/angry_unicorn_github.png)

### unicorn kurulumu

	sudo gem install unicorn

### rails uygulamasını sunucuya koymak

Rails uygulumasını /opt altına koyduğumuzu varsayıyorum ve adı da `foo`

### unicorn ayarları

Her rails uygulmasında `config` dizinin altına `unicorn.rb` adında dosyayı
koymalıyız.

**unicorn.rb**

<script src="https://gist.github.com/1621720.js"> </script>

Şimdi her uygulama için konfigürasyon dosyası açacağımız dizini oluşturalım:

	# mkdir /etc/unicorn
	# cd /etc/unicorn

içerisine foo uygulamamıza özel dosyayı açalım:

**foo.conf**

	RAILS_ROOT=/opt/foo
	RAILS_ENV=production

Şimdi init script'imizi /etc/init.d altına koyalım. Bu dosyanın izinleri **755**
olmalıdır.

**unicorn**

<script src="https://gist.github.com/1620127.js"> </script>


makine yeniden başladığında unicorn da otomatik başlasın:

	update-rc.d unicorn defaults

### nginx ayarları

Örnek konfigürasyon dosyası:

<script src="https://gist.github.com/1621565.js"> </script>

### bazı komutlar

unicorn'u başlatmak-durdurmak için:

	# /etc/init.d/unicorn start-stop

nginx'i başlatmak-durdurmak için:

	# /etc/init.d/nginx start-stop
