class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.artist_count
    artists = {}
    @@artists.each do |artist|
      artists[artist] ||= 0
      artists[artist] += 1
    end
    artists
  end

  def self.genre_count
    genres = {}
    @@genres.each do |genre|
      genres[genre] = @@genres.count(genre)
    end
    genres
  end
end
