class Artist
  attr_accessor :name
  attr_reader :songs

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @@song_count += 1

    song.artist = self
    @songs << song
  end

  def add_song_by_name(name)
    song = Song.new(name)
    self.add_song(song)[-1]
  end

  def self.song_count
    @@song_count
  end

end
