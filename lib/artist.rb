class Artist 
  attr_accessor :name, :songs
  @@totalSongs = 0
 
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @@totalSongs += 1
    song.artist = self
    @songs << song
  end
  
  def add_song_by_name(name)
    @@totalSongs += 1
    song = Song.new(name)
    song.artist = self
    @songs << song
  end
  
  def self.song_count
    @@totalSongs
  end
  
  
end 