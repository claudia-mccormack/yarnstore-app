class CartedYarnsController < ApplicationController
  def create
    @order = Order.find_by(id: params[:id])
    @carted = CartedYarn.new(
    user_id: current_user.id,
    yarn_id: params[:yarn_id],
    quantity: params[:quantity],
    status: "carted",

    )
    @carted.save
    redirect_to "/carted_yarns"
  end

  def index
    @carted = CartedYarn.where(user_id: current_user.id, status: "carted")
    if @carted.count == 0
      redirect_to "/yarns"
      flash[:info] = "Looks like your cart is empty - check out some of our sock yarns!"
    else
      render "index.html.erb"
    end
  end

  def destroy
    removed = CartedYarn.find_by(id: params[:id])
    removed.update(status: "removed")
    flash[:success] = "#{removed.yarn.name} removed successfully."
    redirect_to "/carted_yarns"
  end

end
