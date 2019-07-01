class Artist
    @@all = []
    attr_accessor :name
    def initialize(name)
        @name = name
        @songs = []
    end

    def songs
        @songs
    end

    def add_song(song)
        @songs << song
        @@all << song
        song.artist = self
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        @songs << song
        @@all << song
        song.artist = self
    end

    def self.song_count
        @@all.length
    end
end

adele = Artist.new("Adele")