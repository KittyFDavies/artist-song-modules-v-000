require 'pry'
require_relative './concerns/memorable'
require_relative './concerns/findable'
require_relative './concerns/paramable'

class Artist
  extend Memorable::ClassMethods, Findable
  include Memorable::InstanceMethods, Paramable

  attr_accessor :name
  attr_reader :songs

  @@all = []

  def initialize
    #@@all << self
    super
    @songs = []
  end

  def self.all
    @@all
  end

  #def to_param
  #  name.downcase.gsub(' ', '-')
  #end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end



end
