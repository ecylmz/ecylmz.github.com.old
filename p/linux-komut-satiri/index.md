# Linux Komut Satırı

.fx: first

Emre Can Yılmaz `<ecylmz@bil.omu.edu.tr>`

[http://ecylmz.com/](http://ecylmz.com/)

![tux](media/tux.png)

Şubat 2012

----

# Unix ve GNU / Linux Komut Satırı

---

# İçerik (1)

Shell, dosya sistemi, dosya işlemleri

- Her şey dosyadır
- GNU / Linux dosya sistemi yapısı
- Dosya ve dizinler işlemleri
- Dosya görüntüleme, arama ve sıralama
- Sembolik ve hard link
- Dosya erişim hakları

----

# İçerik (2)

Standart I/O, yönlendirmeler, boru hatları

- Standart giriş ve çıkış, dosyalara yönlendirme
- Boru hattı: standart çıkışı diğer komutlara yönlendirme
- Standart hata

---

# İçerik (3)

Görev Kontrol

- Görevler üzerinde tam kontrol
- Arkaplanda çalıştırma, askıya alma, devam ettirme, durdurma
- Aktif görevleri listeleme
- İşlem öldürme
- Çevre değişkenleri
- PATH çevre değişkeni
- Shell alias'ları, .bashrc dosyası

---

# İçerik (4)

- Metin editörleri
- Sıkıştırma ve arşivleme
- Dosyaları yazdırma
- Dosya ve dizin karşılaştırma
- Dosya arama
- Kullanıcılar hakkında bilgi almak

---

# İçerik (5)

Temel sistem yönetimi

- Dosya sahipliği
- Ağ yapılandırması
- Dosya sistemleri: oluşturma ve bağlama
- Yardım alma, man sayfalarına erişim
- Kaynaklar için internette arama yapma

---

# Unix Dosya Sistemi

---

# Her şey Dosyadır

Unix'te neredeyse her şey bir dosyadır!

- Düzenli dosyalar
- Dizinler (dosyaları dinlemek üzere set edilmiş dosyadır.)
- Sembolik linkler (dosyalara referans gösterir)
- Soketler
- ...

---

# Dosya İsimleri

Dosya isimlerinin özellikleri Unix'ten beri aynıdır.

- Küçük/Büyük harfe duyarlı
- Dosya isimleri uzunluğunun sınırı yoktur.
- İsimlerde her karakteri kullanılabilir. (boşluk içeriyorsa / ile kaçış yapılır. Dosya uzantısına ihtiyaç duyulmaz, sadece kullanıcı kolaylığı için koyulur.
- Dosya isimleri Örnekleri:
README  .bashrc  index.html  index.html.old

---

# Dosya Yolları

Path (Yol), bir dosyayı ya da dizini "/" karakteri ile ayrıyan iç içe geçmiş sıralı dizindir.
- Bağıl yol: documents/fun/microsoft_jokes.html geçerli dizine bağlıdır.
- Mutlak yol: /home/bill/bugs/crash9402031614568
- /: root directory. 
Sistemdeki tüm dosyaların mutlak yollarının başladığı dizin. (taşınabilir aygıtlar ve ağ paylaşım dosyaları dahil.)

---

# GNU / Linux dosya sistemi yapısı (1)

Sistem tarafından dayatılmaz.

/		kök dizini(root directory)
/bin/		temel, gerekli sistem komutları
/boot/		Kernel imajları, tanımlama ve yapılandırma dosyaları
/dev/		aygıtları temsil eden dosyalar
		/dev/hda: birinci IDE hard diski
/etc/		sistem yapılandırma dosyaları
/home/		kullanıcı dizinleri
/lib/		paylaşılan temel sistem kütüphaneleri

---

# GNU / Linux dosya sistemi yapısı (2)

/lost+found	sistemde kurtarılmaya çalışılan değiştirilmiş dosyalar
/media		taşınabilir medya için bağlanma noktaları
		/media/usbdisk, /media/cdrom
/mnt/		geçici olarak bağlı dosya sistemlerinin bağlanma noktaları
/opt/		sysadmin tarafından güncellenmiş özel araçlar
		/usr/local/ genellikle kullanılır
/proc/		Sistem bilgisine erişim
		/proc/cpuinfo, /proc/version
/root/		root kullanıcı ev dizini
/sbin/		sadece administrator komutları
/sys/		sistem ve aygıt kontrolleri
		(cpu frekansı, aygıt gücü, vb.)

---

# GNU / Linux dosya sistemi yapısı (3)

/tmp/		geçici dosyalar
/usr/		düzenli kullanıcı araçları (sistem için gerekli olmayan)
		/usr/bin/, /usr/lib/, /usr/sbin...
/usr/local/	sysadmin tarafından güncellenen özel yazılımlar
		(/opt/ yerine tercih edilir)
/var/		sistem ya da sistem sunucuları tarafından kullanılan veri
		/var/log/, /var/spool/mail (gelen posta), /var/spool/lpd (yazdırma işleri)...

Unix Dosya sistemi yapıları, Dosya Sistemi Hiyerarşi Standartları(FHS) tarafından tanımlanmıştır.
http://www.pathname.com/fhs/

---

# Shell ve dosya kullanımı

---

# Komut satırı kılavuzu

- Shell (Kabuk): kullanıcının komutlarını yürüten araç
- Kabuğunun altında bir işletim sisteminin detaylarını sakladığı için "shell(kabuk)" olarak adlandırılmıştır.
- Komutlar bir metin terminali, grafiksel çevreli bir pencere ya da sadece bir konsoldan girilir.
- Sonuçlar terminal ekranında da gösterilir. Her şey için grafiklere ihtiyaç yoktur.
- Shell, kompleks programları (değişken, şartlı, tekrarlı...) yazmak için tüm kaynakları sağlayabilir.

---

# İyi bilinen kabuklar

En çok tanınan ve popüler kabuklar

- sh: Bourne'nun shell'i
Steve Bourne tarafından oluşturulmuş Unix sistemlerindeki geleneksel, temel shell
- csh: C shell
Bir zamanlar popüler, C-sever sözdizimine sahip shell
- tcsh: TC shell (hala popüler)
Zamanla gelişmiş, C shell'e uyumlu bir shell
- bash: Bourne Again Shell (en popüler)
sh'ın geleceğe dönük geliştirilmiş uygulaması

---

# ls komutu

Mutlak dizinlerdeki dosyaların ("." karakteriyle başlayanlar dışında), alfanümerik sırada listesi.
- ls -a (all)
tüm dosyaların listesi (.* dahil)
- ls -s (size)
büyüklüğe göre listeleme
- ls -l (long)
uzun listeleme (tip, tarih, boyut, sahip, izinler)
- ls -r (reverse)
ters sırada listeleme
- ls -ltr
dosyaların son haline göre uzun listeleme
- ls -t (time)
dosyaları son kullanıma göre listeleme

---

# Dosya adı paterni değişiklikleri

- ls *txt
sonu txt (.txt dahil) ile biten tüm dosya ve dizinleri *txt ile değiştir, "." ile başlayanlar dışında, ls komut satırı ile gelenleri çalıştırır.
- ls -d .*
"." ile başlayan tüm dizinleri ve dosyaları listeler. -d, ls ile dizin içeriklerini görüntüler.
- cat ?.log
1 karakterden oluşan tüm dosya isimlerini gösterir.

---
# Özel Dizinler (1)

./
- Mutlak dizin. Bir dizin argümanı alan komutlar için yardımcıdır. 
Bazen de mutlak dizinde komutların çalıştırılmasını sağlar. (daha sonra anlatılacak)
- Bu sebeple ./readme.txt ve readme.txt eşdeğerdir.
../
- Ebeveyn (ilişkili) dizin. Genellikle . dizinine aitdir (bkz: ls -a). Sadece ebeveyn dizini refere eder.
- Tipik kullanımı: cd ..

---

# Özel Dizinler (2)

~/
- Aslında özel bir dizin değildir. Shell'de mutlak kullanıcının ev dizini yerine kullanılır.
- Gerçek bir dizin olmadığından, bir çok programda kullanılamaz.
~sydney/
- Benzer olarak, shell'de **sydney** kullanıcının ev dizini yerine kullanılır.

---

# cd ve pwd komutları

- cd <dir>
<dir> için mutlak dizini değiştirir.
- cd -
Önceki mutlak dizine geri döner.
- pwd
Mutlak dizini ("çalışılan dizini") gösterir.

---

# cp komutu

- cp <source_file> <target_file>
Kaynak dosyayı hedef dosyaya kopyalar.
- cp file1 file2 file3 ... dir
Dosyaları hedef dizine (son argüman) kopyalar.
- cp -i (interaktif)
Hedef dosya zaten varsa kullanıcı onayı için sorgular.
- cp -r <source_dir> <target_dir> (özyineleme)
Tüm dizinleri kopyalar.

---

# rsync ile akıllı dizin kopyası

**rsync** (remote sync), sync iki makine arasındaki dizinleri düşük bantgenişliği bağlantısı tutarak düzenler.
- Sadece kopya dosyaları değiştirilebir. Dosyalar karşılaştırılarak aynı dosya boyutuna sahip olması sağlanır.
- Transfer sadece farklı bir dosya ise engellenir!
- Sembolik linkler ve dosya izinleri korunur: bu, aynı makinede kopyalar için çok kullanışlıdır.
- ssh ile çalışılabilir. Örneğin, bir websitesi için içerikleri güncellemek kolaylaşır.

---

# rsync örnekleri (1)

- rsync -a /home/arvin/sd6_agents/ /home/sydney/misc/
**-a**: arşiv modu. Hemem hemen her şeyi korumak ve özyineleme yapmak istediğimizde bunu basitçe **-rlptgoD** ile sağlarız.
- rsync -Pav --delete /home/steve/ideas/ /home/bill/my_ideas/
**-P**: **--partial** (transfer edilen dosyaları kısmi olarak tutar) ve **--progress** (transfer sırasında ilerlemeyi gösterir)
**-- delete**: kaynağı olmayan hedef dosyaları siler.
Dikkat: dizin isimleri / ile sonlanmalıdır. Aksi halde, bir /my_ideas/ideas dizini hedef olur.
---

# rsync örnekleri (2)

- Uzaktaki makineden kopyalama yapmak
rsync -Pav /home/bill/legal/arguments/ bill@www.sco.com: /home/legal/arguments/
bill kullanıcısından bir şifre istecektir.
- Uzaktaki makineden ssh ile kopyalama yapmak
rsync -Pav -e ssh homer@tank.duff.com: /prod/beer/ fridge/homer/beer/
homer kullanıcısı kendi ssh key şifresiyle giriş yapacaktır.

---

# mv ve rm komutları

- mv <old_name> <new_name> (taşı)
Belirlenen dosya ya da dizini yeniden adlandırır.
- mv -i (interaktif)
Dosya zaten varsa, kullanıcı onayı sorar.
- rm file1 file2 file3 ... (kaldır)
Belirlenen dosyaları kaldırır.
- rm -i (interaktif)
Genellikle kullanıcı onayı sorar.
- rm -r dir1 dir2 dir3 ... (özyineleme)
Belirlenen dizinleri tüm içerikleriyle kaldırır.

---

# Dizinleri Oluşturmak ve Kaldırmak

- mkdir dir1 dir2 dir3 ... (make dir)
Belirlenen isimlerdeki dizinleri oluşturur.
- rmdir dir1 dir2 dir3 ... (remove dir)
Belirlenen dizinleri kaldırır.
Güvenli: sadece dizinler boş olduğunda çalışır.
Alternatifi: **rm -r** (dizinlerin boş olması gerekmez)

---

# Dosya İçeriklerini Görüntülemek

Dosya içeriklerini görüntülemenin birkaç yolu vardır.
- cat file1 file2 file3 ... (sıralamak)
Belirlenen dosyaların içeriklerinin çıktılarını sıralar.
- more file1 file2 file3 ...
Her sayfadan sonra, kullanıcın devam etmesi için bir anahtar girmesi istenir.
Anahtar kelimenin (/ komutun) ilk geçtiği yerde bunu atlayabilirsiniz.
- less file1 file2 file3 ...
less ile **more**'dan daha fazlası yapılır.
Tüm dosyaları okumadan başlamaz.
Dosyada (komutta) geriye dönük hareketi destekler.

---

# head ve tail komutları

- head [-<n>] <file>
Belirtilen dosyadaki ilk n satırı (öntanımlı olarak 10) görüntüler.
Tüm dosyaları açmak için bunu yapamaz!
- tail [-<n>] <file>
Belirtilen dosyadaki son n satırı (öntanımlı olarak 10) görüntüler.
RAM'deki tüm dosyaları yüklemeye ihtiyacı yoktur. Büyük dosyalar için kullanışlıdır.
- tail -f file (follow)
Belirtilen dosyadaki son 10 satırı görüntüler ve dosyaya eklenen yeni satırları görüntülemeye devam eder.
Örneğin, log dosyasındaki değişiklikleri bu şekilde takip etmek çok kolaydır.
- Örnekler
head windows_bugs.txt
tail -f outlook_vurnerabilities.txt

---

# grep komutu

- grep <pattern> <files>
Belirtilen dosyayı tarayarak paternle eşleşen satıları görüntüler.
- grep error *.log
*.log dosyasındaki tüm hata içeren satırları görüntüler.
- grep -i error *.log
Benzer olarak, harf büyüklüğüne duyarlı değildir.
- grep -ri error .
Benzer şekilde, tüm dosyalardaki ve . alt dizinindeki yinelemeliler
- grep -v info *.log
Dosyada bilgi içerenler dışındaki tüm satırların çıktıları

---

# sort komutu

- sort <file>
Verilen dosyadaki satırların karakter sırası ve bunların çıktılarını ayıklar.
- sort -r <file>
Aynısı, ters sıralı olarak.
- sort -ru <file>
**u**: unique (eşsiz). Benzer şekilde işler, ama aynı çıktılar tekrarlanmaz.
- Daha sonra açıklanacak pek çok olanak sağlar!

---

# Sembolik Linkler

Sembolik link, bir başka dizini ya da dosyayı refere eden özel bir dosyadır.
- Aynı dosyanın 2 kere varolmasından kaynaklanan karışıklığı ve disk kullanımını azaltır.
- Örneğin;
anakin_skywalker_biography -> darth_vador_biography
- Sembolik linkler nasıl belirlenir:
- ls -l görüntüleme -> bağlı dosyanın adı
- GNU ls ile linkler farklı renklerde görüntülenir.

---

# Sembolik Linkler Oluşturmak

- Bir sembolik link oluşturmak için (cp'de aynı sırada):
ln -s file_name link_name
- Aynı isimle başka bir dizinde bir dosya için link oluşturmak için:
ln -s ../README.txt
- Verilen dizinde tek seferde çoklu link oluşturmak için:
ln -s file1 file2 file3 ... dir
- Bir linki kaldırmak için:
rm link_name
Tabiki, bu bağlantılı dosyayı kaldırmaz!

---

# Hard Linkler

- ln 'in öntanımlı davranışı hard linkler oluşturmaktır.
- Hard link, tam olarak aynı fiziksel içeriğe sahip düzenli bir dosyadır.
- Aynı yere kaydedildiklerinde, hard linkler orininal dosyalardan ayrılamaz.
- Orijinal dosyayı kaldırdığınızda, bu hard link içeriğini etkilemez.
- Çok fazla dosya (hard link) olduğunda, içerikler kaldırılır.

---

# Dosya Adları ve İnode

Hard ve sembolik linkleri anlaşılması kolay yapar!

![link](media/link.png)

---

# Dosya Erişim Hakları

Dosya erişim haklarını kontrol etmek için ls -l kullanılır.

3 tip erişim hakkı vardır:
- Okunabilir (r)
- Yazılabilir (w)
- Çalıştırılabilir (x)

3 tip erişim seviyesi vardır:
- Kullanıcı (u): dosyanın sahibi
- Grup (g): her dosyada "grup" davranışı vardır, kullanıcı listesiyle ilişkili
- Diğer (o): tüm diğer kullanıcılar

---

# Erişim hakkı sınırları

- x, r olmadan yasaldır ancak bi işe yaramaz.
Çalıştırılabilir olması için bir dosyanın okunabilir olması gerekir.
- x ve r'nin ikisi de dizinlere ihtiyaç duyar:
x, girmek; r içerikleri listelemek için.
- Bir dizinde w hakkınız yoksa; yeniden adlandıramaz, kaldıramaz ve dizinden bir dosya kopyalayamazsınız.
- Bir dizinde w erişiminiz varsa; bir dosyaya yazma erişiminiz olmasa bile, dosyayı kaldırabilirsiniz (dizinin, dosyaların listesini tutan bir dosya olduğunu unutmayın). Bu bir dosyaya w erişiminiz olmasa bile onu değiştirmenizi (kaldırmak- canlandırmak) sağlar.

---

# Erişim Hakları Örnekleri

- -rw-r--r--
Sahibi tarafından okunabilir ve yazılabilir, diğerleri için sadece yazılabilir dosya
- -rw-r-----
Sahibi tarafından okunabilir ve yazılabilir, dosyanın grubuna ait kullanıcılar içn sadece okunabilir dosya
- drwx------
Sadece sahibi tarafından erişilebilir dizin
- -------r-x
Diğerleri tarafından çalıştırılabilir, fakat siz ve sizin arkadaşlarınız tarafından hiçbiri olmayan dosya. Tuzak için güzel bir koruma!

---

# chmod: değişen izinler

- chmod <permissions> <files>
İzinlerde 2 format vardır:
- Sekizlik format (abc):
a,b,c = r*4+w*2+x (r,w,x: boolean)
Örnek: chmod 644 <file>
(u için r,w; o ve g için r)
- Sembolik format; kolay anlaşılması için örnekler:
chmod go+r: grup ve diğerlerine okuma izni ekle.
chmod u-w: kullacının yazma iznini kaldır.
chmod a-x: (a: hepsi) tüm çalışma izinlerini kaldır.

---

# Daha fazla chmod (1)

chmod -R a+rX linux/
**linux** ile herkes her şeyi yapabilir!

- R: yinelemeli değişiklikleri uygula
- X: x gibi, ama sadece çalıştırılabilir dosyalar ve dizinler için. Tüm dosyalarda çalıştırılabilir hakkı olmadığında, dizinler için erişimleri özyineli olarak açmayı sağlar.

---

# Daha fazla chmod (2)

chmod a+t /tmp
- t: (sticky). Dizindeki bir dosyayı silmek için, sadece dosya ve dizin sahibinin sahip olduğu özel izin.
- Herhangi birinin dizinler için yazma izni, /tmp gibi.
- ls -l tarafından t karakteriyle görüntülenir.

---

# Unix ve GNU/ Linux komut satırı

Standart I/O, yönlendirmeler, boru hatları

---

# Standart Çıktı

Komut çıktısı hakkında
- Tüm komutların çıktısı, standart çıktı tarafından terminalinize yazılır.
- Standart çıktı > sembolünü kullanarak bir dosyaya yazılır (yönlendirilir).
- Çalıştırılabilir bir dosya için standart çıktıya >> sembolü eklenir.

---

# Standart çıktı yönlendirme örnekleri

- ls ~saddam/* > ~gwb/weapons_mass_destruction.txt
- cat obiwan_kenobi.txt > starwars_biograhpies.txt
cat han_solo.txt >> starwars_biograhpies.txt
- echo "README: No such file or directory" > README
Bir metin editörü olmadan dosya oluşturmanın kolay yolu.
Bu durum için güzel bir Unix esprisi.

---

# Standart Girdi

Komut girdisi hakkında
- Pek çok komut, girdi argümanı verilmediğinde, bunu standart girdiden sağlar.
- sort
windows
linux
[Ctrl] [D]
linux
windows
- sort girdisini standart girdiden alır, bu durumda terminalde yazdıklarınız Ctrl+d tarafından sonlandırılır.
- sort < participants. txt
sort için standart girdi verilen dosyadan alınacaktır.

---
