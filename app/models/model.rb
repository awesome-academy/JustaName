class Model < ApplicationRecord
  belongs_to :brand
  has_many :products

  validates :name, presence: true
  validates :brand_id, presence: true

  enum brand: { macbook: 1, surface: 2, dell: 3, hp: 4, razer: 5, acer: 6, asus: 7, lenovo: 8, lg: 9, msi: 10 }

  scope :macbook_pro, ->{ where("id > 0 AND id < 9") }

  scope :macbook_air, ->{ where("id > 8 AND id < 17") }

  scope :surface_pro, ->{ where("id > 16 AND id < 22") }

  scope :surface_laptop, ->{ where("id > 21 AND id < 26") }

  scope :surface_book, ->{ where("id > 25 AND id < 29") }

  scope :surface_go, ->{ where("id > 28 AND id < 32") }

end
