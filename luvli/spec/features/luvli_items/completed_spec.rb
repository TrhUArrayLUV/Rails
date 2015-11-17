require 'spec_helper'

describe "Completing luvli_items" do
  let!(:luv_list) { LuvList.create(title: "Appreciation to Ruby", description: "I appreciate Rails and all related technologies in the AoTK") }
  let!(:luvli_item) { luv_list.luvli_items.create(content: "Great new job") }

  it "is successful when marking a single item complete" do
    expect(luvli_item.completed_at).to be_nil
    visit_luv_list(luv_list)
    within dom_id(luvli_item) do
      click_link "mark complete"
    end
    luvli_item.reload
    expect(luvli_item.completed_at).to_not be_nil
  end
  context "with completed items" do
    let!(:completed_luvli_item) { luv_list.luvli_items.create(content: "Great new job", completed_at: 5.minutes.ago) }
    it "show completed items as complete" do
      visit_luv_list(luv_list)
      within dom_id(completed_luvli_item) do
        expect(page).to have_content(completed_luvli_item.completed_at)
      end
    end

    it "does not show the option to mark as complete" do
      visit_luv_list(luv_list)
      within dom_id(completed_luvli_item) do
        expect(page).to_not have_link("mark complete")
      end
    end

  end

end
