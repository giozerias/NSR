require 'spec_helper'

describe "matches/edit" do
  before(:each) do
    @match = assign(:match, stub_model(Match,
      :hero_a_id => 1,
      :hero_b_id => 1,
      :hero_a_score => 1,
      :hero_b_score => 1
    ))
  end

  it "renders the edit match form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", match_path(@match), "post" do
      assert_select "input#match_hero_a_id[name=?]", "match[hero_a_id]"
      assert_select "input#match_hero_b_id[name=?]", "match[hero_b_id]"
      assert_select "input#match_hero_a_score[name=?]", "match[hero_a_score]"
      assert_select "input#match_hero_b_score[name=?]", "match[hero_b_score]"
    end
  end
end
