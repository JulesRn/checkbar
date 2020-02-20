class ReviewsController < ApplicationController
  def new
    @bar = Bar.find(params[:bar_id])
    @user = current_user
    @review = Review.new
    skip_authorization
  end

  def create
    @bar = Bar.find(params[:bar_id])
    @review = Review.new(review_params)
    @review.user = current_user
    @review.bar = @bar
    skip_authorization

    if @review.save
      redirect_to bar_path(@bar)
    else
      render "bars/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
