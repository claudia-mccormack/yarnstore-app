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

  def create
    @yarn = Yarn.new(
      name: params[:name],
      fiber: params[:fiber],
      price: params[:price],
      color: params[:color],
      image: params[:image]
    )
    @yarn.save
    render "create.html.erb"
  end

  def edit
    @yarn = Yarn.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    @yarn = Yarn.find_by(id: params[:id])
    @yarn.update(
      name: params[:name],
      fiber: params[:fiber],
      price: params[:price],
      color: params[:color],
      image: params[:image]
    )
    render "update.html.erb"
  end

  def destroy
    yarn = Yarn.find_by(id: params[:id])
    yarn.destroy
    render "destroy.html.erb"
  end


end
