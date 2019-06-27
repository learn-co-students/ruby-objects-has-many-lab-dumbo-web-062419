class Artist

    attr_accessor :name

    def initialize(name)
        @name = name
        @songs = []
    end 

    def songs
        @songs = []
    end

    def add_song(song)
        @songs << song
        song.artist = self
    end

    def add_song_by_name(song)
        new_song = Song.new(song)
        @songs << song
        new_song.artist = self
    end

end