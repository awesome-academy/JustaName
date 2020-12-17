class LaptopsController < ApplicationController
#   def index
#     @q = Laptop.ransack(params[:q])
#     @laptops = @search.result
#   end
def index
    @Laptop = current_user.laptops.build
    #if params[:auto]
        @laptops = Laptop.where(title: params[:title])	
    #else
        @q = Laptop.ransack(params[:q])
        @laptops = @q.result.paginate(page: params[:page])
    #end
    respond_to do |format|
        format.html {}
        format.json
    end
end
end
