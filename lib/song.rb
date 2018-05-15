require 'pry'
require_relative './concerns/memorable'
require_relative './concerns/findable'
require_relative './concerns/paramable'

class Song
  extend Memorable::ClassMethods, Findable
  include Memorable::InstanceMethods, Paramable

  attr_accessor :name
  attr_reader :artist

  @@all = []

  #def initialize
  #  @@all << self
  #end

  def self.all
    @@all
  end

  #def to_param
  #  name.downcase.gsub(' ', '-')
  #end

  def artist=(artist)
    @artist = artist
  end

end
