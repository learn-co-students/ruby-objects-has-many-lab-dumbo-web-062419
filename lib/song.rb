class Song
    
    @@all = Set.new
    attr_accessor :artist, :name
    def initialize(name)
        @name = name
        @artist = artist
        @@all << self
    end

def artist_name
    Artist.all.select do |artist|
        if artist == self.artist
            return artist.name
        elsif self.artist == nil
            return nil
        end
    end
end
def self.all
    @@all
end

end