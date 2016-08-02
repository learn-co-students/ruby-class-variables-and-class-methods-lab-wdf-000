require 'pry'

class Song

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def name
    @name
  end

  def artist
    @artist
  end

  def genre
    @genre
  end

  def self.count
    @@count
  end

  def self.genre_count
    ary = []
    @@genres.each do |genre|
      ary << genre
    end
    genres = {}
    ary.each do |genre|
      genres[genre] = ary.count(genre)
    end
    genres
  end

  def self.artist_count
    ary = []
    @@artists.each do |artist|
      ary << artist
    end
    artists = {}
    ary.each do |artist|
      artists[artist] = ary.count(artist)
    end
    artists
  end

  def self.genres
    ary = []
    @@genres.each do |genre|
      ary << genre if !ary.include? genre
    end
    ary
  end

  def self.artists
    ary = []
    @@artists.each do |artist|
      ary << artist if !ary.include? artist
    end
    ary
  end

  @@count = 0
  @@genres = []
  @@artists = []

end
