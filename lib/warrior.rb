class Warrior

  attr_reader :name, :weapon

  def initialize(name, weapon)
    @name = name
    @weapon = weapon
  end

end

class SpearWarrior < Warrior

  def initialize(name)
    super(name, 'Spear')
  end

end

class SwordWarrior < Warrior

  def initialize(name)
    super(name, 'Sword')
  end

end