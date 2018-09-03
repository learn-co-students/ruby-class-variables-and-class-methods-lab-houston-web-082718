require 'pry'
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
    @@artists << artist 
    @@genres << genre
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    uniq_artists = []
   
    for artist in @@artists
      unless uniq_artists.include?(artist)
        uniq_artists << artist
      end
    end
    
    uniq_artists
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    genre_hash = {}
    for genre in @@genres
      genre_hash[genre] = @@genres.count(genre)
    end
    genre_hash
  end
  
  def self.artist_count
    artist_hash = {}
   
    for artist in @@artists
     artist_hash[artist] = @@artists.count(artist)
    end
    artist_hash
  end
end


