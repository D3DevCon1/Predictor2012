require 'spec_helper'

describe "scorelines/index" do
  before(:each) do
    assign(:scorelines, [
      stub_model(Scoreline,
        :home_score => 1,
        :away_score => 2,
        :winner => "Winner"
      ),
      stub_model(Scoreline,
        :home_score => 1,
        :away_score => 2,
        :winner => "Winner"
      )
    ])
  end

  it "renders a list of scorelines" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Winner".to_s, :count => 2
  end
end
