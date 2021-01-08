class CommentsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @comment = @product.comments.create comment_params

    respond_to do |format|
      format.html {render partial: 'comment', locals: {comment: @comment} }
    end
  end

  def destroy
    @product = Product.find(params[:product_id])
    @comment = @product.comments.find(params[:id])
    @comment.destroy
    respond_to do |format|
        format.html {redirect_to product_url(@product)}
        format.json {render json: {result: 'OK', id: params[:id]} }
      end
  end

  private

  def comment_params
    params[:comment].permit(:content, :user_id)
  end

end
