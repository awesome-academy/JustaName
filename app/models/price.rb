class Price < ApplicationRecord

  	belongs_to :product
  	has_many :configurations, dependent: :destroy
  	has_many :order_items


  	validates :price, presence: true

  	accepts_nested_attributes_for :configurations, allow_destroy: true, reject_if: :all_blank

  	rails_admin do
	    nested do
	      	configure :product do
	        	hide
	      	end
	    end
	end

  validates :price, presence: true

end
