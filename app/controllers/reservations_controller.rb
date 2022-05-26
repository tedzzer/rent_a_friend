class ReservationsController < ApplicationController
  before_action :set_friend, only: [ :new, :create ]

  def new
    @reservation = Reservation.new
    @reservation.friend = @friend
    authorize @reservation
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.friend = @friend
    authorize @reservation
    if @reservation.save!
      redirect_to friend_path(@friend)
    else
      render :new
    end
  end

  def edit
    @reservation = Reservation.find(params[:id])
    authorize @reservation
  end

  def update
    @reservation = Reservation.find(params[:id])
    @reservation.update(reservation_params)
    authorize @reservation
    redirect_to reservations_path
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to reservations_path
  end

  private

  def set_friend
    @friend = Friend.find(params[:friend_id])
  end

  def reservation_params
    params.require(:reservation).permit(:start_date, :location, :end_date, :comment)
  end
end
