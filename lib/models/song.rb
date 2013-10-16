class Song
  attr_accessor :artist, :genre, :name

  def genre=(genre)
    @genre = genre
    genre.songs << self
  end
end
