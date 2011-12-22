---
layout: post
title: wordpress multisite'da engellenen html tagları
---

wordpress multisite'da alt sitelerin yöneticileri ve editörleri, güvenlik
gerekçesiyle yazılarda tehlikeli olabilecek html taglarını koyamıyorlardı.

yönetici ve editörlere bu izni vermek için gerekli eklenti `unfiltered-mu`.
[http://wordpress.org/extend/plugins/unfiltered-mu](http://wordpress.org/extend/plugins/unfiltered-mu) buradan eklentiyi indirebilirsiniz.

`/wp-content/plugins` dizini altına eklentiyi koyup, admin panelinden eklentiyi
`ağ için etkinleştir` yapıyoruz.

**not:** bu eklenti sadece multisite içindir.

**uyarı:** eklenti sitesinde de ciddi uyarılar yapılmıştır. güvenlik
gerekçesiyle bazı taglar engellendiği için bunlara izin vermek, güvenilmeyen
kullanıcıların siteye javascript kodları ekleyerek kötü amaçlar doğrultusunda
kullanıp, siteyi hack edebilme ihtimali vardır.
