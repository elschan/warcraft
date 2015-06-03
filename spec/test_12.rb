require_relative 'spec_helper'

  
describe Unit do 

  before :each do
    @unit = Unit.new(0,3)
  end

  describe "#dead?" do
    it "should return true if the unit's health_points have reached 0 or lower" do
      expect(@unit.health_points ==0).to eql(true)
    end
  end

  
end