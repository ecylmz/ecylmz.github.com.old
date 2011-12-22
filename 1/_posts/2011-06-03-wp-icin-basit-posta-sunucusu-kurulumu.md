---
layout: post
title: wordpress için basit posta sunucusu kurulumu
---

WP'de çeşitli yerlerde posta işlevine ihtiyaç var.  WP yöneticisiyle
haberleşmek, bazı kullanıcı işlemleri (ör. unutulan parola) veya
iletişim formu gibi.  Bu nedenle WP'yi barındıran sunucuya asgari
düzeyde de olsa "mail relay" yapacak basit bir posta sunucusu kurulmalı.

#### Posta sunucusu kurulumu

Debian'da standart posta sunucusu Exim4.  Alternatifler postfix,
sendmail, qmail olabilirdi. Biz Exim4 üzerinden gideceğiz.  Dikkat!
Ubuntu'da ve başka pek çok dağıtımda (örneğin RedHat) standart posta
sunucusu Postfix'tir.

Exim4 iki farklı türde paketlenmiş: exim4-daemon-light ve
exim4-daemon-heavy.  Bize gereken hafif olanı, yani exim4-daemon-light.
Neden?  Amacımız sadece bu amaçla iş görecek bir posta sunucusu kurmak
değil, basitçe bir posta taşıyıcı gerekiyor bize.

Debian exim4 paketi öntanımlı hafif olanı olmak üzere bu iki farklı
sunucuya bağımlılık vermiş.  Dolayısıyla sadece exim4 paketini kurmak
yeterli olacak, bu paket exim4-daemon-light'ı bağımlılıklar üzerinden
kuracaktır.  Exim4'ün yapılandırmasını elle değil de Debconf üzerinden
yapmak için bir de exim4-config paketini kurmamız gerekiyor.

- Gerekli paketleri kur

`apt-get install exim4 exim4-config`

- Exim4'ü yapılandır

`dpkg-reconfigure exim4-config`

İlk ekranda "İnternet sitesi; posta alma/gönderme doğrudan SMTP ile"
 (veya yerele göre) İngilizce olarak "Internet site; ..." seçeneğini
 seçin ve kalan tüm ekranları öntanımlı olarak ENTER'la geçin.

- WP'de irtibat amacıyla kullanılacak posta alıcılarını dikkatli şekilde
ayarlayın, kontrol edin.  Bu adresler posta kabul eden gerçek adresler
olmalı.  Burada dikkat edilmesi gereken şu: WP'de genel ayarlarda bir
posta adresi veriyorsunuz, bir de iletişim formu eklentisinde
(ContactForm 7) kayıtlı adresler var (Türkçe ve İngilizce iki farklı
versiyonda).  Kolaylık olması için bu adreslerin hepsini aynı
yapıyoruz, ama iletişim için farklı diğer işlemler için farklı
adresler seçebiliriz.

- Her şey tamamsa test yapıyoruz.  Konsolda exim4 loglarını takip edin.

`tail -f /var/log/exim4/mainlog`

Bu noktada iletişim formuna girerek örnek bir gönderim yapın ve
exim4'ün ne yaptığını izleyin.

Postalar önce bir posta havuzuna (bir tür önbellek) alınır.  Bu havuzu
sıfırlamak istiyorsanız şu komutu kullanın:

`exim4 -qff`

Dikkat!  Bu yöntemle çalışan bir posta sunucusu kötü amaçlar için
kullanılabilir.  Örneğin iletişim formu üzerinden otomatik saldırı
yapılabilir.  Bu nedenle iletişim formlarını captcha'lı yapmanızda yarar
var.  Ayrıca bu tür posta sunucuların bir RDNS yai ters (reverse) DNS
kaydı olmasında yarar var.  Bu sayede postayı alan taraf postayı
gönderenin DNS kimliğini denetleyerek bunun sahte olup olmadığını
kontrol edebiliyor ve gerekirse reddediyor.  Biz şimdilik böyle bir ayar
yapmadık.
