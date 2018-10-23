class Song
  @@artists = []
  @@count = 0
  @@genres = []

  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
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
    g_count = {}
    @@genres.group_by do |genre|
      g_count[genre] = 0 if !g_count.keys.include?(genre)
      g_count[genre] += 1
    end
    g_count
  end
end
