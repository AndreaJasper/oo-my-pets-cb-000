class Owner
  attr_reader :name, :species
  @@all = []

 def initialize(name)
   @name = name
   @species = 'human'
   @@all << self
end

 def self.all
   @@all
 end

 def self.count
   @@all.size
end

 def self.reset_all
   @@all = clear
 end

 def say_species
     "I am #{self.species}"
 end

 def dogs
   Dog.all.select {|dog| dog.owner == self}
end

def cats
  Cat.all.select {|cat| cat.owner == self}
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
