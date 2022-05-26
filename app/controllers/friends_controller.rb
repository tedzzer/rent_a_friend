class FriendsController < ApplicationController
  def index
    @friends = policy_scope(User).order(created_at: :desc)
  end

  def show
    @friend= User.find(params[:id])
    authorize @friend
  end

  def destroy
    @friend = Friend.find(params[:id])
    @friend.destroy
    authorize @friend
    redirect_to friends_path
  end

  private

  def friend_params
    params.require(:friend).permit(:name, :age, :description, :location, :price)
  end
end
