class Search < ApplicationRecord
    validates :query, presence: true, uniqueness: true
end
