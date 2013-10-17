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

  # def build_objects(artist_name, song_name, genre_name)
  #   artist = Artist.new
  #   artist.name = artist_name

  #   song = Song.new
  #   song.name = song_name

  #   genre = Genre.new
  #   genre.name = genre_name

  #   song.genre = genre
  #   artist.songs << songs
  # end

  def build_objects(artist_name, song_name, genre_name)
    song = Song.new
    song.name = song_name

    song.artist = Artist.find_or_create_by_name(artist_name, song_name)  
    song.genre = Genre.find_or_create_by_name(genre_name)
  end


# new.tap{|a| a.name = artist_name}  

end  

binding.pry
parser = LibraryParser.new('../../data')

#artists have songs
#songs have genres, and artists.
#genres have songs


      # SONG_ARTIST_GENRE[0] = Artist.new(song_array[0], song_array[1])
      # SONG_ARTIST_GENRE[1] = Song.new
      # SONG_ARTIST_GENRE[2] = Genre.new






