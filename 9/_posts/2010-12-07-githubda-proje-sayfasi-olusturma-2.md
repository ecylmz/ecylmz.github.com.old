---
layout: post
title: Github'da Proje Sayfaları Oluşturma - 2
---

Daha önceki [yazıda](http://ecylmz.com/909/githubda-proje-sayfasi-olusturma-1) otomatik proje sayfası oluşturmayı yazmıştım.

Şimdi daha gelişmiş proje sayfası oluşturmayı yazalım.

diyelim ki `ecylmz` adlı github kullanıcısının `ceng` adında bir deposu var .

bu kullanıcının `gh-pages` adında bir branch'a ihtiyacı var.

branch'ı oluşturup o branch'ın içinde olmamız gerekiyor.

    $ git checkout -b gh-pages

Şimdi alttaki adımları takip edelim...

    $ cd /path/to/ecylmz # yani git depomuzun bilgisayaramızdaki yerine geçiyoruz
    $ git symbolic-ref HEAD refs/heads/gh-pages
    $ rm .git/index
    $ git clean -fdx

Çalışma alanı boş gözükecektir endişe yapmaya gerek yok . Çünkü dosyalarımız `master` branch'da duruyor :)

Şimdi sayfamızı oluşturalım ...

    $ echo "My GitHub Page" > index.html
    $ git add .
    $ git commit -a -m "First pages commit"
    $ git push origin gh-pages

Yaklaşık 5 dakika içinde sayfanız oluşmuş olacaktır.

`ecylmz.github.com/ceng` adresi artık bizim proje sayfamızı göstermeye hazırdır.

---

Şuan hala `gh-pages` branch'ındayız.

değişikliklerimizi de bu branch'da yapmalıyız

    $ git push origin gh-pages

master branch'ına geçmek istersek:

    $ git checkout master

dememiz yeterli ...

