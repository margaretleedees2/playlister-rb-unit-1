require_relative '../environment'

artist_page = ERB.new(File.open('../../lib/views/artists.erb').read)
artist = Artist.all

File.open('../../_site/artists.html', 'w+') do |f|
  f << artist_page.result(binding)

end






