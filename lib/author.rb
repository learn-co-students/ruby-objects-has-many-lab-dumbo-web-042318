class Author

  attr_accessor :name, :post

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(name)
    post = Post.new(name)
    @posts << post
    post.author = self
    @@post_count += 1
  end


  def self.post_count
    @@post_count
  end

end


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





# mike = Author.new("Mike")
#
# i_like_coding = Post.new("Coding")
#
# author.add_post(i_like_coding)
#
# i_like_coding.author.name
#
# new_post = mike.add_post_by_title("new title")
