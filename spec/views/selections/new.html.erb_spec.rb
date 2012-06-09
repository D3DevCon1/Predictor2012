require 'spec_helper'

describe "selections/new" do
  before(:each) do
    assign(:selection, stub_model(Selection,
      :user_id => 1,
      :match1 => 1,
      :match2 => 1,
      :match3 => 1,
      :match4 => 1,
      :match5 => 1,
      :match6 => 1,
      :match7 => 1,
      :match8 => 1
    ).as_new_record)
  end

  it "renders new selection form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => selections_path, :method => "post" do
      assert_select "input#selection_user_id", :name => "selection[user_id]"
      assert_select "input#selection_match1", :name => "selection[match1]"
      assert_select "input#selection_match2", :name => "selection[match2]"
      assert_select "input#selection_match3", :name => "selection[match3]"
      assert_select "input#selection_match4", :name => "selection[match4]"
      assert_select "input#selection_match5", :name => "selection[match5]"
      assert_select "input#selection_match6", :name => "selection[match6]"
      assert_select "input#selection_match7", :name => "selection[match7]"
      assert_select "input#selection_match8", :name => "selection[match8]"
    end
  end
end
