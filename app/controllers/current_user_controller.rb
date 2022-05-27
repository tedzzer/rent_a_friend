class CurrentUserController < ApplicationController
  def show
    @reservations = current_user.reservations
  end
end
