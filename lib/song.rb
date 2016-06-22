class Song
  @@count = 0
  @@artists = Array.new
  @@genres = Array.new

  def initialize(name,artist,genre)
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

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    counts = {}
   @@genres.each{|x| if counts.has_key?(x) then counts[x] += 1 else counts[x] = 1 end}
    counts
  end

  def self.artist_count
    counts = {}
    @@artists.each{|x| if counts.has_key?(x) then counts[x] += 1 else counts[x] = 1 end}
    counts

  end
end
