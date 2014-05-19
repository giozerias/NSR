require 'spec_helper'

describe "superheros/index" do
  before(:each) do
    assign(:superheros, [
      stub_model(Superhero,
        :name => "Name",
        :city => "City",
        :superpower => "Superpower",
        :superscore => 1
      ),
      stub_model(Superhero,
        :name => "Name",
        :city => "City",
        :superpower => "Superpower",
        :superscore => 1
      )
    ])
  end

  it "renders a list of superheros" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Superpower".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
