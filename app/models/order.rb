class Order < ApplicationRecord
  belongs_to :address
  belongs_to :user
  belongs_to :product
  has_one :orderdetail
end
