class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
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


  has_many :products
  has_many :orders
  has_many :comments, as: :commentable, dependent: :destroy
  mount_uploader :image, ImageUploader
end
