require 'spec_helper'

describe "viewing luvli_items" do
  let!(:luv_list) { LuvList.create(title: "Appreciation to Ruby", description: "I appreciate Rails and all related technologies in the AoTK") }

  it "displays the title of the luv_list" do
    visit_luv_list(luv_list)
    expect(page).to have_content(luv_list.title)

  end
  it "displays no items when luv_list is empty" do
    visit_luv_list(luv_list)
    expect(page.all("table.luvli_items li").size).to eq(0)
  end

  it "displays items when luv_list has items" do
    luv_list.luvli_items.create(content: "Appreciation to capybara")
    luv_list.luvli_items.create(content: "Appreciation to rspec-rails")

    visit_luv_list(luv_list)
    expect(page.all("table.luvli_items td").size).to eq(6)
    within("table.luvli_items") do
      expect(page).to have_content("Appreciation to capybara")
      expect(page).to have_content("Appreciation to rspec-rails")
    end

  end


end
