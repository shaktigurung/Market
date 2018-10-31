class ChargesController < ApplicationController
  before_action :authenticate_user!
  # before_action :set_product

    def new
      # @products = Product.find(params[:id])
      @product = Product.find(params[:product])
      #  render json: params
     
    end

    def create
      # Amount in cents
      # @product = Product.find(params[:format])
      # render json: @product.price
      # @amount = @product.price 
      @product = Product.find(params[:product_id])
    
      customer = Stripe::Customer.retrieve(current_user.customer_id)
      customer.source = params[:stripeToken]
      customer.save

      charge = Stripe::Charge.create(
        :customer    => current_user.customer_id,
        :amount      => (@product.price*100).to_i ,
        :description => 'Rails Stripe customer',
        :currency    => 'aud',
        
      )
    
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path
    end

    # private
    # def set_product
    #   @product = Product.find(params[:id])
    # end
end
