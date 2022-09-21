class ReservationsController < ApplicationController
  def index
    @reservations = current_user.reservations
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
    room = Room.find_by(id: params[:reservation][:room_id])
    price = room.price
    # subtotal = (params[:end_date] - [:start_date]) * price
    # tax = 0.09 * subtotal
    # total = tax + subtotal
    total = price
    @reservation = Reservation.new(
      user_id: current_user.id,
      room_id: params[:reservation][:room_id],
      start_date: params[:reservation][:start_date],
      end_date: params[:reservation][:end_date],
      price: params[:reservation][:price],
      start_date: params[:reservation][:start_date],
      price: total,
      total_guests: params[:reservation][:total_guests],
    )
    @reservation.price = price * (@reservation.end_date - @reservation.start_date).to_i / 86400.0

    @reservation.save
    redirect_to "/reservations"
  end

  def edit
    @reservation = Reservation.find_by(id: params[:id])
    render template: "reservations/edit"
  end

  def update
    @reservation = Reservation.find_by(id: params[:id])
    @reservation.user_id = params[:reservation][:user_id]
    @reservation.room_id = params[:reservation][:room_id]
    @reservation.start_date = params[:reservation][:start_date]
    @reservation.end_date = params[:reservation][:end_date]
    @reservation.price = params[:reservation][:price]
    @reservation.total_guests = params[:reservation][:total_guests]
    @reservation.save
    redirect_to "/reservations"
  end

  def destroy
    @reservation = Reservation.find_by(id: params[:id])
    @reservation.destroy
    redirect_to "/reservations", status: :see_other
  end
end
