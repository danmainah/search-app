require "rails_helper"

RSpec.feature "Users can view Article created >" do
    it "by clicking the Show link" do
    @article2 = Article.create(title: "The Hobbit", text: "mimi mimi")
    visit "/"
    click_link @article2.title
    expect(page).to have_content "The Hobbit"
  end
end
