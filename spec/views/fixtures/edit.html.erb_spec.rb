require 'spec_helper'

describe "fixtures/edit" do
  before(:each) do
    @fixture = assign(:fixture, stub_model(Fixture,
      :home_team => "MyString",
      :away_team => "MyString",
      :home_score => 1,
      :away_score => 1,
      :winner => "MyString"
    ))
  end

  it "renders the edit fixture form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => fixtures_path(@fixture), :method => "post" do
      assert_select "input#fixture_home_team", :name => "fixture[home_team]"
      assert_select "input#fixture_away_team", :name => "fixture[away_team]"
      assert_select "input#fixture_home_score", :name => "fixture[home_score]"
      assert_select "input#fixture_away_score", :name => "fixture[away_score]"
      assert_select "input#fixture_winner", :name => "fixture[winner]"
    end
  end
end
