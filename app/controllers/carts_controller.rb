# app/controllers/carts_controller.rb
class CartsController < ApplicationController
  def add_to_cart
    @cart_item = current_user.cart_items.find_or_initialize_by(item_id: params[:item_id])
    @cart_item.quantity += params[:quantity].to_i
    @cart_item.save

    # Redirect to the cart page or any other appropriate page
    redirect_to cart_path
  end

  def update_cart
    @cart_item = current_user.cart_items.find(params[:id])
    @cart_item.update(quantity: params[:quantity].to_i)

    # Redirect to the cart page or any other appropriate page
    redirect_to cart_path
  end
end
