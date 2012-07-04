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

- İstenilen sunucuların hepsinde, aynı işlemi tek bir kod'la yapmak mümkündür.

  Ör: Sunucu güncelleştirmeleri, önemli bir paket kurulumu vs ...

---

# Mimari Şema

![chef-basics-nwc](media/chef-basics-nwc.png)

- cookbook
- node'lar run_list'lerindeki görevleri çalıştırır.
- node'ların rolleri ve özellikleri vardır.
- sunucu ve istemci knife üzerinden haberleşiyorlar

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
