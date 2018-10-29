class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  enum condition: {unused: 1, used: 2}
end
