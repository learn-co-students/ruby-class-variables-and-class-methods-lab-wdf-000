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
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    hash = {}
    count = 0
    @@genres.each do |type|
      if(!hash.include?(type))
        hash[type] = (count + 1)
        count = 0
      else
        hash[type] += 1
      end
    end
    hash
   end

  def self.artist_count
    hash = {}
    count = 0
    @@artists.each do |type|
      if(!hash.include?(type))
        hash[type] = (count + 1)
        count = 0
      else
        hash[type] += 1
      end
    end
    hash
  end


end