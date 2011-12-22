---
layout: post
title: github web hook ve nginx http basic auth
---

[önceki yazı](http://ecylmz.com/106/github-web-hook-sistemi-ve-post-receive-urls/)da
github web hook sisteminin nasıl kurulacağını yazmıştım. bu yazı da ise http
basic auth ayarı ile github ile daha güvenli bir bağlantı oluşturabilirsiniz.

nginx ayarı olarak konfigurasyon dosyamızın 443 portunu dinleyen ayar yerine şunu ekliyoruz.

**not:** sistemi `github` dizinine kurduğumuzu farzediyorum.

	location /github/ {
		try_files $uri $uri/ /github/index.php?q=$uri&$args;
		auth_basic            "Administrator Login";
		auth_basic_user_file .htpasswd;
	}

bu ayarları ekledikten sonra şimdi `hook` adında kullanıcı oluşturalım ve
parolasını .htpasswd dosyası içerisine şifreleyerek koyalım.

	$ cd /etc/nginx
	$ sudo htpasswd -c .htpasswd hook # dikkat -c parametresini sadece ilk kullanıcıyı oluştururken veriyoruz.

şimdi nginx'i yeniden başlatalım:

	$ sudo /etc/init.d/nginx restart

bunlar da tamamsa son olarak github'da `https://github.com/kullanıcı/depo/admin/hooks`
linkine giderek, post-receive urls kısmına şunu kendimize göre düzelterek yazıyoruz.

	https://hook:parola@example.com/github/
