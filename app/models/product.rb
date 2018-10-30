class Product < ApplicationRecord
  enum condition: {unused: 1, used: 2}
  has_many :product_images, dependent: :destroy
  accepts_nested_attributes_for :product_images

  belongs_to :user
  has_many :orderdetails
  has_many :comments, as: :commentable
end
