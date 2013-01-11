# Encoding: utf-8
# ------------------------------------------------------------------------------
# Blog görevleri
# ------------------------------------------------------------------------------

namespace :post do
  desc "yeni gönderi"
  task :new do
    puts "Yazının linkini gir: [ornek_link_boyle_olur]\n"
    link = STDIN.gets.chomp
    puts "Yazı başlığını gir: "
    title = STDIN.gets.chomp
    puts "Kategori gir: "
    category = STDIN.gets.chomp
    path = category + "/_posts/"+ Date.today.to_s + "-" + link + ".md"

    File.open(path, 'w') do |file|
      file.puts "---"
      file.puts "layout: post"
      file.puts "title: '#{title}'"
      file.puts "---"
    end
    path
  end

  desc "son gönderiyi düzenle"
  task :edit do
    puts "Düzenlenecek Gönderinin Kategorisi? [0, 1, 9]"
    category = STDIN.gets.chomp
    sh "$EDITOR #{Dir[category + '/_posts/*.md'].sort_by{ |f| File.mtime(f) }.last}"
  end
end

desc "gönderiyi oluştur ve düzenle"
task :post => ["post:new", "post:edit"]
