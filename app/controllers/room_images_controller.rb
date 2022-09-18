class RoomImagesController < ApplicationController
    def index
      images = Image.all
      render json: images.as_json
    end
  
    def create
      image = Image.new(
        name: params[:name],
        width: params[:width],
        height: params[:height],
      )
      image.save
      render json: image.as_json
    end
  
    def show
      image = Image.find_by(id: params[:id])
      render json: image.as_json
    end
  
    def update
      image = Image.find_by(id: params[:id])
      image.name = params[:name] || image.name
      image.width = params[:width] || image.width
      image.height = params[:height] || image.height
      image.save
      render json: image.as_json
    end
  
    def destroy
      image = Image.find_by(id: params[:id])
      image.destroy
      render json: { message: "Image successfully destroyed." }
    end
  end
  
end
