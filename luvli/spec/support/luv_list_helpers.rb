module LuvListHelpers
  def visit_luv_list(list)
    visit "/luv_lists"
    within dom_id(list) do 
      click_link "luvli items"
    end
  end
end
