class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:edit, :update, :destroy]
  def show
  end

  def index
    @users = User.all
  end

  def edit
    # respond_to do |format|
    #   if current_user.id != @user.id
    #     format.html {redirect_to @user, notice: "You cannot edit this item!!!"}
    #   end
    # end
  end

    def update
      respond_to do |format|
        if @user.update(user_params)
          format.html { redirect_to @user, notice: 'Product was successfully updated.' }
          format.json { render :show, status: :ok, location: @user }
        else
          format.html { render :edit }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    end

# This method is currently doing nothing

    def destroy
      if @user.image?
        @user.remove_image!
        redirect_to edit_user_path(@user.id)
      end
      @user.save!
    end

    private
      def set_user
        @user = User.find(params[:id])
      end

      def user_params
        params.require(:user).permit(:first_name, :last_name, :description, :image, :remove_image,  address_attributes: [:home_number, :street_name, :suburb, :postcode, :country])
      end
end
