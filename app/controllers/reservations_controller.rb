class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
    render template: "reservations/index"
  end

  def show
    @reservation = Reservation.find_by(id: params[:id])
    render template: "reservations/show"
  end

  def new
    @reservation = Reservation.new
    render template: "reservations/new"
  end

  def create
    @reservation = Reservation.new(
      user_id: params[:reservation][:user_id],
      room_id: params[:reservation][:room_id],
      start_date: params[:reservation][:start_date],
      end_date: params[:reservation][:end_date],
      price: params[:reservation][:price],
      start_date: params[:reservation][:start_date],
    )
    @reservation.save
    redirect_to "/reservations"
  end
end
