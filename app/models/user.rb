class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  before_save :remove_whitespace
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create_commit :add_customer_id

  def add_customer_id
    if self.customer_id.nil?
       customer = Stripe::Customer.create(
        :email => self.email
        # :source  => params[:stripeToken]
      )
      self.customer_id = customer.id
      self.save
    end
  end


  has_many :products, dependent: :destroy
  has_many :orders
  has_many :addresses, dependent: :destroy
  accepts_nested_attributes_for :addresses
  has_many :comments, as: :commentable, dependent: :destroy
  mount_uploader :image, ImageUploader

  has_many :authored_conversations, class_name: 'Conversation', foreign_key: 'author_id'
  has_many :received_conversations, class_name: 'Conversation', foreign_key: 'received_id'
  has_many :personal_messages, dependent: :destroy

  validates :user_name, :first_name, :last_name,  presence: true
end
