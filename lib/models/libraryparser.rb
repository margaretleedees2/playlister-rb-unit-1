require_relative 'artist.rb'
require_relative 'genre.rb'
require_relative 'song.rb'
require 'pry'

class LibraryParser

  def initialize(file)
    Dir.foreach(file) do |filename|  
      next if filename.start_with?('.')
      song_array = filename.gsub('[',' - ').gsub(']',' - ').split(' - ')
      Artist.all.each do |artist|
        if song_array[0] == artist.name
          artist.name.song(song_array[1])
        else
          song_array[0] = Artist.new(song_array[0], song_array[1])
        end
      end
     
      #if artist.name exists, then we shovel the song into the existing artist
      #figure out a way to only initialize the artist if artist.name does not exist.


      # song_array[0] = Artist.new(song_array[0], song_array[1])
      song_array[1] = Song.new
      song_array[2] = Genre.new
    end
  end  
end  

binding.pry
parser = LibraryParser.new('../../data')

#artists have songs
#songs have genres, and artists.
#genres have songs









