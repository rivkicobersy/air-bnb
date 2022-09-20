class RoomsController < ApplicationController
  def index
    @rooms = Room.all
    render template: "rooms/index"
  end
end
