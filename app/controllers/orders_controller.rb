class OrdersController < ApplicationController
  def show
    @order = Order.find_by(id: params[:id])
    render "show.html.erb"
  end

  def create
    # alternate route:
    # subtotal = 0
    # carted_products.each do |cared_product|
    #   subtotal += carted_product.product.proce * carted_product*quantity
    # end
    # tax = subtotal * 0.09
    # total = subtotal + tax
    @order = Order.new(
    user_id: current_user.id,
    # subtotal: subtotal,
    # tax: tax,
    # total: total
    )
    @selected = CartedYarn.where(user_id: current_user.id, status: "carted")
      selected_subtotal = @selected.map{|yarn| yarn.yarn.price.to_i * yarn.quantity}.inject(:+)
      @order.subtotal = selected_subtotal
      @order.tax = selected_subtotal * 0.09
      @order.total = selected_subtotal + @order.tax
      @order.save
    @selected.each do |update_status|
      update_status.update(order_id: @order.id, status: "purchased")
      # or call update_all on a selection from CartedYarn
    end

    flash[:success] = "Order successful!"
    redirect_to "/orders/#{@order.id}"
  end
end
