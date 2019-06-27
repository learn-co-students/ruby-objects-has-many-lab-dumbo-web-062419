require_relative "./post"

class Author

	attr_accessor :name, :posts

	def initialize(name)
		@name = name
	end

	#posts
	def posts
		Post.all.select{|post| post.author == self}
	end

	#add_post
	def add_post(post)
		post.author = self
	end

	#add_post_by_title
	def add_post_by_title(title)
		post = Post.new(title)
		post.author = self
	end

	#self.post_count
	def self.post_count
		# self.posts.length
		Post.all.length
	end
end