class Configuration < ApplicationRecord
	
  belongs_to :price

  validates :name, presence: true, length: { maximum: 48 }
  validates :content, presence: true, length: { maximum: 128 }
  validates :price_id, presence: true

  rails_admin do
	    nested do
	      	configure :price do
	        	hide
	      	end
	    end
	end

end
