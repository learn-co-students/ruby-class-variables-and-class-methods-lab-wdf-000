class Song
  attr_accessor :song_name, :artist, :genre

  @@count = 0
  @@song_list = []
  @@artists = []
  @@genres = []


  def initialize(song_name, artist, genre)
    # raise "Repeated song!" if @@song_list.include?(song_name)
    @song_name = song_name
    @artist = artist
    @genre = genre
    @@count += 1
    @@song_list << song_name
    @@artists << artist
    @@genres << genre
  end

  def name
    @song_name
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
    temp = @@genres.dup
    result = {}
    until temp.count < 1
      first_genre = temp[0]
      result[first_genre] = temp.count(first_genre)
      temp.delete(first_genre)
    end
    result
  end

  def self.artist_count
    temp = @@artists.dup
    result = {}
    until temp.count < 1
      first_artist = temp[0]
      result[first_artist] = temp.count(first_artist)
      temp.delete(first_artist)
    end
    result
  end
end
