class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @@count += 1
    @@genres << genre
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres
  end

  def self.artists
    @@artists
  end

  def self.genre_count
    @@genres.each_with_object({}) do |genre, hash|
      hash.empty? || !hash.keys.include?(genre) ?
        hash[genre] = 1 :
        hash[genre] += 1
    end
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artist_count
    @@artists.each_with_object({}) do |artist, hash|
      hash.empty? || !hash.keys.include?(artist) ?
        hash[artist] = 1 :
        hash[artist] += 1
    end
  end
end
