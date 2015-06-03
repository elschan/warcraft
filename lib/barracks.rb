class Barracks

attr_reader :gold
attr_reader :food
attr_reader :health_points
attr_reader :lumber
  def initialize
    @gold = 1000
    @food = 80
    @lumber = 500
    @health_points = 500
  end

  def damage(attacker)
    if attacker.class == Footman 
    @health_points -= (attacker.attack_power/2).ceil
    elsif attacker.class == Siege
    @health_points -= (attacker.attack_power * 2)
    else
    @health_points -= (attacker.attack_power).ceil
    end
  end

  def train_footman
    @gold -= 135
    @food -= 2
    Footman.new unless can_train_footman? == false

  end

  def can_train_footman?
    gold >= 135 && food >= 2
  end

  def train_peasant
    @gold -= 90
    @food -= 5
    Peasant.new unless can_train_peasant? == false
  end

  def can_train_peasant?
    gold >= 90 && food >=5
  end

  def train_siege
    @gold -= 200
    @food -= 3
    @lumber -= 60
  end

  def can_train_siege?
    gold >= 200 && food >= 3 && lumber >= 60
  end



end
