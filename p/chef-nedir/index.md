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

- Chef, ruby ile işlemin nasıl yapılacağı tarif edilirek sistem yönetimi imkanı sağlar.
- Bu tarifler "cookbooks" olarak isimlendirilmiştir.

---

# Chef ile Yapılabilecekler

- Sistemleri kod yazarak yönet
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

---

# Mimari Şema

![chef-basics-nwc](media/chef-basics-nwc.png)

- node run_list
- node roles ve attributes
- knife üzerinden haberleşiyorlar

---

# Kaynak

![chef](media/chef-logo.png)

[http://wiki.opscode.com/display/chef](http://wiki.opscode.com/display/chef)
