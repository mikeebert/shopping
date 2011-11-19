class CartsController < ApplicationController
  
  before_filter :check_for_cart

  def index
    @item = Item.new
    @items = @cart.items.all
    @products = Product.all    
  end

  def buy
    @order = Order.new
    @order.cart = Cart.find(session[:uid])
    @order.name = params[:name]
    @order.email = params[:email]
    @order.save
    ReceiptsMailer.purchase_confirmation(@order).deliver
    reset_session
    redirect_to root_url, :notice => "Thank you for order. You will receive an email confirmation shortly."
  end
  
end
