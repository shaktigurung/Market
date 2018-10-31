class SearchController < ApplicationController
  def index
    @limit = 2
    @length = Product.basic_search(params['search']).length
    @page = params[:page].to_i
    @page ||= 0
    offset = (@page * @limit)
    @search = Product.basic_search(params['search']).limit(@limit).offset(offset)
  end
end
