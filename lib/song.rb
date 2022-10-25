class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << @artist
        @@genres << @genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        counts = @@genres.group_by{|i| i}.map{|k, v| [k, v.count]}    
        Hash[*counts.flatten]
    end 

    def self.artist_count
        counts = @@artists.group_by{|i| i}.map{|k, v| [k, v.count]}
        Hash[*counts.flatten]
    end


    def name
        @name
    end

    def artist
        @artist
    end

    def genre
        @genre
    end


end