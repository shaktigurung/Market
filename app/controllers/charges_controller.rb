class ChargesController < ApplicationController
  before_action :authenticate_user!
  # before_action :set_product

    def new
      @product = Product.find(params[:product])
     
    end

    def create
# Create stripe charge  
      @product = Product.find(params[:product_id])

      customer = Stripe::Customer.retrieve(current_user.customer_id)
      customer.source = params[:stripeToken]
      customer.save

      charge = Stripe::Charge.create(
        :customer    => current_user.customer_id,
        :amount      => (@product.price*100).to_i ,
        :description => 'Rails Stripe customer',
        :currency    => 'aud',
        :destination => {
          :amount  => (@product.price*95).to_i,
          :account => @product.user.customer_id
        }
      )
# Create tracking order
      @order = Order.create(
        user_id: current_user.id,
        total_amount: @product.price,
        stripe_charge_id: rand(9999),
        product_id: @product.id,
        address_id: current_user.address_ids[0]
        )
      @order.save(validate: false)
# Increment product quantity
      @product.quantity =- 1
      @product.save
    
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to search_index_path
    end
end
