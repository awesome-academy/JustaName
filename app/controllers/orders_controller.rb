class OrdersController < ApplicationController

	before_action :authenticate_user!, only: :create

	def create
		@order = current_user.orders.build order_params
		if @order.save
			redirect_to root_path
		end
	end

	private

	def order_params
		params.require(:order).permit(:name, :phone, :province, :district, :address, order_items_attributes: [:id, :price_id, :quantity])
	end
end
