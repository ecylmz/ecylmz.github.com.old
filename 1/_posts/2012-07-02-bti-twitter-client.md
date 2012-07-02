---
layout: post
title: bti Twitter Client
---

**bti:** Konsoldan twit atmak için kullanılan program.

*Kurulum*

```sh
$ sudo apt-get install bti
```

*Yapılandırma*

- Twitter'dan yeni bir uygulama oluşturulur:

[http://twitter.com/apps/new](http://twitter.com/apps/new)

- Uygulamanın ayar sayfasında okuma ve yazma hakkı verilir.

- ~/.bti dosyası açılır ve içerisine aşağıdaki iki satır eklenir:

    consumer_key=CONSUMER_KEY UYGULAMA_DETAYLARI_SAYFASINDA

    consumer_secret=CONSUMER_SECRET UYGULAMA_DETAYLARI_SAYFASINDA

- bti çalıştırılır ve ekrana link gelir o linkteki pin'i konsola yazılması
  gereklidir.

  pin girildikten sonra bti ekrana access_token_key ve access_token_secret
  değerlerini basar. bu satırları ~/.bti dosyasına ekleyince, sistem çalışır
  duruma geçecektir.
