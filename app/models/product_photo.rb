class ProductPhoto < ApplicationRecord

	mount_uploader :photo, PhotoUploader
	belongs_to :product

	rails_admin do
	    nested do
	      	configure :product do
	        	hide
	      	end
	    end
	end

end
