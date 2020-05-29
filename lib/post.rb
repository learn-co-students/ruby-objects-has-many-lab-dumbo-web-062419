class Post
	attr_accessor :title, :author
	@@all = []

	def initialize(title, author = nil)
		@title = title
		@author = author
		@@all << self
	end

	#author_name
	def author_name
		if @author == nil
			nil
		else
			@author.name
		end
	end

	def self.all
		@@all
	end

end
