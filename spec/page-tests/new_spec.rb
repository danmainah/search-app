require "rails_helper"

RSpec.feature "Users can view Searched Texted" do
    it "by clicking the Show link" do
    @article2 = Analytic.create(text: "mimi mimi")
    visit "/analytics"
    expect(page).to have_content "mimi mimi"
  end
end