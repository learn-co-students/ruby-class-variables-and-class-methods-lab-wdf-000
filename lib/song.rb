class Song
  
  attr_accessor :name, :artist, :genre


  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << self.genre
    @@artists << self.artist
  end

  def self.count
    @@count
  end

  def self.genres
    final = @@genres
    final.delete_if { |e| final.count(e) > 1 }
    final
  end

  def self.artists
    final = @@artists
    final.delete_if { |e| final.count(e) > 1 }
    final
  end

  def self.genre_count
    h = Hash.new(0)
    @@genres.each{ |e| h[e] += 1 }
    h
  end

  def self.artist_count
    h = Hash.new(0)
    @@artists.each{ |e| h[e] += 1 }
    h
  end

end