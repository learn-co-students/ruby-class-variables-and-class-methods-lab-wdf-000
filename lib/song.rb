require 'pry'
class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    # binding.pry
    @@artists << @artist
    @genre = genre
    @@genres << @genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    bruh = {}
    # counter = 1
    @@genres.each do |genre|
      if bruh[genre]
        bruh[genre] +=1
      else
        bruh[genre] = 1
      end
    end
    bruh
  end

  def self.artist_count
    skrillex_bruh = {}
    # counter = 1
    @@artists.each do |artist|
      if skrillex_bruh[artist]
        skrillex_bruh[artist] +=1
      else
        skrillex_bruh[artist] = 1
      end
    end
    skrillex_bruh
  end


end