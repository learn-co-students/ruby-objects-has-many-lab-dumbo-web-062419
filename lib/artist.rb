class Artist

    attr_accessor :name, :songs

    def initialize(name)
        @name = name
    end 

    def songs
        @songs = []
    end

    def add_song(song_name)
        @songs << song_name
    end

end