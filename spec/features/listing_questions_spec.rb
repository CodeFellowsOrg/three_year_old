require "spec_helper"

feature "listing questions" do
  let!(:question) { Question.create(name: "why", answer: "because") }
  scenario  "home page lists questions" do
    visit "/"
    page.should have_content question.name
  end

end
