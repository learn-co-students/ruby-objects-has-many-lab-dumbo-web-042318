require_relative '/Users/christopherjunker/Documents/notes/day3/ruby-objects-has-many-lab-dumbo-web-042318/lib/artist.rb'
class Song
  # attr_reader :name, :artist
  # attr_writer :artist
  attr_accessor :name, :artist

    def initialize(name)
        @name = name
    end
    def artist_name
      if self.artist
        self.artist.name
      else
        nil
      end
    end

end
