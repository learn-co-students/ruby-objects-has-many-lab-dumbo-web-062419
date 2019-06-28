class Author
    
attr_accessor :name
attr_reader :posts

def initialize(name)
    @name = name
    @posts = []
end

def add_post(post_instance)
    @posts << post_instance
    post_instance.author = self
end
def add_post_by_title(title_name)
post = Post.new(title_name)
@posts << post
post.author = self
end

end