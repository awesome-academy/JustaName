class LaptopsController < ApplicationController

	before_action :find_laptop, only: [:show, :destroy]

	def new
		@laptop = Laptop.new
	end

	def create
		@laptop = Laptop.new(laptop_params)
		@laptop.image.attach(params[:laptop][:image])
		if @laptop.save
			redirect_to root_url
		else
			render 'new'
		end
	end

	def show
	end

	def destroy
		@laptop.destroy
		redirect_to root_url
	end

	private

		def laptop_params
			params.require(:laptop).permit(:title, :description, :price, :brand, :image)
		end

		def find_laptop
			@laptop = Laptop.find(params[:id])
		end

end
