class OrdersController < ApplicationController
  before_action :authenticate_user!
  def create
    @products = Product.find(params[:product_id])
    @orders = Order.new(product:@products, user: current_user)

    if @orders.save
      redirect_to root_path, notice: 'Se agrego el producto'
    else
      redirect_to root_path, alert: 'No se pudo agregar el producto'
    end
  end

  def index
    @orders = current_user.orders
  end
end
