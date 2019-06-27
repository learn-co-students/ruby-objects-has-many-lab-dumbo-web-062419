class Author

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @posts = []

    @@all << self
  end

  def self.all
    @@all
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(post)
    post1 = Post.new(post)
    post1.author = self
    @posts << post1
  end

  def self.post_count
    counter = 0
    @@all.each do |author|
      counter += author.posts.length
    end
    counter
  end

end
