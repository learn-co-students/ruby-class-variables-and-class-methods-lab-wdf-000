require 'pry'

class Song

attr_accessor :name, :artist, :genre

	@@count = 0
	@@genres = []
	@@artists =[]

	def initialize(name, artist, genre)
		@@count += 1
		@name = name
		@artist = artist
		@@artists << artist #if !@@artists.include?(artist)
		@genre = genre
		@@genres << genre ##if !@@genres.include?(artist)
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
		@@genres.each do |type_of_genre|
			if !hash.include?(type_of_genre)
				hash[type_of_genre] = 1
			else
				hash[type_of_genre] += 1
			end
		end
		hash
	end

	def self.artist_count
		hash = {}
		@@artists.each do |artist|
				if !hash.include?(artist)
					hash[artist] = 1
				else
					hash[artist] += 1
				end
			end
			hash
		end	
	end

