---
layout: post
title: Fiziksel Makineyi Sanal Makineye Çevirme (Proxmox)
---

#Yapılacak İşlemler

<li><a href="#livecd">Fiziksel Makineyi Ubuntu Live cd ile Çalıştır</a></li>
<li><a href="#gerekli">Gerekli Programlar Kur</a></li>
<li><a href="#secim">Partitions'lar İncelenerek Seçim Yap</a></li>
<li><a href="#yedekal">Yedek Al</a></li>
<li><a href="#yedekkopyala">Yedeği Başka Bir Makineye Kopyala</a></li>
<li><a href="#sanalolustur">Sanal Makineyi Oluştur</a></li>
<li><a href="#diskparcala">Sanal Diski Parçala</a></li>
<li><a href="#geriyukle">Yedeği Geri Yükle</a></li>
<li><a href="#grub">Grub'ı Yükle</a></li>

---


### <a id="livecd"> Fiziksel Makineyi Ubuntu Live cd ile Çalıştır</a>
İlk olarak fiziksel makineyi ubuntu live cd ile boot ediyoruz .

**Not:** Ubuntuyu kurmuyoruz `ubuntu'yu dene` diyerek çalıştırıyoruz.

---

### <a id="gerekli">Gerekli Programları Kur</a>


Bu işlemi yapmak için `fsarchiver` programını kurmamız lazım . Program kurmak içinse `sources.list`deki  `universe depolarının` yorum satırlarını kaldırmamız gerekiyor.

    sudo gedit /etc/apt/sources.list

`universal depolardaki` yorum satırlarını kaldırdıktan sonra `fsarchiver` programını kuralım .

    sudo apt-get update
    sudo apt-get install fsarchiver

---


### <a id="secim">Partitions'lar İncelenerek Seçim Yap</a>

Daha sonra disk/partitions'lara bakmamız lazım . Bunun için şu komutu kullanıyoruz :

    sudo fsarchiver probe simple

Bu komutun çıktısı bir tablo dönecektir .

    [======DISK======] [=============NAME==============] [====SIZE====] [MAJ] [MIN]
    [vda             ] [RED HAT VIRTIO SCSI DEVICE     ] [    15.00 GB] [  8] [  0]

    [=====DEVICE=====] [==FILESYS==] [======LABEL======] [====SIZE====] [MAJ] [MIN]
    [loop0           ] [squashfs   ] [<unknown>        ] [   671.85 MB] [  7] [  0]
    [vda1            ] [ntfs       ] [System           ] [    15.00 GB] [  8] [  1]
    [ramzswap0       ] [swap       ] [<unknown>        ] [   248.47 MB] [251] [  0]

**Not:**Sizdeki çıktı burdaki gibi olmayabilir.Çünkü disk yapınız farklı olacaktır .


### <a id="yedekal">Yedek Al</a>

Yukarıdaki komutun çıktısına göre hangi partitions'un yedeğini alacaksan onun adını öğreniriz.(tablodaki device kısmına bakın)

Aşağıdaki komutta dikkat edilmesi gereken şey, ilk yolun **hazırlanacak yedeğin** yolunun olduğu , ikinci yol ise **hangi partitions'ın yedeği**nin alınacağı olduğudur.

    sudo fsarchiver savefs -v -o ~/physical.fsa /dev/sda1

---

### <a id="yedekkopyala">Yedeği Başka Bir Makineye Kopyala </a>

Başarıyla yedek alındıysa bunu şimdi o makineden başka bir yere almamız lazım .

scp ile kendi makinemize aldığımızı farzediyorum...

    scp yedegin_oldugu_ip:~/physical.fsa kendi_makinemizin_ip:~

Sorunsuz şekilde yedek alındıysa proxmox'daki işlemlerimize geçilebilir...

---

### <a id="sanalolustur"> Sanal Makineyi Oluştur </a>

İlk önce `proxmox`'da bir sanal makine oluşturulur . ubuntu'nun iso'su ile boot edilir .

sanal makinenin disk tipi ise `virtio` seçilmelidir .

Bunları yaptıktan sonra sanal makinemizi çalıştırabiliriz.

Sanal makineye ubuntu kurmadan başlangıçta` ubuntu'yu dene` diyerek açıyoruz .

---

### <a id="diskparcala"> Sanal Diski Parçala </a>

Şimdi oluşturulan sanal diski `gparted` ile parçlamamız lazım .

Bunun içinse ilk önce gparted programını yüklememiz lazım. Yazının başında belirttiğim `universal depo`ların yorum satırlarını kaldırıp ;

    sudo apt-get install gparted

diyoruz.

`sudo gparted` ile programı çalıştırıyoruz .

`aygıt --> bölüm tablosu oluştur` diyerek bölüm tablosu oluşturulur .

Daha sonra yeni bölüm oluştur diyerek `ext4` tipinde başlangıç noktası `/` olan istenilen boyutta bir partitions yaratılır.

**Not:**Bu işlem biraz zaman alabilir.

---

### <a id="geriyukle"> Yedeği Geri Yükle </a>

Önceden alınan yedeğimizi `scp` ile bu sanal makineye atarız .

    scp kendi_makinemizin_ip:~/physical.fsa ~ # sanal makinede bu işlemi uyguluyoruz.

Daha sonra aşağıdaki komutu uyguluyoruz .

    sudo fsarchiver restfs -v ~/physical.fsa id=0,dest=/dev/vda1

Bu işlem de başarıyla uygulanmışsa artık `fiziksel makine`yi `sanal makine`ye çevirdik demektir.

---

### <a id="grub"> Grub'ı Yükle </a>

Geriye kalan tek şey grub'ı yapılandırmamış olmamız.Makine hala işletim sisteminin disk'in neresinde olduğunu bilmiyor.

Bu sorunu halletmek için şöyle yapıyoruz :

Sanal diskimizi bir yere `mount` ediyoruz .

    sudo mkdir /mnt/vd
    mount /dev/vda1 /mnt/vd

`grub-install` komutuyla MBR'ı hangi diskte oluşturacağını (/dev/vda) ve MBR kaydında kopyalayacağı imajı nereden (hangi root dizinindeki /boot/grub'tan ) alacak (/dev/vda) onu söylüyoruz .

Uygulanacak komutumuz şu halde olmalı :

    grub-install --root-directory=/mnt/vd /dev/vda

Şimdi makinemizi yeniden başlatarak kurulumun başarılı geçtiğini teyit edebiliriz .

---

İşte fizikselden sanal makineye çevirme bu kadar :)

