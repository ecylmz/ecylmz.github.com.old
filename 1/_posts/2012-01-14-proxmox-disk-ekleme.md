---
layout: post
title: proxmox disk ekleme
---

Sanal makineyi açtıktan sonra ayarladığınız disk alanı yeterli gelmiyorsa yeni
disk eklemek sorununuza çözüm getirebilir.

### Diski Ekle

Proxmox admin panelinden hangi sanal makineye disk eklenecekse ona girilir.
Menüden Hardware sekmesine tıklanır ve aşağıdaki resimdeki gibi bir ekran
karşınıza gelir.

![1](http://ecylmz.com/file/proxmox-disk-ekleme-1.png)

Buradan resimdeki kırmızı oka tıklanıp `Add a hard disk` linkine tıklanır.

Aşağıdaki resime benzer ekran gelecektir.

![2](http://ecylmz.com/file/proxmox-disk-ekleme-2.png)

Gerekli düzenlemeleri buradan yaptıktan sonra `create` denir.

### Diski Aktif Etmek

Yukarıdaki düzenlemeleri yaptıktan sonra sanal makinenin bu diski görebilmesi
için admin panelinden `stop` deyip sonra tekrar `start` yapmanız gerekmektedir.

### Diski Formatlama ve Bağlama

Disk artık makine tarafından görülmektedir. Bunu kullanacağımız formatta
biçimlendirip gerekli yere bağlamamız gerekmektedir.

Debian üzerinden işlemlere devam ediyorum:

	sudo fdisk -l

ile diskimizin hangi isimde makinede tutulduğunu öğreniyoruz. Ben sdb olarak
isimlendirildiğini kabul ediyorum.

- ext3 formatında biçimlendirelim:

	sudo mkfs -t ext3 /dev/sdb

- Diski nereye bağlayacaksak o klasörü oluştururuz:

	sudo mkdir /opt/sdb

- fstab düzenlenir:

	#
	# Dosya: /etc/fstab
	#
	/dev/sdb /opt/sdb ext3 defaults 1 2

- Reboot etmeden hemen bağlamak istiyorsanız:

	sudo mount -a

ve `/opt/sdb` kullanıma hazır.
