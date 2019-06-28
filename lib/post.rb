class Post
    attr_accessor :title, :author
    @@count = Set.new
    def initialize(name)
        @name = name
        @@count << self
    end
    def self.all
        @@count



end