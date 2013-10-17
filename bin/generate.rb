require_relative '../environment'

artist_page = ERB.new(File.open('../../lib/views/artists.erb').read)
artist = Artist.all

File.open('../../_site/artists.html', 'w+') do |f|
  f << artist_page.result(binding)

end

index = ERB.new(File.open('../../lib/views/index.erb').read)
song = Song.all

File.open('../../_site/index.html', 'w+') do |f|
  f << index.result(binding)

end

songpagefuckyes = ERB.new(File.open('../../lib/views/songpagefuckyes.erb').read)

Song.all.each do |song|
  File.open("../../_site/songpages/#{song.name.strip.gsub(" ", "_")}.html", 'w+') do |f|
  f << songpagefuckyes.result(binding)
  end
end

genres = ERB.new(File.open('../../lib/views/genres.erb').read)
genre = Genre.all

File.open('../../_site/genres.html', 'w+') do |f|
    f << genres.result(binding)
end










