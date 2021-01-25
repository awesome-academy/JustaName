class CartsController < ApplicationController
  def show
    @payment = Payment.find_by_transaction_id! params[:id]
  end
end
