---
layout: post
title: nginx, rails ve thin
---

Bu yazıda rails uygulamalarının sunucuda nasıl çalıştırılacağı
anlatılmaktadır.

### thin kurulumu

    sudo gem install thin

### rails uygulamasını oluşturma

/home/ecylmz dizinindeyiz...

    rails new foo

### thin ayarları

- uygulama dizinine geçelim:

    `cd /home/ecylmz/foo`

- konfigurasyon dosyasını üretelim:

    `sudo thin config -C /etc/thin/foo.yml -c /home/ecylmz/foo/  --servers 3 -e production`

- üretilen dosyayı kendimize göre düzenleyelim:

    `vim /etc/thin/railsapp.yml`

şuna benzer bir dosya gözükecektir:

    pid: tmp/pids/thin.pid
    log: log/thin.log
    timeout: 30
    max_conns: 1024
    port: 3000
    max_persistent_conns: 512
    chdir: /home/ecylmz/foo
    environment: production
    servers: 3
    address: 0.0.0.0
    daemonize: true

### uygulamayı çalıştıralım

- çalıştırmak için (uygulama dizinine geçildikten sonra):

    `thin start`

burada uygulamayı durdurmak için `ctrl-c` kombinasyonu kullanılır.

- arka planda çalıştırmak için:

    `thin start -d`

- uygulamayı durdurmak için:

    `thin stop`

### nginx ayarları

<script src="https://gist.github.com/1108878.js"> </script>

**Uyarı:** yukarıdaki ayarlarda `ecylmz` kullanıcı dizinini, `foo` ise
rails uygulamasının adını göstermektedir.

Eğer 3 thin çalıştıracaksanız; 3000, 3001, 3002 portlarını da yazmalısınız:

    upstream rails.ecylmz.com {
            server 127.0.0.1:3000;
            server 127.0.0.1:3001;
            server 127.0.0.1:3002;
    }

Ayarları da girdikten sonra yeniden başlatalım:

    sudo /etc/init.d/nginx restart

---

### Gerekli Olabilecek Bilgiler:

Gemlerin versiyonlarda sorun çıkartması durumunda, gemlerin bazı versiyonlarını
kaldırmak zorunda kalabilirsiniz;

- önce versiyonları görelim:

    `sudo gem list gem-adı`

- şimdi ise kaldıralım:

    `sudo gem uninstall gem-adı -v sürüm`


### Yararlanılan Kaynaklar ve Detaylı Bilgi İçin:

[nginx-rails-thin](http://articles.slicehost.com/2008/5/27/ubuntu-hardy-nginx-rails-and-thin)

[thin web server](http://articles.slicehost.com/2008/5/6/ubuntu-hardy-thin-web-server-for-ruby)
