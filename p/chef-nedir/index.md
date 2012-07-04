# Chef Nedir?

.fx: first

Emre Can Yılmaz `<ecylmz@bil.omu.edu.tr>`

[http://ecylmz.com/](http://ecylmz.com)

![chef](media/chef-logo.png)

Temmuz 2012

---

# Chef Nedir?

---

# Chef

- Sistem yönetimini kolaylaştırmayı hedefleyen, merkezi bir sistem tarafından
  yönetilme amacıyla yazılmış açık kaynaklı bir yazılımdır.

---

# Chef ile Yapılabilecekler

- Sistemleri kod yazarak yönetme imkanı sağlar.
- "Search" özelliği ile sunucular içinde özelliğine göre arama yapar.
  Ör: Hangi uygulamanın hangi sunucu üzerinde olduğu hakkında
  bilgi verir.
- Kütüphaneleri sayesinde mevcut uygulamalarla entegre şekilde çalışır. Nginx, MySQL ...

---

# Neden Chef?

- Tekrar edilen işlemleri azaltır.
- İşler otomatize edildiği için, harcanan süre azalır.

  Ör: nginx kurulumu, rails sunucu kurulumu vb...

- İstenilen sunucuların **hepsinde**, aynı işlemi tek bir kod'la yapmak mümkündür.

  Ör: Sistem saatinin 1 saniye ileri alınması, sunucu güncelleştirmeleri, önemli bir paket kurulumu vs ...

---

# Mimari Yapı

![chef-basics-nwc](media/chef-basics-nwc.png)

- Yazılan her işe cookbook adı verilmektedir ve bunlar sunucuda durmaktadır.
- Node'lar run_list'lerindeki görevleri çalıştırır.
- Node'ların rolleri ve özellikleri vardır.
- Sunucu ve istemci knife üzerinden haberleşiyorlar

---

# Chef'in Puppet'dan farklılıkları

- Yapılandırma Ruby ile yazılıyor. Nadiren DSL kullanılır.
- Çok basit bir DSL yapısı vardır.
- Mevcut alt yapıyla uyumlu bir şekilde çalışır.
- Chef ile hazırlanan "tarifler" kanonik değildir. Değişkenler sayesinde bir çok
  chef istemcide çalışabilir.

---

# Kaynak

![chef](media/chef-logo.png)

[http://wiki.opscode.com/display/chef](http://wiki.opscode.com/display/chef)
