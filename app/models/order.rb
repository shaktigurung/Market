class Order < ApplicationRecord
  belongs_to :address
  belongs_to :user
  has_one :orderdetail
end
