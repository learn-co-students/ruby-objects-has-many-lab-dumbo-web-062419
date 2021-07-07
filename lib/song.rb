class Song
    attr_accessor :artist, :name, :genre

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def artist_name
        if self.artist == nil
            return nil
        else
            self.artist.name
        end
    end

    def self.all
        @@all
    end
end