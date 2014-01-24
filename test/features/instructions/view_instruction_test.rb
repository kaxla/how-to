require "test_helper"

feature "Showing a single instruction" do
  scenario "I go to a single instruction page" do
    # Given a single project

    # When I go to a single project's page
    visit instructions_path(instructions(:firstinstruction).id)

    # Then I only see that project
    page.text.must_include instructions(:firstinstruction).title
    page.text.must_include instructions(:firstinstruction).summary
  end
end

feature "adding steps to instructions" do
  scenario "I want to add a step to an instruction" do
  # Given an existing instruction
  visit new_instruction_step_path(instructions(:firstinstruction).id)

  # When I click "add step", fill in the form, and click submit
  click_link "Add Step"
  fill_in "Step number", with: steps(:firststep).step_number
  fill_in "Step Instructions", with: steps(:firststep).body
  click_on "Submit"

  # Then the step appears as a link on the page
  page.text.must_include steps(:firststep).step_number
  page.text.must_include steps(:firststep).body
  end
end
