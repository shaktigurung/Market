class Address < ApplicationRecord
  before_save :remove_whitespace
  belongs_to :user
  has_many :orders 
end
