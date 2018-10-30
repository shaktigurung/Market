class Address < ApplicationRecord
  # belongs_to :user
  # belongs_to :product
  has_many :orders 
end
