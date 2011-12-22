---
layout: post
title: vim'de sözdizimi denetimi
---

vim'de yazdığınız bir kodu, kaydettiğiniz anda sözdizimi denetimi yapmasını sağlamak için aşağıdaki adımlar izlenmelidir...

- ayrıntılı C sentaks denetimi için (aşağıdaki eklentinin gerektirdiği)
 splint paketini kur:

       sudo apt-get install splint

- checksyntax eklentisini indir:

       wget -O checksyntax.vba.gz 'http://www.vim.org/scripts/download_script.php?src_id=11435'

- kur:

       vim -c 'source %' checksyntax.vba.gz

- ~/.vimrc'ye şu ayarları ekle:

       let g:checksyntax_auto_ruby = 1
       let g:checksyntax_auto_php  = 1
       let g:checksyntax_auto_javascript  = 1
       let g:checksyntax_auto_c = 1

artık bu noktadan sonra C dosyasını her kayedettiğinde otomatik olarak
söz dizimi denetimi de yapılacak.

