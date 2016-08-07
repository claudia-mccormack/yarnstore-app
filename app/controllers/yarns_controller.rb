class YarnsController < ApplicationController
  def index
    @all_products = Yarn.all
    if params[:sort]
      @all_products = Yarn.order(params[:sort])
    end

    if params[:sort_desc]
      @all_products = Yarn.order(params[sort: :desc])
    end

    if params[:sort_discount]
      @all_products = Yarn.where("price <= ?", 10)
    end

    if params[:category]
      category = Category.find_by(name: params[:category])
      @all_products = category.yarns
    end

    render "index.html.erb"
  end

  def show
    if params[:id] == "random"
      @yarn = Yarn.all.sample
    else
      @yarn = Yarn.find_by(id: params[:id])
    end
      render "show.html.erb"
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
    redirect_to "/yarns/#{@yarn.id}"
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
  redirect_to "/yarns/#{@yarn.id}"
  end

  def destroy
    @yarn = Yarn.find_by(id: params[:id])
    @yarn.destroy
    flash[:warning] = "#{@yarn.name} deleted successfully!"
    redirect_to "/yarns"
  end

  def search
    @all_products = Yarn.where("name LIKE ?", "%#{params[:search].downcase}%")
    render "index.html.erb"
  end

end
