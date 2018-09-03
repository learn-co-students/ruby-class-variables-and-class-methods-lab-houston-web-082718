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
    @@count +=1
    @@artists << artist
    @@genres << genre
    @@artist_count = Hash.new(0)
    @@genre_count = Hash.new(0)
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
    @@genres.each do |genre|
      @@genre_count[genre]+=1
    end
    @@genre_count
  end

  def self.artist_count
    @@artists.each do |artist|
      @@artist_count[artist]+=1
    end
    @@artist_count
  end

end
# ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
# lucifer = Song.new("Lucifer", "Jay-Z", "rap" )
# hit_me = Song.new("hit me baby one more time", "Brittany Spears", "pop")

#binding.pry