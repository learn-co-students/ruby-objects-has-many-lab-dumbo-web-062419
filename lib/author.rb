require 'pry'

class Author
attr_accessor :name

    def initialize(name)
        @new = name
        @posts = []
    end

    def name
        @new
    end

    def posts
        @posts
    end

    def add_post(post)
        @posts << post
        post.author = self
      end

      def add_post_by_title(title)
        post = Post.new(title)
        @posts << post
        post.author = self
      end

      def self.post_count
        post_count = []
        Post.all.each do|posts| 
        post_count << posts
         posts.author = self
        end
        return post_count.count

      end




end