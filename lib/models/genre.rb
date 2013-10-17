class Genre
  attr_accessor :name, :songs

  All = []

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name) 
  end

  def self.find_by_name(name)
    All.detect{|g| g.name == name}
  end

  def self.create_by_name(name)
    Genre.new.tap{|g| g.name = name}
  end

  def initialize
  #   @songs = []
    All << self
  end

  def self.reset_genres
    All.clear
  end

  def self.all
    All
  end

  def self.count
    All.count
  end

  def songcount
    self.songs.count
  end

  def self.genres
    All
  end

  def songs
    @songs ||= []
  end

  def artists
    songs.collect{|s| s.artist}.uniq
  end

end

Genre.reset_genres


