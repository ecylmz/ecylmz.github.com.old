---
layout: post
title: SystemRescueCd ve USB Bellek Üzerine Kurulumu
---

**SystemRescueCd Nedir, Ne İşe Yarar ?**

Anladığım kadarıyla ne işe yaradığını söyleyeyim :

- Sistem çöktü ve dosylarınızı mutlaka almanız lazım .
- Disk bölümleme sırasında grub'ı uçurdunuz .
- windows makinenizin parolasını unuttunuz .

Bu tür işlemleri kolaylıkla SystemRescueCd ile yapabilirsiniz.

**SystemRescueCd'de bulunan sistem-araçları , kurtarma araçları listesine ve bu araçların ne iş yaptıklarına aşağıdaki linkten ulaşabilirsiniz .

[Tıkla](http://www.sysresccd.org/System-tools)

**Kurulum için Gereklilikler **

- **SystemRescueCd imajı **

İmaj [bu](http://www.sysresccd.org/Download) linkten indirilmelidir .

- **USB Bellek**

Anlatılan bu kurulumu yapmak için bu araç şart :)


**Kurulum**

- Öncelikle indirdiğimiz iso imajını istediğimiz klasore mount ediyoruz .

        mkdir -p /tmp/cdrom
        mount -o loop,exec /indirilen_dosya/yolu/systemrescuecd-x86-x.y.z.iso /tmp/cdrom

- Usb belleğimizi bilgisayarımıza takıyoruz . Burada otomatik mount etmemesi lazım . Genelde de otomatik mount edilir .

        cd /media

diyerek usb belleğinizin orada hangi isimle mount edildiğini öğrenin (sadece rakamlarla da olabilir isimle de olabilir .)

    umount /media/usb-bellek-adı

- şimdi kurulum betiğimizi çalıştıralım :

        cd /tmp/cdrom
        bash ./usb_inst.sh

bu işlem biraz vakit alabilir . Bu da başarılıysa işlem tamam demektir .

Şimdi makinemizi yeniden başlatıp eğer BIOS ayarları yapılmamışsa boot seçeneklerimize usb belleği de ekleyip  usb bellekten boot etmesini sağlayabiliriz .

Ekrana alttaki resimdeki gibi bir grafik gelmelidir .

![açılış](http://www.sysresccd.org/images/sysresccd-003-640x480.png)

---

Ekran gayet anlaşılır . Ne yapmak istersek seçmemiz yeterli .

Mesela resimde gözüken 6. seçeneği seçerseniz size bir konsol ekranı gelecektir .

Ben grafik ekran istiyorum arkadaş diyorsanız .
`wizard` yazıp ekrana gelen ilk seçeneği enter'la geçin...

Bu araç `gentoo` işletim sistemini kullanmaktadır.

---

Resimde görülen en alttaki seçenek `Boot from second hard disk` ise hard diskimizden boot etmemizi sağlıyor .

---

Daha fazla ekran görüntüsü için [tıklayınız.](http://www.sysresccd.org/Screenshots)

---

**Not :Bu dökümanı kullanacaksanız sıksık ziyaret etmenizi öneririm çünkü pek çok şey daha eklenecektir . Hata varsa düzeltilecektir.**

