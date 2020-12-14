class Laptop < ApplicationRecord

	scope :macbook, ->{where brand: 1}
	# scope :macbook_good_price, -> do
	# 	from(
	# 		<<~SQL
	# 			(
	# 				SELECT *
	# 				FROM laptops a
	# 				Where a.brand = 1
	# 				ORDER BY a.price ASC
	# 				LIMIT 6 OFFSET 0;
	# 			) laptops
	# 		SQL
	# 		)
	# end
	def self.macbook_good_price
  		order('price asc').limit(6)
  	end
	scope :surface, ->{where brand: 2}
	scope :dell, ->{where brand: 3}
	scope :razer, ->{where brand: 4}
	scope :asus, ->{where brand: 5}
	scope :lg, ->{where brand: 6}
	scope :hp, ->{where brand: 7}
	scope :acer, ->{where brand: 8}
	scope :lenovo, ->{where brand: 9}
	scope :msi, ->{where brand: 10}

	validates :title, presence: true, length: { maximum: 256 }
	validates :price, presence: true, length: { maximum: 50 }
	validates :brand, presence: true
	validates :description, presence: true

	enum brands: { MACBOOK: 1, SURFACE: 2, Dell: 3, Razer: 4, Asus: 5, LG: 6, HP: 7, Acer: 8, Lenovo: 9, MSI: 10 }

	has_one_attached :image
	validates :image, content_type: { in: %w[image/jpeg image/gif image/png],
									message: "must be a valid image format" },
					   size:  	  { less_than: 5.megabytes,
									message: "should be less than 5MB" }
	

	def display_image
	  image.variant(resize_to_limit: [500, 500])
  	end

  	

end
