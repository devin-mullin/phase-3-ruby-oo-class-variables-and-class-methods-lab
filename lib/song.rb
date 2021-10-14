require 'pry'

class Song
    attr_accessor :name, :artist, :genre

    def initialize(name, artists, genres)
        @name = name
        @artists = artists
        @genres = genres
        @@count += 1
        @@genres << @genres
        @@artists << @artists
    end 

    @@count = 0 

    @@genres = []

    @@artists = []

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        @@genres.tally
    end

    def self.artists 
        @@artists.uniq
    end

    def self.artist_count
        @@artists.tally
    end

end 

fade = Song.new("Fade", "Kanye West", "Hip-Hop")
ifu = Song.new("If U Want It", "Wilkinson", "Electronic")
wiz = Song.new("The Wizard", "Black Sabbath", "Proto-doom")
