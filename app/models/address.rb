class Address < ApplicationRecord
  before_save :remove_whitespace
  belongs_to :user
  has_many :orders 
  validates :postcode, length: {in: 4..6}
end
