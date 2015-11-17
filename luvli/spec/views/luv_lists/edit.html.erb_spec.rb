require 'spec_helper'

describe "luv_lists/edit" do
  before(:each) do
    @luv_list = assign(:luv_list, stub_model(LuvList,
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit luv_list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", luv_list_path(@luv_list), "post" do
      assert_select "input#luv_list_title[name=?]", "luv_list[title]"
      assert_select "textarea#luv_list_description[name=?]", "luv_list[description]"
    end
  end
end
