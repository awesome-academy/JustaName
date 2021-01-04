class Product < ApplicationRecord

  belongs_to :model
  has_many :prices, dependent: :destroy
  has_many :product_photos, dependent: :destroy

  accepts_nested_attributes_for :product_photos, allow_destroy: true, reject_if: :all_blank

  accepts_nested_attributes_for :prices, allow_destroy: true, reject_if: :all_blank

  validates :title, presence: true
  validates :description, presence: true
  validates :model_id, presence: true

  def self.search_by_title(title)
    where("LOWER(title) LIKE ?", "%#{title}%")
  end

  scope :filter_by_macbook, ->{
  	joins(:model).merge(Model.macbook)
  }

  scope :filter_by_dell, ->{
  	joins(:model).merge(Model.dell)
  }

end
