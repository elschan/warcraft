
class Unit
  attr_reader :health_points, :attack_power, 

  def initialize(hp, ap)
    @health_points = hp
    @attack_power = ap
  end


  def damage(attack_power)
    if @health_points >= attack_power
    @health_points -= attack_power
    else
    @health_points = 0
  end
  end

  def dead?
    @health_points ==0 
  end

  def attack!(enemy_unit)
    if dead?
      return "cannot attack if dead"
    else
      enemy_unit.damage(attack_power) 
    end
  end

  

end
