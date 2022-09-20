class RoomImagesController < ApplicationController
  def index
    @room_images = RoomImage.all
    render template: "room_images/index"
  end

  def new
    @room_image = RoomImage.new
    render template: "room_images/new"
  end

  def create
    @room_image = RoomImage.new(
      room_id: params[:room_image][:room_id],
      url: params[:room_image][:url],
    )
    @room_image.save
    redirect_to "/room_images"
  end

  def show
    @room_image = RoomImage.find_by(id: params[:id])
    render template: "room_images/show"
  end

  # def update
  #   @room_image = Image.find_by(id: params[:id])
  #   room_id: params[:room_image][:room_id],
  #   url: params[:room_image][:url],

  #   @room_image.save
  #   redirect_to "/room_images"
  # end

  def destroy
    @room_image = RoomImage.find_by(id: params[:id])
    @room_image.destroy
    redirect_to "/room_images", status: :see_other
  end
end
