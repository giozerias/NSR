require 'spec_helper'

describe "superheros/show" do
  before(:each) do
    @superhero = assign(:superhero, stub_model(Superhero,
      :name => "Name",
      :city => "City",
      :superpower => "Superpower",
      :superscore => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/City/)
    rendered.should match(/Superpower/)
    rendered.should match(/1/)
  end
end
