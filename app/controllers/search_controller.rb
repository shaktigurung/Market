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
          @search = Product.all
        else
          @search = Product.where(category: @category)
        end
    else 
        if @category == '*'
          @search = Product.basic_search(name: @query)
        else
          @search = Product.where(category: @category).basic_search(name: @query)
        end
    end
# For next and previous links
    @length = @search.length
    @search = @search.limit(@limit).offset(offset)

  end
end
