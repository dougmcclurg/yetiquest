require 'spec_helper'

describe "adventurers/edit" do
  before(:each) do
    @adventurer = assign(:adventurer, stub_model(Adventurer,
      :name => "MyString"
    ))
  end

  it "renders the edit adventurer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", adventurer_path(@adventurer), "post" do
      assert_select "input#adventurer_name[name=?]", "adventurer[name]"
    end
  end
end
