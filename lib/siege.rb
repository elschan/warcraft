class Siege
attr_reader  :health_points
attr_reader  :attack_power

  def initialize
    @attack_power = 50
    @health_points = 400
  end

  def attack!(enemy_unit)
    if dead?
      return "cannot attack if dead"
    else
      enemy_unit.damage(attack_power)
    end
  end
end