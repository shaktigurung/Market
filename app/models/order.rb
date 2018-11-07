class Order < ApplicationRecord
  belongs_to :address
  belongs_to :user
  belongs_to :product
  validates :product, :user, :address, presence: true
end
