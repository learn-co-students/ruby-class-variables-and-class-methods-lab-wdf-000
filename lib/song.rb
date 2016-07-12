require 'pry'

class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name,artist,genre)
    @name, @artist, @genre = name,artist,genre
    @@genres << genre
    @@artists << artist
    @@count +=1
  end

  def self.count
    @@count
  end

  def self.artists
    # binding.pry
    # @@artists.uniq this is the easy way!!!
    result = []
    @@artists.each do |artist|
      if !result.include?(artist)
        result << artist
      end
    end
    result
  end

  def self.genres
    result = []
    @@genres.each do |genre|
      if !result.include?(genre)
        result << genre
      end
    end
    result
  end

  def self.songs
    @@songs
  end

  def self.genre_count
    genre_count = {}

    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}

    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end
end
