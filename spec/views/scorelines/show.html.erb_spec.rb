require 'spec_helper'

describe "scorelines/show" do
  before(:each) do
    @scoreline = assign(:scoreline, stub_model(Scoreline,
      :home_score => 1,
      :away_score => 2,
      :winner => "Winner"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Winner/)
  end
end
