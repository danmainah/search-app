require 'rails_helper'

RSpec.describe Analytic, :type => :model do
    it "is valid with valid attributes" do
      expect(Analytic.new({text: "wewe wewe"})).to be_valid
    end
  
    it "is not valid without a text" do
        expect(Analytic.new()).to_not be_valid
    end

  end