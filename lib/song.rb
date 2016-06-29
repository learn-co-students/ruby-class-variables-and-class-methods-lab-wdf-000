require "pry"

class Song
  # Class Variables
  @@count = 0
  @@artists = []
  @@genres = []

  attr_reader :name, :artist, :genre

  # #initialize, which at the same time modifies the class variables
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  # Class Methods
  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    hash = {}
    @@genres.each do |genre|
      hash[genre] == nil ? hash[genre] = 1 : hash[genre] += 1
    end
    hash
  end

  def self.artist_count
    hash = {}

    @@artists.each do |artist|
      hash[artist] == nil ? hash[artist] = 1 : hash[artist] += 1
    end
    hash
  end

end
