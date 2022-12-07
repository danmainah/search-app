require 'rails_helper'

RSpec.describe Article, :type => :model do
    it "is valid with valid attributes" do
      expect(Article.new({title: "mimi mimi", text: "wewe wewe"})).to be_valid
    end
  
    it "is not valid without a title" do
        expect(Article.new({text: "wewe wewe"})).to_not be_valid
    end
    it "is not valid without a text" do
        expect(Article.new({title: "wewe wewe"})).to_not be_valid
    end
  end