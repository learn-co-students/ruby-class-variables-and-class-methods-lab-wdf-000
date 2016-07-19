require 'pry'

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
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genre_count
    Hash[@@genres.map {|music_genre| [music_genre, @@genres.count(music_genre)]}]
  end

  def self.artist_count
    Hash[@@artists.map {|musical_artist| [musical_artist, @@artists.count(musical_artist)]}]
  end
end