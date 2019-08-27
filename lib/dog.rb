class Dog
  attr_accessor :name, :mood
  attr_reader :owner

  def owner=(owner)
    @owner = owner
    owner.add_dog{self}
  end

  def initialize(name, owner, mood = "nervous")
    @name = name
    @owner = owner
    @mood = mood
  end
  def name
    @name
  end

  def owner
    @owner
  end
end
