---
layout: post
title: proxmox yedekleme geri yükleme
---

### Yedekleme (Backup)

Web arayüzünden proxmox admin penline girilip sol menüden `Storage` kısmından
`Add Directory` diyerek backup klasorü oluşturulur. Oluştururken aşağıdaki gibi
resim ekrana gelecektir.

![1](http://ecylmz.com/file/proxmox-backup-1.png)

Sonra sol menüden `Backup` altından `Create new job` denir ve ayarlar yapılır.
Aşağıdaki gibi bir resim ekrana gelecektir.

![2](http://ecylmz.com/file/proxmox-backup-2.png)

Bu ayarlar `/etc/cron.d/vzdump` altına kaydedildi.

### Geri Yükleme (Restore)

KVM 101 makinesinin yedeğini KVM 115 olarak restore etmek için

	qmrestore vzdump-qemu-101.tar.gz 115

