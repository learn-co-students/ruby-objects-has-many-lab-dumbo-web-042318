class Song

  attr_accessor :artist
  attr_reader :name


  def initialize(name, artist = nil)
    @name = name
    @artist = artist
  end

  def artist_name
    if @artist
      @artist.name
    else
      nil
    end
  end




end
