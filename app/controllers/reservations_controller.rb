class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
    render template: "reservations/index"
  end
end
