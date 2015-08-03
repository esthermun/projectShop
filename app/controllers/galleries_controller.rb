class GalleriesController < ApplicationController
  def index
  	@galleries = Gallery.all
  	@gallery = Gallery.new
  end

  def create
  	@gallery = Gallery.new (gallery_params)

  	if @gallery.save
  		render json: {message: "success", fileID: @gallery.id}, :status => 200
  	else
  		render json: {error: @gallery.erros.full_messages.join(',')}, :status => 400
  	end
  end

  private
  def gallery_params
  	params.require(:gallery).permit(:image)
  end
end
