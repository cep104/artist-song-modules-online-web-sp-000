require 'pry'

class Song

  attr_accessor :name
  attr_reader :artist

  extend Memorable::ClassMethods
  extend Findable::ClassMethods

  @@songs = []

<<<<<<< HEAD
=======
  def initialize
    @@songs << self
  end

  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name}
  # end

>>>>>>> 08ecfeee503391ac7178aa132191e2d640f6c62e
  def self.all
    @@songs
  end

<<<<<<< HEAD
  def artist=(artist)
    @artist = artist
    artist.add_song(self) unless artist.songs.include?(self)
  end
=======

  def artist=(artist)
    @artist = artist
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
>>>>>>> 08ecfeee503391ac7178aa132191e2d640f6c62e
end
