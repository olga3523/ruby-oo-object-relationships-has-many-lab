
class Post
    attr_accessor :title, :author, :author_name
    @@all = []
    def initialize(title)
        @title = title
        @@all << self
        @author_name = nil
    end    

    def self.all()
        return @@all
    end

    def author=(author)
        @author_name = author.name
        @author = author
        author.add_post( self )
    end

    def setAuthor(a)
        @author_name = a.name
        @author = a
    end
end