require 'spec_helper'

describe "adventurers/index" do
  before(:each) do
    assign(:adventurers, [
      stub_model(Adventurer,
        :name => "Name"
      ),
      stub_model(Adventurer,
        :name => "Name"
      )
    ])
  end

  it "renders a list of adventurers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
