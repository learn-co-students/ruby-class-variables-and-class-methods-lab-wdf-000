require 'pry'
class Song
   @@count = 0
   @@genres = []
   @@artists = []

   attr_accessor :name, :artist, :genre
    
    def initialize(name, artist, genre)
    	@@count += 1 
    	@name = name

    	@genre = genre
    	@@genres << @genre

    	@artist = artist
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


   def name=(name)
       @name = name

   end

   def name
   	   @name 
   end
	
    def artists=(artist)
	   @artists = artist
    end

    def artists
	   @artists

    end

    def genres=(genre)
	   @genres = genre
    end

    def genres
	   @genres
    end


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

    # def artist_count(name, number)
    #    #artists_count = {}
	   # # ?artists.each do |k, v|

		
	#end
	#artist_count

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
#  {"a"=>1, "b"=>2}


# song1 = Song.new
# song1.genre_count

# Song.genre_count


 # Song.artists
 # Song.genres
 # Song.genre_count
 #Song.artist_count