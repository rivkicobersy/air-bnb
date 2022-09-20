class RoomsController < ApplicationController
  def index
    @rooms = Room.all
    render template: "rooms/index"
  end

  def show
    @room = Room.find_by(id: params[:id])
    render template: "rooms/show"
  end
end
