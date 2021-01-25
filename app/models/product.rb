class Product < ApplicationRecord

  has_many :comments
  has_many :rates
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

  scope :filter_by_macbook, ->{joins(:model).merge(Model.macbook)}

  scope :filter_by_surface, ->{joins(:model).merge(Model.surface)}

  scope :filter_by_dell, ->{joins(:model).merge(Model.dell)}

  scope :filter_by_hp, ->{joins(:model).merge(Model.hp)}

  scope :filter_by_razer, ->{joins(:model).merge(Model.razer)}

  scope :filter_by_acer, ->{joins(:model).merge(Model.acer)}

  scope :filter_by_asus, ->{joins(:model).merge(Model.asus)}

  scope :filter_by_lenovo, ->{joins(:model).merge(Model.lenovo)}

  scope :filter_by_lg, ->{joins(:model).merge(Model.lg)}

  scope :filter_by_msi, ->{joins(:model).merge(Model.msi)}

  #macbook pro
  scope :macbook_pro, ->{joins(:model).where('models.id = 1 OR models.id = 2 OR models.id = 3 OR models.id = 4 OR models.id = 5 OR models.id = 6 OR models.id = 7 OR models.id = 8')}
  scope :model1, ->{joins(:model).where('models.id = 1')}
  scope :model2, ->{joins(:model).where('models.id = 2')}
  scope :model3, ->{joins(:model).where('models.id = 3')}
  scope :model4, ->{joins(:model).where('models.id = 4')}
  scope :model5, ->{joins(:model).where('models.id = 5')}
  scope :model6, ->{joins(:model).where('models.id = 6')}
  scope :model7, ->{joins(:model).where('models.id = 7')}
  scope :model8, ->{joins(:model).where('models.id = 8')}

  #macbook air
  scope :macbook_air, ->{joins(:model).where('models.id = 9 OR models.id = 10 OR models.id = 11 OR models.id = 12 OR models.id = 13 OR models.id = 14 OR models.id = 15 OR models.id = 16')}
  scope :model9, ->{joins(:model).where('models.id = 9')}
  scope :model10, ->{joins(:model).where('models.id = 10')}
  scope :model11, ->{joins(:model).where('models.id = 11')}
  scope :model12, ->{joins(:model).where('models.id = 12')}
  scope :model13, ->{joins(:model).where('models.id = 13')}
  scope :model14, ->{joins(:model).where('models.id = 14')}
  scope :model15, ->{joins(:model).where('models.id = 15')}
  scope :model16, ->{joins(:model).where('models.id = 16')}

  #surface pro
  scope :surface_pro, ->{joins(:model).where('models.id = 17 OR models.id = 18 OR models.id = 19 OR models.id = 20 OR models.id = 21')}
  scope :model17, ->{joins(:model).where('models.id = 17')}
  scope :model18, ->{joins(:model).where('models.id = 18')}
  scope :model19, ->{joins(:model).where('models.id = 19')}
  scope :model20, ->{joins(:model).where('models.id = 20')}
  scope :model21, ->{joins(:model).where('models.id = 21')}

  #surface laptop
  scope :surface_laptop, ->{joins(:model).where('models.id = 22 OR models.id = 23 OR models.id = 24 OR models.id = 25')}
  scope :model22, ->{joins(:model).where('models.id = 22')}
  scope :model23, ->{joins(:model).where('models.id = 23')}
  scope :model24, ->{joins(:model).where('models.id = 24')}
  scope :model25, ->{joins(:model).where('models.id = 25')}

  #surface book
  scope :surface_book, ->{joins(:model).where('models.id = 26 OR models.id = 27 OR models.id = 28')}
  scope :model26, ->{joins(:model).where('models.id = 26')}
  scope :model27, ->{joins(:model).where('models.id = 27')}
  scope :model28, ->{joins(:model).where('models.id = 28')}

  #surface go
  scope :surface_go, ->{joins(:model).where('models.id = 29 OR models.id = 30 OR models.id = 31')}
  scope :model29, ->{joins(:model).where('models.id = 29')}
  scope :model30, ->{joins(:model).where('models.id = 30')}
  scope :model31, ->{joins(:model).where('models.id = 31')}

  # dell
  scope :model32, ->{joins(:model).where('models.id = 32')}
  scope :model33, ->{joins(:model).where('models.id = 33')}
  scope :model34, ->{joins(:model).where('models.id = 34')}
  scope :model35, ->{joins(:model).where('models.id = 35')}
  scope :model36, ->{joins(:model).where('models.id = 36')}

  # hp
  scope :model37, ->{joins(:model).where('models.id = 37')}
  scope :model38, ->{joins(:model).where('models.id = 38')}
  scope :model39, ->{joins(:model).where('models.id = 39')}
  scope :model40, ->{joins(:model).where('models.id = 40')}
  scope :model41, ->{joins(:model).where('models.id = 41')}
  scope :model42, ->{joins(:model).where('models.id = 42')}

  #razer
  scope :model43, ->{joins(:model).where('models.id = 43')}
  scope :model44, ->{joins(:model).where('models.id = 44')}
  scope :model45, ->{joins(:model).where('models.id = 45')}

  #acer
  scope :model46, ->{joins(:model).where('models.id = 46')}
  scope :model47, ->{joins(:model).where('models.id = 47')}
  scope :model48, ->{joins(:model).where('models.id = 48')}
  scope :model49, ->{joins(:model).where('models.id = 49')}

  #asus
  scope :model50, ->{joins(:model).where('models.id = 50')}
  scope :model51, ->{joins(:model).where('models.id = 51')}
  scope :model52, ->{joins(:model).where('models.id = 52')}
  scope :model53, ->{joins(:model).where('models.id = 53')}

  #lenovo
  scope :model54, ->{joins(:model).where('models.id = 54')}
  scope :model55, ->{joins(:model).where('models.id = 55')}
  scope :model56, ->{joins(:model).where('models.id = 56')}
  scope :model57, ->{joins(:model).where('models.id = 57')}
  scope :model58, ->{joins(:model).where('models.id = 58')}
  scope :model59, ->{joins(:model).where('models.id = 59')}

  #lg
  scope :model60, ->{joins(:model).where('models.id = 60')}

  #msi
  scope :model61, ->{joins(:model).where('models.id = 61')}

  scope :price_min, lambda{|min| where(['price >= ?', min])}
  scope :price_max, lambda{|max| where(['price <= ?', max])}

  scope :priceto10, -> {joins(:prices).where('prices.price <= 10000000')}
  scope :pricefrom10to20, -> {joins(:prices).where('prices.price >= 10000000 && prices.price <= 20000000')}
  scope :pricefrom20to30, -> {joins(:prices).where('prices.price >= 20000000 && prices.price <= 30000000')}
  scope :pricefrom30to40, -> {joins(:prices).where('prices.price >= 30000000 && prices.price <= 40000000')}
  scope :pricefrom40to50, -> {joins(:prices).where('prices.price >= 40000000 && prices.price <= 50000000')}
  scope :pricefrom50, -> {joins(:prices).where('prices.price >= 50000000')}

  scope :corei3, -> {joins(:prices).where('prices.cpu = 1')}
  scope :corei5, -> {joins(:prices).where('prices.cpu = 2')}
  scope :corei7, -> {joins(:prices).where('prices.cpu = 3')}
  scope :corei9, -> {joins(:prices).where('prices.cpu = 4')}
  scope :xeon, -> {joins(:prices).where('prices.cpu = 5')}
  scope :ryzen3, -> {joins(:prices).where('prices.cpu = 6')}
  scope :ryzen5, -> {joins(:prices).where('prices.cpu = 7')}
  scope :ryzen7, -> {joins(:prices).where('prices.cpu = 8')}
  scope :ryzen9, -> {joins(:prices).where('prices.cpu = 9')}

  scope :ram4, -> {joins(:prices).where('prices.ram = 1')}
  scope :ram8, -> {joins(:prices).where('prices.ram = 2')}
  scope :ram16, -> {joins(:prices).where('prices.ram = 3')}
  scope :ram32, -> {joins(:prices).where('prices.ram = 4')}
  scope :ram64, -> {joins(:prices).where('prices.ram = 5')}

end
