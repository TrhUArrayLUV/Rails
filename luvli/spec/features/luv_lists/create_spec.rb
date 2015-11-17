require 'spec_helper'

describe "creating luv_lists" do
  def create_luv_lists(options ={})
    options[:title] ||= "Love & appreciation to swift"
    options[:description] ||= "Appreciation to Swift, XCode, JavaScript, HTML% & CSS3, and Ruby"

    visit "/luv_lists"
    click_link "new luv list"
    expect(page).to have_content("New Luv List")

    fill_in "Title", with: options[:title]
    fill_in "Description", with: options[:description]
    click_button "Create Luv list"

  end

  it "redirects to the luv list index page on success" do
    create_luv_lists
    expect(page).to have_content("Luv list was successfully created.")
  end

  it "displays an error when the luv list has no Title" do
    expect(LuvList.count).to eq(0)
    create_luv_lists title: ""
    expect(page).to have_content("error")
    expect(LuvList.count).to eq(0)
    visit "/luv_lists"
    expect(page).to_not have_content("Appreciation to Swift, XCode, JavaScript, HTML% & CSS3, and Ruby")
  end

  it "displays an error when the luv list has a title less than 3 characters" do
    expect(LuvList.count).to eq(0)
    create_luv_lists title: "Ef"
    expect(page).to have_content("error")
    expect(LuvList.count).to eq(0)
    visit "/luv_lists"
    expect(page).to_not have_content("Ef")
  end

  it "displays an error when the luv list has no Description" do
    expect(LuvList.count).to eq(0)
    create_luv_lists description: ""
    expect(page).to have_content("error")
    expect(LuvList.count).to eq(0)
    visit "/luv_lists"
    expect(page).to_not have_content("Love & appreciation to swift")
  end

  it "displays an error when the luv list has no Description" do
    expect(LuvList.count).to eq(0)
    create_luv_lists description: "Swift is super amazing and I appreciate that is my coding language at work. I appreciate as well that I use XCode and I am super happy that my technology is apple. I am super excite with what I do, woohooo"
    expect(page).to have_content("error")
    expect(LuvList.count).to eq(0)
    visit "/luv_lists"
    expect(page).to_not have_content("Love & appreciation to swift")
  end


end
