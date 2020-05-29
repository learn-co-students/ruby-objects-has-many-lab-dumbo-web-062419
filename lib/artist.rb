class Artist

	attr_accessor :name, :songs

	@@artists = []

	def initialize(name)
		@name = name
		@songs = []
		@@artists << self
	end

	def add_song(song)
		song.artist = self
		@songs << song
	end

	def add_song_by_name(name)
		song = Song.new(name, self)
		@songs << song 
	end

	def self.song_count
		count = 0
		@@artists.each do |artist|
			count += artist.songs.length
		end
		count
	end


end