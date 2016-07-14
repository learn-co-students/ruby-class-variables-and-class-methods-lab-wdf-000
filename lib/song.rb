class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  @@genre_count = {}
  @@artist_count = {}

  def initialize(name, artist, genre)
    # set up instance
    @name = name
    @artist = artist
    @genre = genre

    # update class variables
    @@count += 1
    @@artists << artist #if !@@artists.include?(artist)
    @@genres << genre #if !@@genres.include?(genre)


    if @@genre_count[genre] == nil
      @@genre_count[genre] = 0
      @@genre_count[genre] += 1
    else
      @@genre_count[genre] += 1
    end

    if @@artist_count[artist] == nil
      @@artist_count[artist] = 0
      @@artist_count[artist] += 1
    else
      @@artist_count[artist] += 1
    end
    
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

  def self.genre_count
    unique_genres = @@genres.uniq
    unique_genres.each do |genre|
      @@genre_count[genre] = @@genres.count(genre)
    end
    @@genre_count
  end

  def self.artist_count
    unique_artists = @@artists.uniq
    unique_artists.each do |artist|
      @@artist_count[artist] = @@artists.count(artist)
    end
    @@artist_count
  end
end