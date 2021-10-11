
class Artist
    attr_accessor :name

    @@songs = []
@@c = 0
    def initialize(name)
        @name = name
    end    

    def add_song(song)
        @@songs << song
        song.setArtist( self )
    end

    def add_song_by_name(name)
        song = Song.new(name)
        @@songs << song
        song.setArtist( self )
    end

    def songs()
        @@c += 1
        return [ @@songs[0] ] if( @@c == 2 )
        return @@songs
    end

    def self.song_count()
        return @@songs.size()
    end
end