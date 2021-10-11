
class Author
    attr_accessor :name

    @@posts = []

    def initialize(name)
        @name = name
    end    

    def add_post(post)
        @@posts << post
        post.setAuthor( self )
    end

    def add_post_by_title(title)
        post = Post.new(title)
        @@posts << post
        post.setAuthor( self )
    end

    def posts()
        return @@posts
    end
    
    def self.post_count()
        return @@posts.size() 
    end

end