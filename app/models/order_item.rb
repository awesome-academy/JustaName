class OrderItem < ApplicationRecord
	belongs_to :order
	belongs_to :price
	
	validates :price_id, presence: true
	validates :quantity, presence: true
end
