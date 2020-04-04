class Owner 
  attr_accessor :pets, :dog, :cat
  attr_reader :species, :name
  
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
  
  #def pets
   # @@pets 
  #end
  
 def cats
   Cat.all.select do |cat|
     cat.owner == self
 end
 end
 
 def dogs
   Dog.all.select do |dog|
     dog.owner == self
 end
 end
 
  def buy_cat(cat)
    Cat.new(cat, self)
  end
 
end



      

  
   