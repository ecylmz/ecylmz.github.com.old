---
layout: post
title: debian ve ubuntu altında c sharp kodu derleme
---

**Kurulum**

    $ sudo apt-get install mono-devel monodevelop

**Hello World uygulaması**

herhangi bir editörle hello.cs adında dosya açılıp içine alttaki kodlar yazılır:

<script src="https://gist.github.com/832636.js"> </script>

derlemek için alttaki komut verilir :

    $ mono-csc hello.cs

aynı dizinde hello.exe adında dosya oluşacaktır. bunu çalıştırmak için :

    $ ./hello.exe

**grafik arayüzünde çalışmak isteyenler için :**

`Uygulamalar => Programlama => MonoDevelop` yolunu takip ederek program açılabilir.

Hello World uygulaması oluşturmak için aşağıdaki linkte bulunun screencast yardımcı olacaktır.

[MonoDevelop](http://ecylmz.com/file/monodevelop.gif)
