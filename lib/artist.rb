require_relative '/Users/christopherjunker/Documents/notes/day3/ruby-objects-has-many-lab-dumbo-web-042318/lib/song.rb'
class Artist

# attr_reader :name, :songs
# attr_writer :songs
attr_accessor :name,:songs
@@song_count=0

  def initialize(name)
      @name = name
      @songs = []

  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count+=1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    self.songs << song
    song.artist = self
    @@song_count+=1
  end

  def self.song_count
    @@song_count
  end

end
