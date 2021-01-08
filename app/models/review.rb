class Review < ApplicationRecord

	require 'elasticsearch/model'

    include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks

    Review.import(force: true)

  	validates :title, presence: true, length: { maximum: 140 }
  	validates :content, presence: true
  	validates :description, presence: true
  
  	class << self
  		def search(query_string)
      		__elasticsearch__.search(
		        {
		          query: {
		            multi_match: {
		              query: "#{query_string}",
		              fields: ['title^10']
		            }
		          }
		        }
      		)
      	end
    end

end