class Order < ApplicationRecord
	
	belongs_to :user
	has_many :order_items, dependent: :destroy

	accepts_nested_attributes_for :order_items, allow_destroy: true, reject_if: :all_blank

	validates :name, presence: true
	validates :phone, presence: true
	validates :province, presence: true
	validates :district, presence: true
	validates :address, presence: true
end
