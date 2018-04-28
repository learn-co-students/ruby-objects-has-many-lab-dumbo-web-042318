class Song

attr_accessor :name, :artist

# def artist=(artist)
#   @artist = artist
# end

  def initialize(name)
    @name = name
    # @artist = artist
  end

  def artist_name
    @artist ? @artist.name : nil # works the same as below

    # if @artist
    #   @artist.name
    # else
    #   nil
    # end
  end


end

# def painters
#     # returns an array of Painter instances who's work is in this gallery
#     Painters.all.select do |painting| #checking for painter based on painting b/c it's the one thing that knows about both galleries. So it's the thing being referenced (which makes it the source fo truth in this case).
#       painting.painter == self
#   end
