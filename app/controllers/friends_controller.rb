class FriendsController < ApplicationController
  def index
    @friends = User.all
  end

  def show
    @friend = User.find(params[:id])
  end

  def destroy
    @friend = User.find(params[:id])
    @friend.destroy
    redirect_to friends_path
  end

  private

  def friend_params
    params.require(:friend).permit(:name, :age, :description, :location, :price)
  end
end
