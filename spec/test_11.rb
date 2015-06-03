require_relative 'spec_helper'


describe Barracks do 

  before :each do
    @barracks = Barracks.new
    
  end

  it "has and knows its HP (health points = 500)" do
  expect(@barracks.health_points).to eq(500)
  end


  describe "#damage" do
    it "should reduce the barracks' health_points by the attack_power by half if from a footman" do
      footman = Footman.new
    @barracks.damage(footman)
      expect(@barracks.health_points).to eq(495)
    end

  end


end