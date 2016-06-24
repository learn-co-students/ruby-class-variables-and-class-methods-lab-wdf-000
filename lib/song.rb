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

  def self.genres
    @@genres.uniq
  end

  def self.count
    @@count 
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    
    genres = Hash.new 0
    @@genres.each  {|genre| genres[genre] += 1 }
    #@@genres.each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }
    # binding.pry
    genres
  end

  def self.artist_count
    artists = Hash.new(0)
    @@artists.each {|artist| artists[artist] += 1}
    artists
  end

end