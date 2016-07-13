require 'pry'
class Song

  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
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
    @@genres.each_with_object({}) do |genre, genre_histogram|
     genre_histogram.keys.include?(genre) ? genre_histogram[genre] += 1 : genre_histogram[genre] = 1
     #binding.pry
    end
  end

  def self.artist_count
    #Now let's get smug with the Hash default values :D
    @@artists.each_with_object(Hash.new(0)) do |artist, artist_histogram|
     artist_histogram[artist] += 1
     #binding.pry
    end
  end
end
