require 'spec_helper'

describe "superheros/edit" do
  before(:each) do
    @superhero = assign(:superhero, stub_model(Superhero,
      :name => "MyString",
      :city => "MyString",
      :superpower => "MyString",
      :superscore => 1
    ))
  end

  it "renders the edit superhero form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", superhero_path(@superhero), "post" do
      assert_select "input#superhero_name[name=?]", "superhero[name]"
      assert_select "input#superhero_city[name=?]", "superhero[city]"
      assert_select "input#superhero_superpower[name=?]", "superhero[superpower]"
      assert_select "input#superhero_superscore[name=?]", "superhero[superscore]"
    end
  end
end
