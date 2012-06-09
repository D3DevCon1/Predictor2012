require 'spec_helper'

describe "selections/show" do
  before(:each) do
    @selection = assign(:selection, stub_model(Selection,
      :user_id => 1,
      :match1 => 2,
      :match2 => 3,
      :match3 => 4,
      :match4 => 5,
      :match5 => 6,
      :match6 => 7,
      :match7 => 8,
      :match8 => 9
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(/6/)
    rendered.should match(/7/)
    rendered.should match(/8/)
    rendered.should match(/9/)
  end
end
