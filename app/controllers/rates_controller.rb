class RatesController < ApplicationController

	def new
		@rate = Rate.new(user_params)
	end

	def create
		if current_user
			@product = Product.find(params[:product_id])
			@rate = @product.rates.new rating_params
			@rate.user = current_user

			if @rate.save!
				redirect_to @rate.product
			else
				render 'new'
			end
		end
	end

	def index
		@rate = Rate.all
	end

	private

	def rating_params
	  params.require(:rate).permit(:star)
	end
end
