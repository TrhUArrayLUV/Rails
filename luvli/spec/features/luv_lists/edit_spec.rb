require 'spec_helper'

describe "editing luv lists" do
  let!(:luv_list) { LuvList.create(title: "Appreciation to Swift", description: "appreciate XCode and all related technologies") }
  def update_luv_lists(options ={})
    options[:title] ||= "Love & appreciation to swift"
    options[:description] ||= "Appreciation to Swift, XCode, JavaScript, HTML% & CSS3, and Ruby"
    luv_list = options[:luv_list]
    visit "/luv_lists"
    within dom_id(luv_list) do
      click_link "edit"
    end
    expect(page).to have_content("Editing Luv List")

    fill_in "Title", with: options[:title]
    fill_in "Description", with: options[:description]
    click_button "Update Luv list"
    luv_list.reload

  end

  it "updates a luv list successfully with correct information" do

    update_luv_lists luv_list: luv_list, title: "New title", description: "New description"
    luv_list.reload
    expect(page).to have_content("Luv list was successfully updated.")
    expect(luv_list.title).to eq("New title")
    expect(luv_list.description).to eq("New description")

  end

  it "displays an error when the luv list has no Title" do
    update_luv_lists luv_list: luv_list, title: ""
    expect(page).to have_content("error")
    title = luv_list.title
    luv_list.reload
    expect(luv_list.title).to eq(title)

  end

  it "displays an error when the luv list has a title less than 3 characters" do
    update_luv_lists luv_list: luv_list, title: "Ef"
    expect(page).to have_content("error")

  end

  it "displays an error when the luv list has no Description" do

    update_luv_lists luv_list: luv_list, description: ""
    expect(page).to have_content("error")

  end

  it "displays an error when the luv list has no Description" do

    update_luv_lists luv_list: luv_list, description: "Swift is super amazing and I appreciate that is my coding language at work. I appreciate as well that I use XCode and I am super happy that my technology is apple. I am super excite with what I do, woohooo"
    expect(page).to have_content("error")

  end


end
