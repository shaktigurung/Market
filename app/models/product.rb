class Product < ApplicationRecord
  before_save :remove_whitespace
  enum condition: {Unused: 1, Used: 2}
  enum category: {Shirt: 1, Jumper: 2, Pants: 3, Underwear: 4, Collectable: 5, Gadget: 6 }
  has_many :product_images, dependent: :destroy
  accepts_nested_attributes_for :product_images

  belongs_to :user
  has_many :orders
  has_many :comments, as: :commentable, dependent: :destroy

  validates :name, :quantity, :price, presence: true
  validates :quantity, :inclusion => 0..99, :on => :create
  validates :price, :inclusion => 1..9999, :on => :create
end
