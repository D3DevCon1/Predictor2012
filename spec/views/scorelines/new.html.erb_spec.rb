require 'spec_helper'

describe "scorelines/new" do
  before(:each) do
    assign(:scoreline, stub_model(Scoreline,
      :home_score => 1,
      :away_score => 1,
      :winner => "MyString"
    ).as_new_record)
  end

  it "renders new scoreline form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => scorelines_path, :method => "post" do
      assert_select "input#scoreline_home_score", :name => "scoreline[home_score]"
      assert_select "input#scoreline_away_score", :name => "scoreline[away_score]"
      assert_select "input#scoreline_winner", :name => "scoreline[winner]"
    end
  end
end
