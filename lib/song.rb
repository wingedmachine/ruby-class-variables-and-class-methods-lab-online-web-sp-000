class Song
  @@artists = []
  @@count = 0
  @@genres = []

  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @@artists << artist if !@@artists.include?(artist)
    @genre = genre
    @@genres << genre if !@@genres.include?(genre)
  end

  def self.count
    @@count
  end
end
