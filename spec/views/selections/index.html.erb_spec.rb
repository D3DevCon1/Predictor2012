require 'spec_helper'

describe "selections/index" do
  before(:each) do
    assign(:selections, [
      stub_model(Selection,
        :user_id => 1,
        :match1 => 2,
        :match2 => 3,
        :match3 => 4,
        :match4 => 5,
        :match5 => 6,
        :match6 => 7,
        :match7 => 8,
        :match8 => 9
      ),
      stub_model(Selection,
        :user_id => 1,
        :match1 => 2,
        :match2 => 3,
        :match3 => 4,
        :match4 => 5,
        :match5 => 6,
        :match6 => 7,
        :match7 => 8,
        :match8 => 9
      )
    ])
  end

  it "renders a list of selections" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
  end
end
