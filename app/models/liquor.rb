class Liquor < ApplicationRecord
    validates :name, :price, presence: true
  end
  