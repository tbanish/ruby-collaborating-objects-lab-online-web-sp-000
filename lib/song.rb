require 'pry'

class Song
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def save
    @@all << self
  end
  def self.all
    @@all
  end
  
  def self.new_by_filename(filename)
    binding.pry
    split_name = filename.split(" - ")
  end
  
  def artist_name=(name)
    
  end
  

  
end