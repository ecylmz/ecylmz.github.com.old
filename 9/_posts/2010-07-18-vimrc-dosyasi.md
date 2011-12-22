---
layout: post
title: .vimrc Dosyası ve Bazı Ayarlar
---


Konsolu açıyoruz ve .vimrc adında dosya açıyoruz.


   `$ $EDITOR ~/.vimrc`


aşağıdaki yazıları bu dosyanın içine yazıp-kaydedip çıkıyoruz.

    syntax enable
    filetype indent on
    set et
    set sw=4
    set smarttab
    map <f2> :w\| !python % <cr>

- `syntax enable` sözdizimi renklendirmesini aktif hale getiriyor.
- `indent on` girintilemeyi sağlıyor.
- `set sw=4` tab tuşunun kaç boşluk bırakacağını sağlıyor.
- `map <f2> :w\| !python % <cr>` f2 ye basılınca python kodu çalışır.

**Not:** Bu ayarlar vim'den de yapılabilir buradaki amaç sürekli lazım olan ayarları .vimrc adında dosyaya kaydedip , ulaşmaktır...

