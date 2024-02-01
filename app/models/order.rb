class Order < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :liquors
  has_and_belongs_to_many :vapes
  has_and_belongs_to_many :extras
end
