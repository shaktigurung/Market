class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:edit, :update, :destroy]
  def show
    @comments = @user.comments
    @new_comment = Comment.new
  end

  def index
    @users = User.order(user_name: :asc).all
  end

  def edit
    if current_user.id != @user.id
      redirect_to @user, notice: "You cannot edit this profile!!!"
    end
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

# Remove user image
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
      params.require(:user).permit(:first_name, :last_name, :description, :image, :user_name, :remove_image,  address_attributes: [:home_number, :street_name, :suburb, :postcode, :country])
    end
end
