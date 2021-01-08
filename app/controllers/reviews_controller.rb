class ReviewsController < ApplicationController
	#before_action :logged_in_user, only: [:create, :destroy, :new, :index]
	#before_action :correct_user, only: :destroy

	def new
		@review = Review.new
	end

	def create
		@review = Review.new(review_params)
      if @review.save
        flash[:success] = "Review created!"
        redirect_to reviews_url
      else
        render 'new'
      end
	end

	def destroy
	  @review.destroy
	  flash[:success] = "Review deleted"
	  redirect_to request.referrer || pages_review_url
	end

	def show
	  @review = Review.find(params[:id])
	end

	def index
	  @reviews = if params[:q].present?
	    Review.search(params[:q]).results
	  else
	    Review.all
	  end
	end

	private

	  def review_params
		params.require(:review).permit(:title,:description, :content)
      end

      def correct_user
		@review = current_user.reviews.find_by(id: params[:id])
		redirect_to root_url if @review.nil?
	  end

end
