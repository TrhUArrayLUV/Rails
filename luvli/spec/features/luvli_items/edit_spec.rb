require 'spec_helper'

describe "updating luvli_items" do
  let!(:luv_list) { LuvList.create(title: "Appreciation to Ruby", description: "I appreciate Rails and all related technologies in the AoTK") }
  let!(:luvli_item) { luv_list.luvli_items.create(content: "Great new job") }

  def prepare_edit(list)
    visit_luv_list(list)
    within("table.luvli_items") do
      expect(page).to have_content("Great new job")
    end
    within dom_id(luvli_item) do
      click_link "edit"
    end

  end

  it 'is successful with valid content' do
    prepare_edit(luv_list)
    fill_in "Content", with: "Appreciation for an amazing new iOS programming job"
    click_button "save"
    expect(page).to have_content("Updated luvli")
    luvli_item.reload
    expect(luvli_item.content).to eq("Appreciation for an amazing new iOS programming job")
  end

  it 'is unsuccessful with no content' do
    prepare_edit(luv_list)
    fill_in "Content", with: ""
    click_button "save"
    expect(page).to have_content("Content can't be blank")
    expect(page).to have_content("Unable to update luvli")
    luvli_item.reload
    expect(luvli_item.content).to eq("Great new job")

  end

  it 'is unsuccessful with short content' do
    prepare_edit(luv_list)
    fill_in "Content", with: "Ef"
    click_button "save"
    expect(page).to have_content("Content is too short")
    expect(page).to have_content("Unable to update luvli")
    luvli_item.reload
    expect(luvli_item.content).to eq("Great new job")

  end

end
