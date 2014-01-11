require 'spec_helper'

describe Adventure do
  before do
    @adventure = Adventure.new(name: "Doug McClurg")
  end

  subject { @adventure }

  it { should respond_to(:name) }
  it { should be_valid }

  describe "when name is not present" do
    before { @adventure.name = " " }
    it { should_not be_valid }
  end

  describe "when name is already taken" do
    before do
      restaurant_with_same_name = @adventure.dup
      restaurant_with_same_name.name = @adventure.name.upcase
      restaurant_with_same_name.save
    end

    it { should_not be_valid }
  end
end

