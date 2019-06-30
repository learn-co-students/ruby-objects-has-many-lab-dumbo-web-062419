require 'pry'
require_relative './artist.rb'

class Song
    attr_accessor :artist, :name, :genre
    @@all = []

    def initialize(name)
        @name = name
        @genre = genre

        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        artist.name if artist
    end

end

# binding.pry