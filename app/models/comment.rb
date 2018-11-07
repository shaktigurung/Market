class Comment < ApplicationRecord
  before_save :remove_whitespace
  belongs_to :user
  belongs_to :commentable, polymorphic: true
  validates :content, presence: true
  validates :user_id, presence: true
end
