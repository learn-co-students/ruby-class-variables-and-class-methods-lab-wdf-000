class Song

attr_reader :artist, :name, :genre

@@artists = []
@@genres = []
@@count = 0

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@genres << genre
  # if !(@@genres.include?(genre))
  @@artists << artist
  # if !(@@artists.include?(artist))
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

def self.genre_count
  histogram = {}
  @@genres.each do |genre|
    (histogram.key?(genre) ? histogram[genre] += 1 : histogram[genre] = 1)
  end
  histogram
end

def self.artist_count
  histogram = {}
  @@artists.each do |artist|
    (histogram.key?(artist) ? histogram[artist] += 1 : histogram[artist] = 1)
  end
  histogram
end


end
