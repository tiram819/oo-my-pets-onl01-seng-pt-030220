class Cat
  attr_accessor :owner, :mood, :pets
  attr_reader :name
  
  @@all = []
  @@pets = {:pets => [], :cats => []}
  
  
  def initialize(name, mood)
      @name = name  #can have a name
      @mood = "nervous" 
      @owner = Owner
      @@all << self
    end 

  
    def self.all
    @@all
  end
  
  def self.count
    @@all.length 
  end 
	
  
  
  
end
        