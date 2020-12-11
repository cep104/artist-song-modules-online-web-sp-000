class Artist
  attr_accessor :name
  attr_reader :songs

  extend Memorable::ClassMethods
  extend Findable::ClassMethods

  @@artists = []

  def initialize
    @@artists << self
    @songs = []
  end

  # def self.find_by_name(name)
  #   @@artists.detect{|a| a.name == name}
  # end

  def self.all
    @@artists
  end

<<<<<<< HEAD
=======

>>>>>>> 08ecfeee503391ac7178aa132191e2d640f6c62e
  def add_song(song)
    @songs << song
    song.artist = self unless song.artist
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

<<<<<<< HEAD
=======
  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
>>>>>>> 08ecfeee503391ac7178aa132191e2d640f6c62e
end
