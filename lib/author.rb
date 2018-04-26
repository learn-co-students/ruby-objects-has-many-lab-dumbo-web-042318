class Author
attr_accessor :name

  POSTS = []
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
    POSTS << post
    @@post_count = POSTS.count
  end

  def add_post_by_title(post_title)
    post_title = Post.new(post_title)
    add_post(post_title)
  end

  def self.post_count
    @@post_count
  end


end
