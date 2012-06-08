require 'spec_helper'

describe "fixtures/show" do
  before(:each) do
    @fixture = assign(:fixture, stub_model(Fixture,
      :home_team => "Home Team",
      :away_team => "Away Team",
      :home_score => 1,
      :away_score => 2,
      :winner => "Winner"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Home Team/)
    rendered.should match(/Away Team/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Winner/)
  end
end
