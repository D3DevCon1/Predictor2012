require 'spec_helper'

describe "scorelines/edit" do
  before(:each) do
    @scoreline = assign(:scoreline, stub_model(Scoreline,
      :home_score => 1,
      :away_score => 1,
      :winner => "MyString"
    ))
  end

  it "renders the edit scoreline form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => scorelines_path(@scoreline), :method => "post" do
      assert_select "input#scoreline_home_score", :name => "scoreline[home_score]"
      assert_select "input#scoreline_away_score", :name => "scoreline[away_score]"
      assert_select "input#scoreline_winner", :name => "scoreline[winner]"
    end
  end
end
