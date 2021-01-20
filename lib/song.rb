class Song

    @@count = 0
    @@artists = []
    @@genres = []
    
    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @@artists << @artist
        @genre = genre
        @@genres << @genre
        @@count += 1
    end

    def self.count
        @@count
    end

    def self.artists
        result = []
        @@artists.each do |artist|
            if (!result.include?(artist))
                result << artist
            end
        end
        result
    end

    def self.genres
        result = []
        @@genres.each do |genre|
            if (!result.include?(genre))
                result << genre
            end
        end
        result  
    end

    def self.genre_count
        result = {}
        @@genres.each do |genre|
            if (!result.has_key?(genre))
                result[genre] = 1
            else 
                result[genre] += 1
            end
        end
        result
    end

    def self.artist_count
        result = {}
        @@artists.each do |artist|
            if (!result.has_key?(artist))
                result[artist] = 1
            else 
                result[artist] += 1
            end
        end
        result
    end 
end
