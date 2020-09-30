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
    #@@genres has all of the elements, even duplicates
    #iterate through genres for duplicates
    #create a new array
    genres_array = []
    @@genres.collect do |element|
      if !@@genres.include?(element)
        genres_array << element
      end
      genres_array
    end
  end

  #def self.artists(artist)
    #if the genre is not in the array
    #add it to the array
    #if genre
    #how to control for duplicates?
    #if !@@artists.include?(artist)
    #  @@artists << artist
    #end
  #end

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
