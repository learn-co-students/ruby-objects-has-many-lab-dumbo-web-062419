require 'pry'

class Artist
    attr_accessor :name


    def initialize(name)
        @name = name
        @songs = []
    end

    def name
        @name
    end
    
    def songs
        @songs
    end

    def add_song(song)
        @songs << song
        song.artist = self
      end

      def add_song_by_name(name)
        song = Song.new(name)
        @songs << song
        song.artist = self
      end

      def self.song_count
        song_count = []
        Song.all.each do|songs| 
        song_count << songs
         songs.artist = self
        end
        return song_count.count

      end
      binding.pry
     
end

