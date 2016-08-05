class CartedYarnsController < ApplicationController
  def create
    @order = Order.find_by(id: params[:id])
    @carted = CartedYarn.new(
    user_id: current_user.id,
    yarn_id: params[:yarn_id],
    quantity: params[:quantity],
    status: "carted",
    order_id: params[:order_id]
    )
    @carted.save
    redirect_to "/carted_yarns"
  end

  def index
    @carted = CartedYarn.where(user_id: current_user.id, status: "carted")
    render "index.html.erb"
  end

end
