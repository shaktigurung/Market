class UsersController < ApplicationController
before_action :set_user, only: [:show, :edit, :update, :destroy]

  def show
    # @user = User.find(params[:id])
  #  @user_users = @user.users
    
  end

    def index
      @users = User.all
    end

    def edit
      # @user = User.find(params[:id])
    end

    # POST /users
    # POST /users.json

    # def create
    #   @user = current_user.user.build(user_params)
    #   @user.user_id = current_user.id
    #   respond_to do |format|
    #     if @user.save
    #       params[:user][:image].each do |img|
    #         @user_image = @user.images.create(:image => img)
    #       end
    #       format.html { redirect_to @user, notice: 'Product was successfully created.' }
    #       format.json { render :show, status: :created, location: @user }
    #       else
    #         format.html { render :new }
    #         format.json { render json: @user.errors, status: :unprocessable_entity }
    #       end
    #     end
    # end

    # PATCH/PUT /users/1
    # PATCH/PUT /users/1.json

    # def update
    #   current_user.image = params[:image]
    #   current_user.save
    # end

    def update
      # @user = User.find(params[:id])

      respond_to do |format|
# Currently the .update is not actually a method and I'm not too sure where to fix it
        if @user.update(user_params)
          format.html { redirect_to @user, notice: 'Product was successfully updated.' }
          format.json { render :show, status: :ok, location: @user }
        else
          format.html { render :edit }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /users/1
    # DELETE /users/1.json
    def destroy
      @user.destroy
      respond_to do |format|
        format.html { redirect_to users_url, notice: 'Product was successfully destroyed.' }
        format.json { head :no_content }
      end
    end



    private
      # Use callbacks to share common setup or constraints between actions.
      def set_user
        @user = User.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def user_params
        params.require(:user).permit(:first_name, :last_name, :description, :image)
      end
end
