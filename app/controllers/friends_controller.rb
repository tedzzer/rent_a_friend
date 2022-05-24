class FriendsController < ApplicationController
  def index
    @friends = Friend.all
  end

  def show
    @friend = Friend.find(params[:id])
  end

  def new
    @friend = Friend.new
  end

  def create
    @friend = Friend.new(friend_params)
    @friend.save
    redirect_to friends_path
  end

  def edit
    @friend = Friend.find(params[:id])
  end

  def update
    @friend = Friend.find(params[:id])
    @friend.update(friend_params)
    redirect_to friends_path
  end

  def destroy
    @friend = Friend.find(params[:id])
    @friend.destroy
    redirect_to friends_path
  end

  private

  def friend_params
    params.require(:friend).permit(:description, :location, :price)
  end
end
