class Artist
    
    attr_accessor :name
    attr_reader :songs

    def initialize(name)
        @name = name
        @songs = []
        
    end

    def add_song(song_instance)
        @songs << song_instance
        song_instance.artist = self
        
    end

    def add_song_by_name(song_name)
       song = Song.new(song_name)
       @songs << song
       song.artist = self
       
    end

   
    def self.song_count
        array = []
       Song.all.each do |song|
        array << song
    end
    array.length
end




end