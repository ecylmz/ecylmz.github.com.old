---
layout: post
title: wordpress siteyi kopyalama
---

Veritabanı yedeği ve sitenin dosyalarının yedeği alındıktan sonra mysql kullanıcısı ve
veritabanı oluşturulur. bu veritabanına önceden alınan yedek import edilir.

wordpress dosyalarından `wp-config.php` 'de veritabanı adı, kullanıcısı ve
parolası, kopya için oluşturduğumuz bilgiler doğrulutusunda değiştirilmelidir.

son olarak `wp-login.php` 'de şu düzenlemeleri yapmak gerekiyor.

	require( dirname(__FILE__) . '/wp-load.php' );

bu satırın hemen peşine şu satırlar isteğe göre yazılmalı(link değiştirmek için kullanılır):

	//FIXME: do comment/remove these hack lines. (once the database is updated)
	update_option('siteurl', 'http://your.domain.name/the/path' );
	update_option('home', 'http://your.domain.name/the/path' );

bunları yazdıktan sonra, şu adresi tarayıcıdan çağırmak gerekir:

	http://your.domain.name/the/path/wp-login.php

bu işlem de tamamsa `wp-login.php` 'e eklenen satırları oradan kaldırmak
gerekir... Yani sadece 1 sefere mahsus bu yapılır.

ayrıca permalink ve php sunucu(nginx vb.) ayarlarımız eksiksiz olmalı.

şimdi kopya wordpress sitesi hazır durumda olmalı...

yararlanılan kaynaklar:
---

[http://codex.wordpress.org/Moving_WordPress](http://codex.wordpress.org/Moving_WordPress)
