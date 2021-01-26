class Price < ApplicationRecord

  	belongs_to :product
  	has_many :configurations, dependent: :destroy
  	has_many :order_items


  	validates :price, presence: true
  	validates :cpu, presence: true
  	validates :ram, presence: true

  	enum cpu: { corei3: 1, corei5: 2, corei7: 3, corei9: 4, xeon: 5, ryzen3: 6, ryzen5: 7, ryzen7: 8, ryzen9: 9 }

  	enum ram: { ram4: 1, ram8: 2, ram16: 3, ram32: 4, ram64: 5 }

  	accepts_nested_attributes_for :configurations, allow_destroy: true, reject_if: :all_blank

  	rails_admin do
	    nested do
	      	configure :product do
	        	hide
	      	end
	    end
	end

end
