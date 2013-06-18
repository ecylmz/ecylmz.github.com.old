---
layout: post
title: 'Nginx Sistem Bakımda Sayfası'
---

Nginx'te özel bir sistem bakımda sayfası eklemek için:

**Adım #1:  Özel 503 Sayfası Oluştur**

        <html>
        <head>
        <title>Error 503 Service Unavailable</title>
        </head>
        <body>
        <h1>503 Service Unavailable</h1>
        Our apologies for the temporary inconvenience. The requested URL
        generated 503 "Service Unavailable" error due to overloading or
        maintenance of the server.
        </body>
        </html>

**Adım #2:   Nginx Ayarlarını Güncelle:**

`/etc/nginx/nginx.conf` dosyasını düzenle:

        # vim /etc/nginx/nginx.conf

Aşağıdaki satırları ekle:

        if (-f $document_root/error503.html) {
                return 503;
        }
        error_page 503 @maintenance;
        location @maintenance {
                rewrite ^(.*)$ /error503.html break;
        }

Dosyayı kaydet ve kapa. Nginx'i yeniden başlat:

        # service nginx reload

