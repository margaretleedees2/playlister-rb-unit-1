require_relative 'artist.rb'
require_relative 'genre.rb'
require_relative 'song.rb'
require 'pry'

class LibraryParser

  def initialize(file)
    Dir.foreach(file) do |filename|  
      next if filename.start_with?('.')
      
      parts = filename.gsub('[',' - ').gsub(']',' - ').split(' - ')
      song_name = parts[1]
      artist_name = parts[0]
      genre_name = parts[2]

      build_objects(artist_name, song_name, genre_name)
    end
  end

  def build_objects(artist_name, song_name, genre_name)
    song = Song.new
    song.name = song_name

    song.artist = Artist.find_or_create_by_name(artist_name, song_name)  
    song.genre = Genre.find_or_create_by_name(genre_name)
  end

end  

# binding.pry
parser = LibraryParser.new('../../data')






