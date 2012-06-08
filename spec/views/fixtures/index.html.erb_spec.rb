require 'spec_helper'

describe "fixtures/index" do
  before(:each) do
    assign(:fixtures, [
      stub_model(Fixture,
        :home_team => "Home Team",
        :away_team => "Away Team",
        :home_score => 1,
        :away_score => 2,
        :winner => "Winner"
      ),
      stub_model(Fixture,
        :home_team => "Home Team",
        :away_team => "Away Team",
        :home_score => 1,
        :away_score => 2,
        :winner => "Winner"
      )
    ])
  end

  it "renders a list of fixtures" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Home Team".to_s, :count => 2
    assert_select "tr>td", :text => "Away Team".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Winner".to_s, :count => 2
  end
end
