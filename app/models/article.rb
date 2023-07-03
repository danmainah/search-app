class Article < ApplicationRecord
    scope :search, -> (query) { where("title LIKE ? OR body LIKE ?", "%#{query}%", "%#{query}%") }
end
