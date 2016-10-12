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
    @@genres << @genre
    @@artists << @artist
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
  # attr_accessor added these 6 instance methods to our objects.
  # attr_accessor :name,:artist,:genre are equivelent to the writer & reader methods
  # def name=(name)
  #   @name = name
  # end

  # def name
  #  	@name 
  # end
	
  # def artists=(artist)
	 #  @artists = artist
  # end

  # def artists
	 #  @artists
  # end

  # def genres=(genre)
	 #  @genres = genre
  # end

  # def genres
	 #  @genres
  # end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
    	if artist_count[artist]
    		artist_count[artist] += 1
    	else
    		artist_count[artist] = 1
    	end
    end
    artist_count
  end

	def self.genre_count
		# {"pop" => 1, "rap" => 2}
		genre_count = {}
		@@genres.each do |genre|
			if genre_count[genre]
				genre_count[genre] += 1
			else
				genre_count[genre] = 1
			end
		end
	  genre_count
    end
  end

  
# {"a"=>1, "b"=>2}

# here our Song class reveal value to us.
# song1 = Song.new
# song1.genre_count
# Song.genre_count


 # Song.artists
 # Song.genres
 # Song.genre_count
 # Song.artist_count