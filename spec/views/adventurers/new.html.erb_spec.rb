require 'spec_helper'

describe "adventurers/new" do
  before(:each) do
    assign(:adventurer, stub_model(Adventurer,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new adventurer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", adventurers_path, "post" do
      assert_select "input#adventurer_name[name=?]", "adventurer[name]"
    end
  end
end
