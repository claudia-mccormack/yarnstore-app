class OrdersController < ApplicationController
  def show
    @order = Order.find_by(id: params[:id])
    render "show.html.erb"
  end

  def create
    @selected = CartedYarn.where(user_id: current_user.id, status: "carted")
    @order = Order.new(
    user_id: current_user.id,
    # subtotal: @yarn.price * params[:quantity].to_i,
    # tax: (@yarn.price * params[:quantity].to_i) * 0.09,
    # total: (@yarn.price * params[:quantity].to_i) + (@yarn.price * 0.09)
    )
    @order.save
  
    flash[:success] = "Order successful!"
    redirect_to "/orders/#{@order.id}"
  end
end
