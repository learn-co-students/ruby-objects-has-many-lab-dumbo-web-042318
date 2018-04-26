class Post 
  attr_accessor :author, :name, :title 
  
  def initialize(title)
    @title = title
  end
  
  def author_name 
    @author.name if @author 
  end
end