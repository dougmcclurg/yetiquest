require 'spec_helper'

describe "adventurers/show" do
  before(:each) do
    @adventurer = assign(:adventurer, stub_model(Adventurer,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
