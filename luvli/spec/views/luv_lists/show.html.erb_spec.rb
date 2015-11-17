require 'spec_helper'

describe "luv_lists/show" do
  before(:each) do
    @luv_list = assign(:luv_list, stub_model(LuvList,
      :title => "Title",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
  end
end
