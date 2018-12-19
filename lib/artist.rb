require 'pry' 

class Artist 
  attr_accessor :name 
  
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
  def new_song(name,genre)
    song = Song.new(name,self,genre)
  end
  
  def songs 
    songs = Song.all 
    songs.select do |s|
      s.artist == self
    end
    
  end
    
    
  def genres 
    songs.collect do |g|
      g.genre 
    end 
  end
  
end


