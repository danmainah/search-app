class Article < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  def self.search(query)
    __elasticsearch__.search(
      {
        query: {
          multi_match: {
            query: query,
            fields: ['title', 'text']
          }
        }
      }
    )
  end
  mappings do
    indexes :title,  analyzer: 'english'
    indexes :text,  analyzer: 'english'
  end
  validates :title, presence: true
  validates :text, presence: true
end
