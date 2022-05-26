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
    @reservation.user = current_user

    authorize @reservation

    if @reservation.save
      redirect_to friend_path(@friend)
    else
      render :new
    end
  end

  def edit
    authorize @reservation
  end

  def update
    authorize @reservation

    if params[:accepted].present?
      @reservation.update(status: params[:accepted])
    else
      @reservation.update(reservation_params)
    end

    redirect_to reservations_path
  end

  def destroy
    @reservation.destroy
    redirect_to reservations_path
  end

  private

  def reservation
    @reservation ||= Reservation.find(params[:id])
  end

  def set_friend
    @friend = Friend.find(params[:friend_id])
  end

  def reservation_params
    params.require(:reservation).permit(:start_date, :location, :end_date, :comment)
  end
end
