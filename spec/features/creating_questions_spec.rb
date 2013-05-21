require "spec_helper"

feature "creating questions" do

  scenario "can create a question" do
    visit "/"
    fill_in "Name", with: "why?"
    click_on "Create Question"
    page.should have_content "Question created"
  end

end
