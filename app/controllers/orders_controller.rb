# app/controllers/orders_controller.rb
class OrdersController < ApplicationController
    def checkout
      # Start a transaction
      ActiveRecord::Base.transaction do
        # Create a new order
        @order = current_user.orders.create!
  
        # Move items from the cart to the order
        current_user.cart_items.each do |cart_item|
          @order.order_items.create!(item_id: cart_item.item_id, quantity: cart_item.quantity)
          cart_item.destroy
        end
      end
  
      # Redirect to the order confirmation page or any other appropriate page
      redirect_to order_confirmation_path(@order)
    rescue ActiveRecord::RecordInvalid
      # Handle transaction rollback or other errors
      flash[:error] = "Error occurred while processing your order."
      redirect_to cart_path
    end
  end
  