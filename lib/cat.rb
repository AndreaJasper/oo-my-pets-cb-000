class Cat
  attr_accessor :name, :mood
  attr_reader :owner

  def owner=(owner)
    @owner = owner
    owner.add_cat{self}
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
