---
layout: post
title: windows altında git kullanımı
---

﻿Bu yazı windows altında git kullanımı için hazırlanmıştır...

**Kurulum**

Alttaki linkten gerekli programı indirilerek next > next diyerek default ayarlarla kuralım ...

		http://msysgit.googlecode.com/files/Git-1.7.2.3-preview20100911.exe

**Konfigürasyon**
- Masaüstümüze `Git Bash` adında bir kısayol oluşmuş olmalı . Bu programı çalıştıralım.Gelen ekran bilinen linux komut satırı...

- Karşı tarafın(github) bizi tanıması  için bir ssh anahtarı üretelim :

	- `ssh-keygen` komutunu yazıp enter'a basalım .
	- ilk gelen soru anahtarın nereye kaydedileceği . Bu soruyu `enter` diyerek geçelim.
	- ikinci soruda bizden bir parola isteyecektir . 3. soruya da aynı parolayı yazdıktan sonra anahtar oluşturma işimiz bitmiştir.

anahtarımız oluştu . yeri ise default olarak `c:\users\kullanıcı-adı\.ssh` dizinidir.

- Şimdi oluşturduğumuz anahtarı github'a koyalım :

	- github.com'da iken : `Account Settings --> SSH Public Keys --> Add another public key ` yolunu takip edelim .
	- oluşturulan anahtarı açalım : `c:\users\kullanıcı-adı\.ssh/id_rsa.pub` dosyasını metin editörü ile açıp içeriğini kopyalayalım.
	- Kopyalanan içeriği, ilk adımda açtığımız yere yapıştıralım ve `Add Key` diyerek onaylıyalım .

- Tek sefere mahsus olmak üzere birkaç ayar girmemiz gerekiyor :

		git config --global user.name "ad soyad"
		git config --global user.mail "mail adresi"

**Kullanım**

- Klon etmek :

Diyelim ki [şu adresteki](http://github.com/19/wp-theme-uzem) depoyu klonlamak istiyoruz :

Sayfada görülen `ssh` butonuna tıkladığımızda klon adresimizi bize gösterecektir.(tabi iznimiz varsa)

		git@github.com:19/wp-theme-uzem.git

Masaüstümüzde bulunun `Git Bash` kısayoluna tıklayarak komut satırımızı açalım ve şu komutu verelim .

		git clone git@github.com:19/wp-theme-uzem.git

Bu komut sonucu `wp-theme-uzem` klasoru default olarak c:\users\kullanıcı-adı\ altına açılacaktır.

Buraya giderek bu klasor altında istediğiniz gibi düzenleme yapabilirsiniz .

- Yapılan Değişiklikleri Github'a Göndermek(PUSH ETMEK) :

	- Daha sonra herhangi bir yerde bulunan bir klasore sağ tıklayark `Git GUI Here` yazısına tıklayalım .

	- açılan pencerede 3 seçenek olacaktır. bunlardan `Open Existing Repository` yazısına tıklayarak , üzerinde çalıştığımız deponun adresini verelim.

	- Solda bulunan `Unstaged Changes` kısmında eklenen ya da değişiklik yapılan dosyalar görünecektir .Bunların üstüne tıklayıp(teker teker) `ctrl t` dersek `Staged Changes` kısmına alacaktır.

	- Commit Message kısmına , yapılan değişiklikle alakalı ufak bilgi notu yazılır.

	- Daha sonra commit butonuna basılarak , herşey hazır duruma getirilir.

	- Son olarak push butonuna basarak karşıya göndeririz.Şifre istenirse ssh anahtarı üretilirken yazdığımız şifre girilir.

![git](http://ecylmz.com/file/win-git.png)

