class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
  end

  def Song.count
    @@count
  end

  def Song.artists
    @@artists.uniq!
  end

  def Song.genres
    @@genres.uniq!
  end

  def Song.genre_count
    genres_hash = {}

    @@genres.each do |genre|
      genres_hash[genre] ||= 0
      genres_hash[genre] += 1
      end

    genres_hash
  end

  def Song.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      artist_hash[artist] ||= 0
      artist_hash[artist] += 1
    end
    artist_hash
  end

end
