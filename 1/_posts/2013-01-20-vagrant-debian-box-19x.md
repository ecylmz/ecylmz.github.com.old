---
layout: post
title: 'Vagrant Debian Box - 19x'
---

Vagrant ile kendi çalışma ortamımı içeren bir "kutu" hazırladım.  
Bu kutunun içerisinde ruby1.9.3, pek çok gem, pek çok vim eklentisi  
ve daha neler neler. Tam bir sürpriz yumurta, pardon kutu :)

Bunu kullanmanız için yapmanız gerekenler sadece şunlar:

Hepsinden önce VirtualBox'ın kurulu olması gereklidir.  
Sonrasında ise aşağıdaki komutları komut satırına yazmanız gerekmektedir:

        $ sudo gem install vagrant
        $ vagrant box add debian19x http://dl.dropbox.com/u/54847708/boxes/debian19x.box
        $ mkdir debian19x; cd debian19x
        $ vagrant init debian19x
        $ vagrant up
        $ vagrant ssh

Kullanıcı Adı    : vagrant  
Kullanıcı Parola : vagrant  
Root Parola    : vagrant  

