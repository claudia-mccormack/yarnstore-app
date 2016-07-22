class ProductsController < ApplicationController
  def index
    @all_products = Yarn.all
    render "index.html.erb"
  end

  def show
    @yarn = Yarn.find_by(id: params[:id])
  end

  def new
    render "new.html.erb"
  end

  def add_yarn_post
    Yarn.create(
      name: params[:name],
      fiber: params[:fiber],
      price: params[:price],
      color: params[:color],
      image: params[:image]
    )
    render "add_yarn.html.erb"
  end

  def stroll
  end

  def hawthorne
  end

  def stripey
  end

  def comfy
  end

  def gloss
  end

end
