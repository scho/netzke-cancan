require 'spec_helper'

describe Netzke::CanCan do
  before(:each) do
    user = Object.new
    stub(Netzke::Base).controller.stub!.current_user{user}
    @component = TestComponent.new
  end

  it "should respond to can?" do
    @component.should respond_to(:can?)
  end

  it "should respond to cannot?" do
    @component.should respond_to(:cannot?)
  end

  describe "#current_ability" do
    it "should respond_to current_ability" do
      @component.should respond_to(:current_ability)
    end

    it "should return instance of Ability" do
      @component.current_ability.should be_a(Ability)
    end
  end
end
