require 'spec_helper'

describe "adding luvli_items" do
  let!(:luv_list) { LuvList.create(title: "Appreciation to Ruby", description: "I appreciate Rails and all related technologies in the AoTK") }



  it 'is successful with valid content' do
    visit_luv_list(luv_list)
    click_link "new luvli"
    fill_in "Content", with: "Appreciation for a great computer & new one super fast"
    click_button "save"
    expect(page).to have_content("Added a new luvli")
    within("table.luvli_items") do
      expect(page).to have_content("Appreciation for a great computer & new one super fast")
    end

  end
  it 'displays an error with no content' do
    visit_luv_list(luv_list)
    click_link "new luvli"
    fill_in "Content", with: ""
    click_button "save"
    expect(page).to have_content("There was a problem adding that luvli item")
    expect(page).to have_content("Content is too short")
  end
end
