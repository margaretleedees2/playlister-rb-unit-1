class Artist
  attr_accessor :name, :songs
  All = []

  def initialize
    @name = name
    All << self

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

