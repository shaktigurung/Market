class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:edit, :update, :destroy]
  def show
  end

  def index
    @users = User.all
  end

  def edit
    respond_to do |format|
      if current_user.id != @user.id
        format.html {redirect_to @product, notice: "You cannot edit this item!!!"}
      end
    end
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
      if params[:image].present?
        @user.image.remove_image!
      end
    end

    private
      def set_user
        @user = User.find(params[:id])
      end

      def user_params
        params.require(:user).permit(:first_name, :last_name, :description, :image)
      end
end
