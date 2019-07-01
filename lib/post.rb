class Post
    @@all = Set.new
    attr_accessor :title, :author
    def initialize(title)
        @author = author
        @title = title
        @@all << self
    end
    def self.all
        @@all
    end

    def author_name
        Author.all.select do |author|
             if author == self.author
               return author.name
             elsif self.author == nil
                return nil
            end
         end
    end


end