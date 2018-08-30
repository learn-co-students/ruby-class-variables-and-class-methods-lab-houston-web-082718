require 'pry'

class Song

  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}

  attr_accessor :name, :artist, :genre


  def initialize(song_name, artist, genre)
    @name = song_name
    @artist = artist
    @genre = genre
    @@count += 1

    @@genres << genre
    @@artists << artist

  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    @@genres.each do |genre|
      if @@genre_count.has_key?(genre)
        @@genre_count[genre] = @@genre_count[genre] + 1
      else
        @@genre_count[genre] = 1
      end
    end

    @@genre_count
  end

  def self.artist_count
    @@artists.each do |artist|
      if @@artist_count.has_key?(artist)
        @@artist_count[artist] = @@artist_count[artist] + 1
      else
        @@artist_count[artist] = 1
      end
    end

    @@artist_count
  end

end
