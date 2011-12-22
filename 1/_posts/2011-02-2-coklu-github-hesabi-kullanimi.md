---
layout: post
title: çoklu github hesabı kullanımı
---

makinemizde ana hesabımız için kullandığımız ssh anahtarı var farzediyorum.

**diğer hesap için kullanılacak olan ssh anahtarını oluşturalım :**

    $ ssh-keygen -f ~/.ssh/other

yukarıdaki komutta kendi anahtarlarımızın ~/.ssh klasöründe olduğunu farzettim.

**anahtarımızı ssh anahtarı olarak ekleyelim :**

    $ ssh-add ~/.ssh/other

bunları yaptıktan sonra oluşturduğumuz bu anahtarı github.com'a koymayı
unutmayalım(**2.hesaba koymamız gerektiğini unutmayalım**).

---
**ssh'ı yapılandıralım :**

`~/.ssh/config` dosyasını oluşturalım ve içeriği aşağıdaki gibi olsun.

    $ $EDITOR ~/.ssh/config

içeriği :

    # kendi anahtarımız
    Host github.com
      HostName github.com
      User git
      IdentityFile ~/.ssh/id_rsa

    # other anahtarına sahip olan
    Host other
      HostName github.com
      User git
      IdentityFile ~/.ssh/other

---

**ikinci anahtarın kullanımı**

    $ git clone git@github.com:kullanici_adimiz/depomuz.git # 1. anahtar

    $ git clone git@other:ikinci_kullanici/deposu.git # 2. anahtar
