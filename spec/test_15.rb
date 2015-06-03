require_relative 'spec_helper'

describe Siege do 

  before :each do
    @siege = Siege.new
  end

  it "has and knows its HP (health points" do
    expect(@siege.health_points).to eq(400)
  end

  it "has and knows its AP (attack power)" do
    expect(@siege.attack_power).to eq(50)
  end

  


  
end


describe Barracks do 

  before :each do
    @barracks = Barracks.new
  end

  describe "#train_siege"

    it "costs 200 gold" do
      @barracks.train_siege
      expect(@barracks.gold).to eq (800)
    end

    it "costs 3 food" do
      @barracks.train_siege
      expect(@barracks.food).to eq (77)
    end

    it "costs 60 lumber" do
      @barracks.train_siege
      expect(@barracks.lumber).to eq(440)
    end

  describe "#damage" do
    it "should reduce the barracks' health_points by the twice the attack_power if from a siege" do
      siege = Siege.new
    @barracks.damage(siege)
      expect(@barracks.health_points).to eq(400)
    end
  end


end






