class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :check_for_cart

  def check_for_cart
    if session[:uid]
      @cart = Cart.find(session[:uid])
    else
      @cart = Cart.create
      session[:uid] = @cart
    end
  end


end
