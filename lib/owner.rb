class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []

 def initialize(name)
   @name = name
   @species = 'human'
   @pets = {:dogs => [], :cats => []}
   @@all << self
   @@count += 1
end

def name
  @name.dup.freeze
end

 def self.all
   @@all
 end

 def self.reset_all
   @@all = []
 end

 def self.count
   @@all.length
 end

 def say_species
     "I am a human."
 end

 def buy_cat(name)
   cat = Cat.new(name)
   self.pets[:cats] << cat
   cat
 end

 def buy_dog(name)
   dog = Dog.new(name)
   self.pets[:dogs] << dog
   dog
 end

 def walk_dogs
   self.pets[:dogs].each do|dog|
   dog.mood = "happy"
   end
 end

 def play_with_cats
   self.pets[:cats].each do|cat|
   cat.mood = "happy"
   end
 end

 def sell_pets
   self.pets.each do| types,pets|
     pets.each do|pet|
       pet.mood = "nervous"
     end
   end
   @pets = {:dogs => [], :cats => []}
 end

 def list_pets
   return "I have #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
 end
end
