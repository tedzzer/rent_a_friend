class FriendsController < ApplicationController
  def index
    @friends = policy_scope(Friend).order(created_at: :desc)
  end

  def show
    @friend = Friend.find(params[:id])
  end

  def new
    @friend = Friend.new
    authorize @friend
  end

  def create
    @friend = Friend.new(friend_params)
    @friend.user = current_user
    authorize @friend
    if @friend.save!
    redirect_to friends_path
    else
      render :new
    end
  end

  def edit
    @friend = Friend.find(params[:id])
  end

  def update
    @friend = Friend.find(params[:id])
    @friend.update(friend_params)
    authorize @friend
    redirect_to friends_path
  end

  def destroy
    @friend = Friend.find(params[:id])
    @friend.destroy
    authorize @friend
    redirect_to friends_path
  end

  private

  def friend_params
    params.require(:friend).permit(:description, :location, :price)
  end
end
