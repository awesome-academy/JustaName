class OrdersController < ApplicationController

	before_action :authenticate_user!, only: :create

	def create
		@order = current_user.orders.build order_params
		@order.status = 0
	end

	def index
		@orders = current_user.orders.all
	end

	def show
		@order = Order.find(params[:id])
	end

	private

	def order_params
		params.require(:order).permit(:name, :phone, :province, :district, :address, order_items_attributes: [:id, :price_id, :quantity])
	end
end
