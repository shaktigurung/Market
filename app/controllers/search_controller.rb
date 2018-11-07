class SearchController < ApplicationController
  def index
# Pagination logic
# Set limit to amount of results ## Future feature will allow user to set limit
    @limit = 10
    @page = params[:page].to_i
    @page ||= 0
    @category = params['category']
    @category ||= "*"
    @query = params['search'] == "" ? "%" : params['search']
    offset = (@page * @limit)
# Search by category or string or both or neither
    if params['search'].nil? || params['search'] == ""
        if @category == '*'
          @search = Product.includes(:product_images, :user).order(updated_at: :desc).all
        else
          @search = Product.includes(:product_images, :user).where(category: @category).order(updated_at: :desc)
        end
    else 
        if @category == '*'
          @search = Product.includes(:product_images, :user).basic_search(name: @query).order(updated_at: :desc)
        else
          @search = Product.includes(:product_images, :user).where(category: @category).basic_search(name: @query).order(updated_at: :desc)
        end
    end
# For next and previous links
    @length = @search.length
    @search = @search.limit(@limit).offset(offset)

  end
end
