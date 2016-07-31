class ImagesController < ApplicationController
  def new
    render "new.html.erb"
  end

  def create
    image = Image.new(product_id: params[:product_id], image_url: params[:image_url])
    image.save
    flash[:success] = "Image added successfully!"
    redirect_to '/images.new'
  end
end
