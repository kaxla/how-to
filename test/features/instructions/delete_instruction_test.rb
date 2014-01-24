require "test_helper"

feature "Deleting an instruction" do
  scenario "deleting an existing instruction" do
    # Given a list of existing posts with delete option
    visit instructions_path

    # When I select a post and then select delete
    click_link("Destroy", href: "instructions/#{instructions(:firstinstruction).id}")

    # Then the post is deleted
    page.wont_have_content instruction(:firstinstruction).title
  end
end
