require "test_helper"

feature "Edit an instruction" do
  scenario "edit something from an existing instruction" do
    # Given an existing post with an edit link
    visit instruction_path(instructions(:firstinstruction))

    # When I fill form and submit edits
    click_on "Edit"
    fill_in "Summary", with: instructions(:secondinstruction).summary
    click_button "Update Instruction"

    # Then The post should update and show confirmation
    page.text.must_include instructions(:firstinstruction).title
    page.text.must_include instructions(:secondinstruction).summary
  end
end
