class Hero
  attr_accessor :name, :power, :bio 

  @@all = []

  def initialize(hash)
    hash.each{|k,v| self.send("#{k}=",v)}
    @@all << self
 end

  def self.all
    @@all 
  end 
end 