class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :buy, :edit, :update, :destroy]
  # GET /products
  # GET /products.json
  def index
    @products = Product.includes(:product_images, :comments, :user).order(id: :desc)
  end

  def buy
    @product = Product.find(params[:id])
    @product_price= @product[:price]
  end
  # GET /products/1
  # GET /products/1.json
  def show
    @comments = @product.comments
    @new_comment = Comment.new
  end

  # GET /products/new
  def new
    #  @product = current_user.products.build
     @product = Product.new
  end

  # GET /products/1/edit
  def edit
    if current_user.id != @product.user.id
      redirect_to @product, notice: "You cannot edit this item!!!"
    end
  end

  # POST /products
  # POST /products.json
  def create
    # @product = current_user.products.build(product_params)
    @product = Product.new(product_params)
    @product.user_id = current_user.id
    respond_to do |format|
      if @product.save
        unless params[:product][:product_image].nil?
          params[:product][:product_image][:image].each do |img|
            @product_image = @product.product_images.create(:image => img)
          end
        end
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.includes(:product_images, :comments).find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :description, :quantity, :price, :condition, :category, product_image_attributes: :image)
    end
end
