class Song
  @@artists = []
  @@count = 0

  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
  end
end
