class ShopsController < ApplicationController

  	def index
  		if params[:filter_brand]
	      	@products = Product.send(params[:filter_brand])

	      	if params[:filter_by_price]
	        	@products = []
	        	params[:filter_by_price].each do |filter_by_price|
	          		@products = @products.append(Product.send(params[:filter_brand]).send(filter_by_price)).flatten
	        	end

	        	if params[:filter_by_cpu]
	        		@products = []
		        	params[:filter_by_price].each do |filter_by_price|
		        		params[:filter_by_cpu].each do |filter_by_cpu|
		          			@products = @products.append(Product.send(params[:filter_brand]).send(filter_by_price).send(filter_by_cpu)).flatten
		        		end
		        	end
	        		if params[:filter_by_ram]
	        			@products = []
			        	params[:filter_by_price].each do |filter_by_price|
			        		params[:filter_by_cpu].each do |filter_by_cpu|
			        			params[:filter_by_ram].each do |filter_by_ram|
			          				@products = @products.append(Product.send(params[:filter_brand]).send(filter_by_price).send(filter_by_cpu).send(filter_by_ram)).flatten
			        			end
			        		end
			        	end	
	        		end
	        	elsif params[:filter_by_ram]
	        		@products = []
	        		params[:filter_by_price].each do |filter_by_price|
	        			params[:filter_by_ram].each do |filter_by_ram|
			       			@products = @products.append(Product.send(params[:filter_brand]).send(filter_by_price).send(filter_by_ram)).flatten
			        	end
	        		end
	        	end
	       	elsif params[:filter_by_cpu]
	       		@products = []
	       		params[:filter_by_cpu].each do |filter_by_cpu|
	       			@products = @products.append(Product.send(params[:filter_brand]).send(filter_by_cpu)).flatten
	       		end
	       		if params[:filter_by_ram]
	       			@products = []
	       			params[:filter_by_cpu].each do |filter_by_cpu|
		       			params[:filter_by_ram].each do |filter_by_ram|
		       				@products = @products.append(Product.send(params[:filter_brand]).send(filter_by_cpu).send(filter_by_ram)).flatten
		       			end
		       		end						
	       		end
	       	elsif params[:filter_by_ram]
	       		@products = []
	       		params[:filter_by_ram].each do |filter_by_ram|
			       	@products = @products.append(Product.send(params[:filter_brand]).send(filter_by_ram)).flatten
			   	end
	      	end
	    elsif params[:filter_by_price]
	        @products = []
	        params[:filter_by_price].each do |filter_by_price|
	          	@products = @products.append(Product.send(filter_by_price)).flatten
	        end
	        if params[:filter_by_cpu]
	        	@products = []
	        	params[:filter_by_price].each do |filter_by_price|
	        		params[:filter_by_cpu].each do |filter_by_cpu|
		          		@products = @products.append(Product.send(filter_by_price).send(filter_by_cpu)).flatten
		          	end
		        end	
	        	if params[:filter_by_ram]
	        		@products = []
		        	params[:filter_by_price].each do |filter_by_price|
		        		params[:filter_by_cpu].each do |filter_by_cpu|
		        			params[:filter_by_ram].each do |filter_by_ram|
			          			@products = @products.append(Product.send(filter_by_price).send(filter_by_cpu).send(filter_by_ram)).flatten
			          		end
			          	end
			        end	
	        	end
	        elsif params[:filter_by_ram]
	        	@products = []
	        	params[:filter_by_price].each do |filter_by_price|
	        		params[:filter_by_ram].each do |filter_by_ram|
			       		@products = @products.append(Product.send(filter_by_price).send(filter_by_ram)).flatten
			        end
	        	end
	        end
	    elsif params[:filter_by_cpu]
	    	@products = []
	    	params[:filter_by_cpu].each do |filter_by_cpu|
	    		@products = @products.append(Product.send(filter_by_cpu)).flatten
	    	end
	    	if params[:filter_by_ram]
	    		@products = []
		    	params[:filter_by_cpu].each do |filter_by_cpu|
		    		params[:filter_by_ram].each do |filter_by_ram|
		    			@products = @products.append(Product.send(filter_by_cpu).send(filter_by_ram)).flatten
		    		end
		    	end	
	    	end
	    elsif params[:filter_by_ram]
	    	@products = []
	    	params[:filter_by_ram].each do |filter_by_ram|
		    	@products = @products.append(Product.send(filter_by_ram)).flatten
		    end
	    else
	        @products =Product.all
	    end

	    @pagy_a, @products = pagy_array(@products.sort_by { |product| product.created_at }.reverse)

	    if params[:sort_by] == "latest"
	    	@pagy_a, @products = pagy_array(@products.sort_by { |product| product.created_at }.reverse)
	    end

	    # # if params[:sort_by] = ["selling"]
	    # # 	@products = @products.sort_by { |product| product. }.reverse
	    # # end

	    if params[:sort_by] == "price_asc"
	    	@pagy_a, @products = pagy_array(@products.sort_by { |product| product.prices.first.price })
	    end

	    if params[:sort_by] == "price_desc"
	    	@pagy_a, @products = pagy_array(@products.sort_by { |product| product.prices.first.price }.reverse)
	    end

  	end
  	
end
