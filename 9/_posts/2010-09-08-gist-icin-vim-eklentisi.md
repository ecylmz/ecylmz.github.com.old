---
layout: post
title: Gist için Vim Eklentisi
---

Bu yazıda github'ın gist özelliği nasıl daha etkili kullanılır onu anlatan bir içerik olacaktır .

**Gerekli Eklenti**

gist.vim  --> indirmek için [tıklayınız](http://www.vim.org/scripts/download_script.php?src_id=14204)

---

**Eklentinin Kurulumu**

İndirilen dosyayı ~/.vim/plugin altına kopyalıyoruz :

    mkdir ~/.vim/plugin  # böyle bir klasor yoksa bu komutu uygula

    cp < indirilen_dosyanın_yolu > ~/.vim/plugin

Daha sonra şu ayarları yapmanız gerekiyor .

    git config --global github.user "kullanıcı adın"
    git config --global github.token "token numarası"

**Not:** Token numarasını öğrenmek için github hesabını açıp :

    account settings --> account admin

bu yolu izledikten sonra sayfanın ortalarında göreceksiniz . Aşağıdaki resimde de ayrıca gösterilmiştir.

![token](http://a.imagehost.org/0084/gist-vim1.png)

---

**Eklentinin Kullanımı**

vim ile yazımızı yazdıktan sonra komut modu'na geçilir.(esc tuşuna basılarak)

`:Gist` komutu ile karşı tarafa gist olarak gönderilir ve konsolun altında linki verilir .

Aşağıdaki görüntü :Gist komutunun sonucunu göstermektedir .

![Gist](http://a.imagehost.org/0101/gist-vim2.png)

Daha detaylı kullanım için [tıklayınız](http://www.vim.org/scripts/script.php?script_id=2423)

