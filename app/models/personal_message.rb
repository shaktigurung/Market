class PersonalMessage < ApplicationRecord
  before_save :remove_whitespace
  belongs_to :conversation
  belongs_to :user
  validates :body, presence: true
end
