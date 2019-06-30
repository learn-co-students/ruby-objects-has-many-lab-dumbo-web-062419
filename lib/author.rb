require 'pry'

class Author
    attr_accessor :name, :posts

    @@posts = []

    def initialize(name)
        @name = name
        @posts = []
    end

    def add_post(post)
        post.author = self
        posts << post
        @@posts << self
    end

    def add_post_by_title(title)
        post = Post.new(title, self)
        posts << post
        @@posts << post
    end

    def self.post_count
        @@posts.count
    end

end