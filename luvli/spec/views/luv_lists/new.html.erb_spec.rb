require 'spec_helper'

describe "luv_lists/new" do
  before(:each) do
    assign(:luv_list, stub_model(LuvList,
      :title => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new luv_list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", luv_lists_path, "post" do
      assert_select "input#luv_list_title[name=?]", "luv_list[title]"
      assert_select "textarea#luv_list_description[name=?]", "luv_list[description]"
    end
  end
end
