require 'pry'
class Artist
  attr_accessor :name, :songs

  ALL_SONGS = []
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    ALL_SONGS << song
    @@song_count = ALL_SONGS.count
  end

  def add_song_by_name(song_name)
    song_name = Song.new(song_name)
    song_name.artist = self
    add_song(song_name)
  end

  def self.song_count
    @@song_count
  end


end
