class Song
    attr_accessor :name, :artist
    @@all =[]
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        if defined?(self.artist.name)
        self.artist.name
        end
        
    end

    def self.count
        @@all.length
    end

    

end