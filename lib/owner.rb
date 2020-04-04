class Owner 
  attr_accessor :name, :pets, :dog, :cat
  attr_reader :species
  
  @@all = []
  @@pets = {:pets => [], :dogs => [], :cats => []}
    
    def initialize(name)
      @name = name  #can have a name
      @species = "human"  #initializes with species set to human
      @@all << self
    end 
  
    
    def self.all
    @@all
  end
  
  def self.count
    @@all.length 
  end 
  
 
  def say_species
    "I am a #{self.species}." #"I am a human."
  end
  
   def self.reset_all
    @@all.clear
  end
  
  def pets
    @@pets 
  end
  
 
  
 
end



      

  
   