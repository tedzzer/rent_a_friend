class ReviewsController < ApplicationController

  def new
    @friend = Friend.find(params[:friend_id])
    @review = Review.new
    authorize @review
  end

  def create
    @friend = Friend.find(params[:friend_id])
    @review = Review.new(review_params)
    @review.user = current_user
    @review.friend = @friend
    authorize @review
    if @review.save
      redirect_to friend_path(@friend)
    else
      render :new
    end
  end

  def edit
    @review = Review.find(params[friend_id])
  end

  def update
    @friend = Friend.find(params[:friend_id])
    @review = Review.find(review_params)
    @review.user = current_user
    if @review.update(review_params)
      redirect_to friends_path
    else
      render :edit
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
