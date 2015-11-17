require 'spec_helper'

describe "deleting luv lists" do

  let!(:luv_list) { LuvList.create(title: "Appreciation to Swift", description: "appreciate XCode and all related technologies") }

  it "is successful when clicking the destoy button" do

    visit "/luv_lists"
    within dom_id(luv_list) do
      click_link "destroy"
    end



    expect(page).to_not have_content(luv_list.title)
    expect(page).to have_content("Luv list was successfully destroyed.")
    expect(LuvList.count).to eq(0)

  end
end
