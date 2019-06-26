class Song

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def artist
        Artist.new(@name)
    end

    def all
        @@all
    end

end