require_relative "./song.rb"
require 'pry'

class Artist

    attr_accessor :name
    attr_reader :songs

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(song)
        @songs << song
        song.artist = self
        @@all << song.name
    end

    # binding.pry

    def add_song_by_name(song)
        new_song = Song.new(song)
        add_song(new_song)
    end

    def self.song_count
        @@song_count = @@all.size
    end
    # binding.pry
end


