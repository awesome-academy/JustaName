class OrdersController < ApplicationController
	before_action :authenticate_user!
	before_action :prepare_new_order, only: [:paypal_create_payment]
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
	def paypal_create_payment
		result = Orders::Paypal.create_payment(order: @order, product: @product)
		if result
		  render json: { token: result }, status: :ok
		else
		  render json: {error: FAILURE_MESSAGE}, status: :unprocessable_entity
		end
	  end
	
	  def paypal_execute_payment
		if Orders::Paypal.execute_payment(payment_id: params[:paymentID], payer_id: params[:payerID])
		  render json: {}, status: :ok
		else
		  render json: {error: FAILURE_MESSAGE}, status: :unprocessable_entity
		end
	  end

	private

	def order_params
		params.require(:order).permit(:name, :phone, :province, :district, :address, order_items_attributes: [:id, :price_id, :quantity])
	end

end
