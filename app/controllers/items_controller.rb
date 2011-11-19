class ItemsController < ApplicationController
  
  before_filter :check_for_cart
  
  def create
    @item = @cart.items.build
    @item.product = Product.find(params[:product_id])

    respond_to do |format|
      if @item.save
        format.js
        format.html {redirect_to root_url, :notice => "Item added successfully."}
      else
        format.html {redirect_to root_url, :notice => "There was an error adding your item."}
      end
    end
  end
  
  def destroy
    @item = Item.find(params[:id])
    
    respond_to do |format|
      if @item.destroy
        format.js
        format.html { redirect_to carts_index, :notice => "Item has been deleted."}
      else
        format.html { redirect_to root_url, :notice => "There was an error deleting your item." }
      end
    end
  end
end
