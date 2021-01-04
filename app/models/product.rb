class Product < ApplicationRecord

  has_many :comments
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

  scope :filter_by_surface, ->{
  	joins(:model).merge(Model.surface)
  }

  scope :filter_by_dell, ->{
    joins(:model).merge(Model.dell)
  }

end


  scope :price_min, lambda{|min| where(['price >= ?', min])}
  scope :price_max, lambda{|max| where(['price <= ?', max])}
  scope :from10to15, -> {joins(:prices).where('prices.price >= 10000000 && prices.price <=15000000')}
  scope :from15to20, -> {joins(:prices).where('prices.price >= 15000000 && prices.price <=20000000')}
  scope :from20to25, -> {joins(:prices).where('prices.price >= 20000000 && prices.price <=25000000')}
  scope :from25to30, -> {joins(:prices).where('prices.price >= 25000000 && prices.price <=30000000')}
  scope :from30to40, -> {joins(:prices).where('prices.price >= 30000000 && prices.price <=40000000')}
  scope :from40to50, -> {joins(:prices).where('prices.price >= 40000000 && prices.price <=50000000')}
  scope :from50, -> {joins(:prices).where('prices.price >= 50000000')}

end
