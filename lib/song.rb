class Song
  attr_accessor :name
  attr_reader :genre, :artist

  def initialize(name, genre)
    @name = name
    @genre = genre
    self.genre.add_song(self)
  end

  def artist=(artist_name)
    @artist = Artist.new(artist_name).name
  end
end
