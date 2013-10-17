class Artist
  attr_accessor :name, :songs
  All = []

  def initialize
    @name = name
  #   artist = Artist.new
    All << self
    # @songs = []
    # @songs << 
  end

  def self.find_or_create_by_name(name, song)
    self.find_by_name(name, song) || self.create_by_name(name, song) 
  end

  def self.find_by_name(name, song)
    if All.find{|a| name if a.name == name} != nil
      All.find{|a| name if a.name == name}.songs << song
    end
  end

  def self.create_by_name(name, song)
    Artist.new.tap{|a| a.name = name; a.songs = [song]}
  end

  def genres
    songs.collect{|s| s.genre}.uniq
    #this returns an array of unique genres
  end

  def self.reset_artists
    All.clear
  end

  def self.all
    All
  end

  def songs_count
    songs.size
  end

  def self.count
    All.size
  end

  def add_song(song)
    songs << song
    song.artist = self
  end
end

  # This also applies to genres, replace artists with genres:
  # An artist only needs to track it's songs in an array.
  # The artist's genres in from it's #genres method can be 
  # determined by looking at it's collection of songs and
  # collecting those genres.


  # def self.find_or_create_by(name)
  #   Artist.all.each do |artist|
  #     puts name if artist.name == name
  #   end
  #   #we're trying to see if this artist already exists as an instance
  #   #see if artist exists or not, if it does not exist, instantiate

