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
    new_array = @@artists.uniq
    new_array
  end

  def self.genre_count
    genre_hash = Hash.new(0)
    @@genres.each do |v|
      genre_hash[v] +=1
    end

    #genre_hash.each do |k, v|
    #  puts "#{k} appears #{v} times"
    #end
  end

  #def self.artist_count
    #histogram for artists
  #end

end
