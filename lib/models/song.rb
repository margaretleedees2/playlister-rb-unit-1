class Song
  attr_accessor :artist, :genre, :name

  @@song = []

  def initialize
    @@song << self
  end

  def self.all
    @@song
  end

  def genre=(genre)
    @genre = genre
    genre.songs << self
  end



end


