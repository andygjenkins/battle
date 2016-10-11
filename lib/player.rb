class Player

  MAX_HP = 50
  DAMAGE = 10

  attr_reader :name, :hit_points

  def initialize(name)
    @name = name
    @hit_points = MAX_HP
  end

  def attack(player_2)
    player_2.take_damage
  end

  def take_damage
    @hit_points -= DAMAGE
  end

end
