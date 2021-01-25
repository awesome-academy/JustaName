class Order < ApplicationRecord
	
	belongs_to :user
	has_many :order_items, dependent: :destroy

	accepts_nested_attributes_for :order_items, allow_destroy: true, reject_if: :all_blank

	validates :name, presence: true
	validates :phone, presence: true
	validates :province, presence: true
	validates :district, presence: true
	validates :address, presence: true

	enum status: { processing: 1, confirm: 2, completed: 3 }

	def purchase
		response = EXPRESS_GATEWAY.purchase(order.total_amount_cents, express_purchase_options)
		cart.update_attribute(:purchased_at, Time.now) if response.success?
		response.success?
	  end
	
	  def express_token=(token)
		self[:express_token] = token
		if new_record? && !token.blank?
		  # you can dump details var if you need more info from buyer
		  details = EXPRESS_GATEWAY.details_for(token)
		  self.express_payer_id = details.payer_id
		end
	  end
	
	  private
	
	  def express_purchase_options
		{
		  :ip => ip,
		  :token => express_token,
		  :payer_id => express_payer_id
		}
	  end
end
