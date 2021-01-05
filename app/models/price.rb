class Price < ApplicationRecord

  belongs_to :product
  has_many :configurations, dependent: :destroy

  accepts_nested_attributes_for :configurations, allow_destroy: true, reject_if: :all_blank

  validates :price, presence: true
  validates :product_id, presence: true

  rails_admin do
	    nested do
	      	configure :product do
	        	hide
	      	end
	    end
	end

end
