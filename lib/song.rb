
class Song
    attr_accessor :name, :artist, :artist_name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
        @artist_name = nil
    end    

    def self.all()
        return @@all
    end

    def artist=(value)
        @artist_name = value.name
        @artist = value
        value.add_song( self )
    end

    def setArtist(a)
        @artist_name = a.name
        @artist = a
    end
end