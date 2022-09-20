class RoomImagesController < ApplicationController
  def index
    @room_images = RoomImage.all
    render template: "room_images/index"
  end

  #   #def create
  #     image = Image.new(
  #       room_id: params[:room_id],
  #       url: params[:url]

  #     )
  #     image.save
  #     render template: "images/create"
  #   end

  #   def show
  #     @images = Image.find_by(id: params[:id])
  #     render template: "images/show"
  #   end

  #   def update
  #     image = Image.find_by(id: params[:id])
  #     image.room_id = params[:room_id] || image.room_id
  #     image.url = params[:url] || image.url

  #     image.save
  #     render template: "images/update"
  #   end

  #   def destroy
  #     image = Image.find_by(id: params[:id])
  #     image.destroy
  #     render json: { message: "Image successfully destroyed." }
  #   end
  # end

end
