require 'spec_helper'

describe "deleting luvli_items" do
  let!(:luv_list) { LuvList.create(title: "Appreciation to Ruby", description: "I appreciate Rails and all related technologies in the AoTK") }
  let!(:luvli_item) { luv_list.luvli_items.create(content: "Great new job") }


  it "is successful" do
    visit_luv_list(luv_list)
    within("table.luvli_items") do
      expect(page).to have_content("Great new job")
    end
    within dom_id(luvli_item) do
      click_link "delete"
    end
    expect(page).to have_content("Luvli item was successfully deleted")
    expect(LuvliItem.count). to eq(0)

  end
end
