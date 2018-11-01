class SearchController < ApplicationController
  def index
    @limit = 2
    @page = params[:page].to_i
    @page ||= 0
    @category = params['category']
    @category ||= "*"
    @query = params['search'] == "" ? "%" : params['search']
    #Product.basic_search(@query).length
    offset = (@page * @limit)
    # search = params['search']
    # # search ||= []
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

    @length = @search.length
    @search = @search.limit(@limit).offset(offset)

    
    #byebug
    # @search = Product.basic_search(name: @query).limit(@limit).offset(offset)
    # byebug
  end
end
