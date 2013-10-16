require_relative 'artist.rb'
require_relative 'genre.rb'
require_relative 'song.rb'
require 'pry'

class LibraryParser

  @@song_artist_genre = []  

  def initialize(file)
    Dir.foreach(file) do |filename|  
      next if filename.start_with?('.')
      @@song_artist_genre << filename.gsub('[',' - ').gsub(']',' - ').split(' - ')
    end
  end

  def call_artist
    
  end

  def self.look
    puts @@song_artist_genre
  end

end  

binding.pry
parser = LibraryParser.new('../../data')

#artists have songs
#songs have genres, and artists.
#genres have songs


      # SONG_ARTIST_GENRE[0] = Artist.new(song_array[0], song_array[1])
      # SONG_ARTIST_GENRE[1] = Song.new
      # SONG_ARTIST_GENRE[2] = Genre.new






