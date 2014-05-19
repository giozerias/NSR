require 'spec_helper'

describe "matches/new" do
  before(:each) do
    assign(:match, stub_model(Match,
      :hero_a_id => 1,
      :hero_b_id => 1,
      :hero_a_score => 1,
      :hero_b_score => 1
    ).as_new_record)
  end

  it "renders new match form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", matches_path, "post" do
      assert_select "input#match_hero_a_id[name=?]", "match[hero_a_id]"
      assert_select "input#match_hero_b_id[name=?]", "match[hero_b_id]"
      assert_select "input#match_hero_a_score[name=?]", "match[hero_a_score]"
      assert_select "input#match_hero_b_score[name=?]", "match[hero_b_score]"
    end
  end
end
