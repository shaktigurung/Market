class Product < ApplicationRecord
  enum condition: {Unused: 1, Used: 2}
  enum category: {Shirt: 1, Jumper: 2, Pants: 3, Underwear: 4, Collectable: 5, Gadget: 6 }
  has_many :product_images, dependent: :destroy
  accepts_nested_attributes_for :product_images

  belongs_to :user
  has_many :orders
  has_many :comments, as: :commentable, dependent: :destroy
end
