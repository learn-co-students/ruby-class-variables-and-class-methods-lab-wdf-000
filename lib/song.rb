class Song
  @@song_count = 0
  @@genre_count = 0
  @@artist_count = 0
  @@artists = []
  @@genres = []
  @@count = 0


  attr_accessor :name
  attr_accessor :artist
  attr_accessor :genre

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

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    hash_genres = {}
    @@genres.each do |genre|
      if hash_genres[genre]
        hash_genres[genre] +=1
      else
        hash_genres[genre] = 1
      end
    end
    hash_genres
    # if @@hash_genres[@genre]
    #   @@hash_genres[@genre] += 1
    # else
    #   @@hash_genres[@genre] = 1
    # end

  end

  def self.genres
    @@genres.uniq
  end

  def self.artist_count
    # self.artists.length
    hash_artists = {}
    @@artists.each do |artist|
      if hash_artists[artist]
        hash_artists[artist] +=1
      else
        hash_artists[artist] = 1
      end
    end
    hash_artists
  end


end
