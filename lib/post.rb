require 'pry'

class Post
attr_accessor :title, :author
@@all = []

    def initialize(title)
        @new = title
        @@all << self
    end

    def title
        @new
    end

    def author_name
        if self.author == nil
            return nil
        else
            self.author.name
        end
    end


    def self.all
        @@all
    end

    
    



end