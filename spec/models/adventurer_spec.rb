require 'spec_helper'

describe Adventurer do
  before do
    @adventurer = Adventurer.new(name: "Doug McClurg")
  end

  subject { @adventurer }

  it { should respond_to(:name) }
  it { should be_valid }

  describe "when name is not present" do
    before { @adventurer.name = " " }
    it { should_not be_valid }
  end

  describe "when name is already taken" do
    before do
      restaurant_with_same_name = @adventurer.dup
      restaurant_with_same_name.name = @adventurer.name.upcase
      restaurant_with_same_name.save
    end

    it { should_not be_valid }
  end
end

