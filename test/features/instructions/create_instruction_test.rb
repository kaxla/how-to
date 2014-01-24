require "test_helper"

feature "As the site owner, I want to add a new how-to (instruction)" do
  scenario "adding a new instruction" do
    visit instructions_path
    click_on "New instruction"
    fill_in "Title", with: instructions(:firstinstruction).title
    fill_in "Summary", with: instructions(:firstinstruction).summary
    click_on "Create Instruction"
    page.text.must_include "created"
    page.text.must_include instructions(:firstinstruction).title
    page.text.must_include instructions(:firstinstruction).summary
  end
end

# feature "As the site owner, I went to add a portfolio" do
#     scenario "new project has invalid data" do
#     #Given invalid project data is submitted to the form
#     visit new_project_path

#     # WHen the form is submitted with a short name and missing technologies used section
#     fill_in "Name", with: "a"
#     click_on "Create Project"

#     # Then the form should re-display with an error message.
#     current_path.must_match /projects$/
#     page.text.must_include "Project could not be saved"
#     page.text.must_include "Name is too short"
#     page.text.must_include "Technologies used can't be blank"
#   end
# end
