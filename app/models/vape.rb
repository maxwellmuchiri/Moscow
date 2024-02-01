class Vape < ApplicationRecord
    validates :name, :price, presence: true
  end
  