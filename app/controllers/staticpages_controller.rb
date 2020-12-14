class StaticpagesController < ApplicationController
	def home
		@laptops = Laptop.all
	end
end
