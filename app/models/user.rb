class User < ApplicationRecord
    has_secure_password
  
    validates :name, :email, :age, presence: true
    validates :email, uniqueness: true
    validates :age, numericality: { greater_than_or_equal_to: 18 }
  
    has_many :orders
  end
  