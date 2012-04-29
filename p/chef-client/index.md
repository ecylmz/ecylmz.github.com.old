# Chef-Client

.fx: first

Emre Can Yılmaz `<ecylmz@bil.omu.edu.tr>`

[http://ecylmz.com/](http://ecylmz.com)

![chef](media/chef-logo.png)

Nisan 2012

---

# Client Kurulumu ve Yapılandırılması

---

# Client Kurulumu

Ubuntu'da Chef 0.10.x icin:

    !sh
    $ echo "deb http://apt.opscode.com/ `lsb_release -cs`-0.10 main" | \
        sudo tee /etc/apt/sources.list.d/opscode.list

GPG Anahtarı Ekleyelim:

    !sh
    $ sudo mkdir -p /etc/apt/trusted.gpg.d

    $ gpg --keyserver keys.gnupg.net --recv-keys 83EF826A

    $ gpg --export packages@opscode.com | sudo tee \
        /etc/apt/trusted.gpg.d/opscode-keyring.gpg > /dev/null


---

# Client Kurulumu

**Bir önceki adımda sorun çıkması halinde**

    !sh
    $ gpg --fetch-key http://apt.opscode.com/packages@opscode.com.gpg.key

    $ gpg --export packages@opscode.com | sudo tee \
        /etc/apt/trusted.gpg.d/opscode-keyring.gpg > /dev/null

---

# Client Kurulumu

Opscode Deposu etkinleştirilir ve varolan paketler yükseltilir:

    !sh
    $ sudo apt-get update

    $ sudo apt-get install opscode-keyring

    $ sudo apt-get upgrade

Chef paketi yüklenir:

    !sh
    $ sudo apt-get install chef

Bu sırada ekrana chef-server url istenir:

`http://foo.example.com:4000`

---

# Client Yapılandırma

**/etc/chef** dizini oluşturulur:

    !sh
    $ sudo mkdir -p /etc/chef

chef-server'dan `/etc/chef/validation.pem` bu client'a `/etc/chef` altına kopyalanır.

client.rb oluşturulur:

    !sh
    $ knife configure client ./

oluşturulan client.rb `/etc/chef` altına atılır.

oluşturulan `client.rb`nin içeriği minimum şu şekilde olmalı:

    !ruby
    log_level        :info
    log_location     STDOUT
    chef_server_url  'http://yourchefserver.com:4000'
    validation_client_name 'chef-validator'

---

# Client Yapılandırma

Her şey tamamsa son işlem olarak `chef-client` çalıştırılır:

    !sh
    $ sudo chef-client

Herhangi bir sorun yoksa chef-server'da client ve node'u oluşturur.
Varsa run_list çalıştırılır.

---

# Kaynak

![chef](media/chef-logo.png)

[http://wiki.opscode.com/display/chef/Installing+Chef+Client+on+Ubuntu+or+Debian](http://wiki.opscode.com/display/chef/Installing+Chef+Client+on+Ubuntu+or+Debian)
