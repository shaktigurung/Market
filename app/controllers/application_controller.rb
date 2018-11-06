class ApplicationController < ActionController::Base
    #before_action :authenticate_user!
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :image, :description, :user_name, :image_cache,
          {addresses_attributes: [:home_number, :street_name, :suburb, :postcode, :country]}])
        devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :image, :description, :user_name,
          {addresses_attributes: [:home_number, :street_name, :suburb, :postcode, :country]}])
    end
end
