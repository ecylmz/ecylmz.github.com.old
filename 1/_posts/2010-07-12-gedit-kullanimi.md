---
layout: post
title: Gedit Kullanımı
---

### İÇERİK

<li> <a href="#gerekli-eklentiler"> Gerekli Eklentiler ve Kurulumları </a></li>
<li> <a href="#eklenti-aktif"> Eklentileri Aktifleştirmek </a> </li>
<li> <a href="#parçalar"> Sık Kullanılan Parçalar (Bakılması Gerek !) </a> </li>
<li> <a href="#yorum-satırı"> Yorum Satırı Kullanmak </a> </li>
<li> <a href="#oturumu-kaydet"> Oturum Kaydetme (saved sessions) </a> </li>
<li> <a href="#gömülü-terminal"> Gömülü Terminal </a> </li>
<li> <a href="#gömülü-python-konsolu"> Gömülü Python Konsolu </a> </li>
<li> <a href="#satır-girintileme"> Satır Girintileme </a> </li>
<li> <a href="#sözdizimi-renklendirmesi"> Sözdizimi Renklendirmesi </a> </li>
<li> <a href="#quick-open"> Hızlı Dosya Açımı </a> </li>
<li> <a href="#yan-panel"> İşlev ,Klas ve Yan Panel </a> </li>


### <a id="gerekli-eklentiler"> Gerekli Eklentiler ve Kurulumları </a>

Aşağıdaki kurulumların yapılması gerekmektedir ...

- Gedit Markdown :

        wget tiny.cc/gedit-markdown
        unzip gedit-markdown.zip
        gedit-markdown/gedit-markdown.sh installer


ve eksik paketleri kur :

        sudo apt-get install python-gtkhtml2

<a href="#gedit-markdown" > Kullanımı için tıklayınız ...</a>

- gmate :

       sudo add-apt-repository ppa:ubuntu-on-rails/ppa
       sudo apt-get update
       sudo apt-get install gedit-gmate

Bu paketlerle birlikte gelen birçok eklenti bulunmaktadır . Bunların anlatımı zamanla gerçekleştirilecektir .

Bu eklentileri aktifleştirmek için <a href="#eklenti-aktif"> buraya </a> bakın .

- CMYKProjectManager :

       git clone http://github.com/MichaelCereda/CMYKProjectManager.git
       cp -a CMYKProjectManager/CMYKProjectManager* ~/.gnome2/gedit/plugins


### <a id="eklenti-aktif"> Gedit'te Eklenti Aktifleştirmek </a>

Bu kısmın nasıl yapılacağını anlatan görüntü aşağıdaki gibidir ...

Aşağıda eklenti isimlerinin yanlarına tik koyarak/kaldırarak bunları aktifleştirebilir/pasifleştirebilirsiniz ...

<a href="http://ecylmz.com/file/gediteklentikurma.gif" > İzlemek İçin Tıklayınız </a>


### <a id="parçalar"> Sık Kullanılan Parçalar </a>

Gerekli Eklenti : `Parçalar`

Sıklıkla kullanılan metin parçalarını hızlı bir şekilde ekler . En güzel , en faydalı eklentilerin başını çekiyor.

Bu eklentiyi yazıyla anlatmak karışıklık yaratacağı için görüntülü örnekler gerekmektedir .

- `Parçalar` eklentisi aktifleştirildikten sonra aşağıdaki resimde görülen `eklentiyi yapılandır` butonuna tıklanır ...

<img src="http://img821.imageshack.us/img821/716/ekyapilnq8.png" >

- Aşağıdaki resimde ise yazımızıdaki dili seçiyoruz (örnek olarak html seçiyoruz) . Dosya türümüzün aktifleşmesi için türünün önceden belirtilmesi lazım (deneme.py,deneme.php vs ...)

<img src="http://img194.imageshack.us/img194/7516/ekdilsecnq8.png">

- Aşağıdaki resmin sol tarafındaki etiketler bizim html parçalarımız . Bunları uzun uzun yazmadan kısayollarla düzenliyeceğiz .

Örnekte `head` etiketini kullanmak istiyoruz. Bunu kısayoldan şöyle yapabiliriz :

- head yazıp tab tuşuna basarak sağ tarafda yazılanlar ekrana gelir .
- ayrıca sağ altta kısayol tuşuna istediğimiz kısayolu atayabiliriz (örnek : ctrl + y)
- Son olarak sağ tarafda head etiketin içeriğini el ile değiştirebiliyoruz  ya da sol altta `yeni parça oluştur` diyerek kendi parçalarımızı oluşturabiliriz .

<img src="http://img401.imageshack.us/img401/5606/ekdilyapisecnq8.png">


### <a id="yorum-satırı"> gedit'te yazılan satırı yorum satırına çevirme: </a>

Gerekli Eklenti : `Code comment`

bu işlem için `ctrl + m` yapıyoruz .

yorum satırını normal satıra getirmek içinse `shift + ctrl + m` yapıyoruz ...


### <a id="oturumu-kaydet"> Oturumu Kaydetme (saved sessions) : </a>

Gerekli Eklenti : `Session Saver`

Bu özellik sayesinde örneğin aynı anda birden fazla dosya üzerinde çalışmanız gerekebilir . Bu oturumu bir süreliğine kapatmanız gerekebilir(başka bir iş yüzünden).Daha sonra bu dosyalarla tekrar çalışmak isterseniz bunu kaydedebilir , daha sonra açarak kaldığınız yerden kolayca çalışmaya başlayabilirsiniz . Bunu anlamak için örnek gerekebilir .

Dosya --> saved sessions butonuna tıklarsanız bu oturumu kaydedebilir ; daha sonra aynı yerden açabilirsiniz .


### <a id="gömülü-terminal"> gedit'ten çıkmadan terminalde işlem yapmak : </a>

Gerekli Eklenti : `Embedded Terminal`

Bu eklentiyi yukarıda anlatıldığı şekilde etkinleştirirseniz  `ctrl + f9` kısayolunu kullanarak terminali göreceksiniz .


### <a id="gömülü-python-konsolu"> Etkileşimli Python Kabuğu : </a>

Gerekli Eklenti : `Python Konsolu`

Bu eklentiyi yukarıda anlatıldığı şekilde etkinleştirirseniz . `ctrl + f9` kısayolunu kullanarak alttaki sekmelerde göreceksiniz .


### <a id="satır-girintileme"> Satır Girintileme : </a>

Gerekli Eklenti : `Satır Girintileme`

Bu eklentiyle birlikte faydalı bir kısayol oluşacaktır .

`ctrl + t` ile o satırın başına `tab` kadar boşluk bırakır .

Girintilemeyi kaldırmak içinse `shift + ctrl + t` yapılabilir .


### <a id="gedit-markdown"> Gedit Markdown Kullanımı : </a>

Bu eklentiyi yazının başlarında anlattığımız gibi aktifleştirdikten sonra , `ctrl + f9` tuşuna basarak alt paneli açıyoruz .

Sekmelerin birinde `Markdown Preview` vardır . Bu kısım ; yazdığımız markdown 'ın html önizlemesini yapmaktadır .

Bunu yapmak için gerekli kısayol `shift + ctrl + m`

Kısayol çakışması olursa ; bu özelliği aktif hale getirmek için şu yol izlenmelidir :

`Araçlar--> Markdown Preview`

Örnek bir ekran alıntısı :

<img src="http://img682.imageshack.us/img682/3998/markdownprenq8.png" />

### <a id="sözdizimi-renklendirmesi"> Sözdizimi Renklendirmesi : </a>

Gerekli Eklenti : `Quick Highlight Mode`

Bu eklenti yazının başında yaptığımız kurulumlarla birlikte gelmektedir tek yapılması gereken bu eklentinin aktifleştirilmesi...

Yazımızı yazarken istediğimiz sözdizimi renklendirmesini `shift + ctrl + h` kombinasyonuyla yapabiliriz .

### <a id="text-düzenleme"> Text Düzenleme ve Kısayollar : </a>

Gerekli Eklenti : `Text Tools`

Bu eklenti yazının başında yaptığımız kurulumlarla birlikte gelmektedir tek yapılması gereken bu eklentinin aktifleştirilmesi...

- Satırı silmek      : `shift + ctrl + c`
- satırı çoğaltmak   : `shift + ctrl + d`
- Satırı taşımak     : `alt + yukarı` ve `alt + aşağı`
- Kapalı alan seçimi : `ctrl + alt + 9`
- Kelime seçimi      : `alt + w`

### <a id="quick-open"> Hızlı Dosya Açma : </a>

Gerekli Eklenti : `go to file`

Kısayolu : `ctrl + alt + o`

Eğer çakışma durumu varsa benzer eklentileri kaldırmakda fayda var .

### <a id="yan-panel"> İşlev ,Klas ve Yan Panel </a>

Gerekli Eklenti : `gmate`

Eklentiyi aktifleştirdikten sonra `f9` tuşuna basarak yan paneli açıp kapatabilirsiniz .

Yan panelin içeriği ve kullanımını anlatan bir animasyon aşağıdaki gibidir ...

<a href="http://ecylmz.com/file/yanpanel.gif"> İzlemek İçin Tıklayınız </a>

**Not** Yan panel gifi en kısa zamanda yenilenecektir ...

Eksiklerin veya yanlışların bulunması halinde lütfen geri bildiriniz ...

