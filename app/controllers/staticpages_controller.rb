class StaticpagesController < ApplicationController
  def home
  	@products = Product.all
  end
end
