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
    flash[:success] = "#{@yarn.name} added successfully!"
    redirect_to "/products/#{@yarn.id}"
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
  flash[:success] = "#{@yarn.name} updated successfully!"
  redirect_to "/products/#{@yarn.id}"
  end

  def destroy
    @yarn = Yarn.find_by(id: params[:id])
    @yarn.destroy
    flash[:warning] = "#{@yarn.name} deleted successfully!"
    redirect_to "/products"
  end


end
