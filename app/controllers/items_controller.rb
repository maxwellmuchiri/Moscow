# app/controllers/items_controller.rb
class ItemsController < ApplicationController
    def index
      @items = Item.all
  
      # Search by name
      @items = @items.where("name LIKE ?", "%#{params[:search]}%") if params[:search].present?
  
      # Filter by category
      @items = @items.where(category: params[:category]) if params[:category].present?
  
      # Other filters can be applied similarly
  
      # Render the items index page with filtered and searched items
      render "items/index"
    end
  end
  