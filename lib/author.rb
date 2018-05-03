require_relative "./post.rb"

class Author 

    attr_accessor :name 
    attr_reader :posts

    @@all = []

    def initialize(name)
        @name = name
        @posts = []
    end

    def add_post(post)
        @posts << post
        post.author = self
        @@all << post.title
    end

    def add_post_by_title(post)
        new_post = Post.new(post)
        add_post(new_post)
    end

    def self.post_count
        @@post_count = @@all.size
    end

end
