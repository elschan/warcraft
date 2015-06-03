class Barracks
attr_reader :gold, :food
  def initialize
    @gold = 1000
    @food = 80
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


end
