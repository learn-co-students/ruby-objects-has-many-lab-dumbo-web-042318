class Post

attr_accessor :title, :author


  def initialize(title)
    @title = title
  end


  def author_name
    @author ? @author.name : nil # works the same as below


  #   if @author
  #     @author.name
  #   else
  #     nil
  #   end
  end
end
