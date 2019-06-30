require_relative "artist.rb"
require 'pry'

class Song
    attr_accessor :name, :artist

    @@all = []

    def initialize(name=nil, artist=nil)
        @name = name
        @artist = artist
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        if artist == nil
            nil
        else
            artist.name
        end
    end

end

# a1 = Artist.new("Chris")
# s1 = Song.new("too sexy", a1)

# a1.add_song(s1)

