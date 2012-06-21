# Ruby Database Backup - Whenever

.fx: first

Emre Can Yılmaz `<ecylmz@bil.omu.edu.tr>`

[http://ecylmz.com/](http://ecylmz.com)

Haziran 2012

---

# Gerekli Ortam Kurulumu

- [Backup Gem](https://github.com/meskyanichi/backup)'ini kur:

        !sh
        $ sudo gem install backup

- Yapılandırma dosyasını oluştur:

        !sh
        $ backup generate:model --trigger my_backup \
        --databases="mysql" --compressors="gzip" --notifiers="mail"

~/Backup  dizini altında **config.rb** ve **models/my_backup.rb** dosyaları
oluşturuldu.

- Log dizinini elle oluşturmak gerekiyor.

        !sh
        $ mkdir ~/Backup/log

---

# Gem Bağımlılıkları

Her özelliği kullanmak için ekstradan gem kurmak gerekiyor.

- Amazan S3 için:

        !sh
        $ sudo gem install fog -v '~> 1.1.0'

- Depolama için:

        !sh
        $ sudo gem install net-ssh '~> 2.3.0'

---

# Yapılandırma Dosyaları

- **config.rb** içerisindeki S3 ve OpenSSL ayarları kullanılmıyorsa devre dışı
  bırakılır.

        !ruby
        #Backup::Configuration::Storage::S3.defaults do |s3|
        #end

        #Backup::Configuration::Encryptor::OpenSSL.defaults do |encryption|
        #end

---

# Yapılandırma Dosyaları

- **models/my_backup.rb** içerisine **bütün** veritabanlarının yedeğini alan,
  sıkıştırıp yerelde bir dizinde barındıran ve bu işlemin sonucunu bize maille
  bilgilendiren bir yapılandırma dosyası yazalım:

  <script src="https://gist.github.com/2964648.js"> </script>

---

# RSync ile Depolama

**models/my_backup.rb** içerisine aşağıdaki satılar eklenir.

    !ruby
    sync_with RSync::Push do |rsync|
      rsync.ip       = "123.45.678.90"
      rsync.port     = 22
      rsync.username = "my_username"
      # parolasız erişim için SSH-Keys kullanalım.
      rsync.path     = "/path/to/backups/"
      rsync.mirror   = true
      rsync.compress = true

      rsync.directories do |directory|
        directory.add "/path/to/Backup/backups"
      end
    end

---

# Backup'ın Çalıştırılması

- El ile çalıştırmak için:

        !sh
        $ backup perform --trigger my_backup

Bu işlem sonucunda ~/Backup dizini altında backups dizini açılır ve içerisinde
yedeği alınmış veritabanı arşivi bulunur. Yapılan işlemlerin durumunu da verilen
mail adresine gönderir.

- Bu programı Cron görevi ile çalıştırmak için whenever gem'ini kullanalım...

---

# whenever Gem'i Kurulumu

- Kurulum:

        !sh
        $ sudo gem install whenever

- Hangi uygulama için çalıştırılacaksa orada config dizini olmalı:
  Backup için ~/Backup dizini içinde olmalı.

        !sh
        $ mkdir ~/Backup/config

- Ayar dosyası için:

        !sh
        $ cd ~/Backup/
        $ wheneverize .

Bu işlem sonrası config dizini altında **schedule.rb** dosyası oluşacaktır.

---

# schedule.rb Dosyası

Cron görevleri burada tanımlanıyor. Bu dosya **config** dizini içindedir.

Backup için gerekli olan **schedule.rb** dosyası içeriği:

    !ruby
    every 6.hours do
      command "backup perform --trigger my_backup"
    end

---

# Örnekler

Diğer zamanlama örnekleri :

    !ruby
    every 3.hours do
      runner "MyModel.some_process"
      rake "my:rake:task"
      command "/usr/bin/my_great_command"
    end

    every 1.day, :at => '4:30 am' do
      runner "MyModel.task_to_run_at_four_thirty_in_the_morning"
    end

    every :hour do # Many shortcuts available: :hour, :day, :month, :year, :reboot
      runner "SomeModel.ladeeda"
    end

    every :sunday, :at => '12pm' do # Use any day of the week or :weekend, :weekday
      runner "Task.do_something_great"
    end

    every '0 0 27-31 * *' do
      command "echo 'you can use raw cron syntax too'"
    end

---

# Cron'un Aktif/Pasif Hale Getirilmesi

Aktif etmek için:

    !sh
    $ whenever --update-crontab backup

Pasifleştirmek için:

    !sh
    $ whenever -c backup

---

# Kaynaklar

- [https://github.com/meskyanichi/backup](https://github.com/meskyanichi/backup)

- [https://github.com/javan/whenever](https://github.com/javan/whenever)
