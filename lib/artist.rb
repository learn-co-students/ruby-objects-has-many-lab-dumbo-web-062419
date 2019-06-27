class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []

    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(song)
    song1 = Song.new(song)
    @songs << song1
    song1.artist = self
  end

  def self.song_count
    counter = 0
    @@all.each do |artist|
      counter += artist.songs.length
    end
    counter
  end

end
