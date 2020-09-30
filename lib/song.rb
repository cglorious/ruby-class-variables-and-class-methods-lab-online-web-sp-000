class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
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
    new_array = @@genres.uniq
    new_array
  end

  def self.artists
    new_array = @@genres.uniq
    new_array
  end

  #def self.genre_count
    #returns a hash
    #keys are the name of each value
    #histogram
    #iterate over @@genres array, populate hash with key/value pairs
    #if hash contains a key, increment value of by one
  #end

  #def self.artist_count
    #histogram for artists
  #end

end
