class Extra < ApplicationRecord
    validates :name, :price, presence: true
  end
  