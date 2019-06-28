class Song
    attr_accessor :artist, :name
    @@count = Set.new
    def initialize(name)
        @name=name
        @@count << self
    end
def self.all
    @@count
end
end