require_relative 'spec_helper'


describe Unit do 

  before :each do
    @unit = Unit.new
  end

  describe "#attack!" do
    it "cannot be done if unit is dead" do
      enemy = Footman.new
      @unit.should_receive(:dead?).and_return(true)
      expect(@unit.attack!(enemy)).to eql("cannot attack if dead")
    end
  end
end