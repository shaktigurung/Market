class SearchController < ApplicationController
  def index
    limit = 2
    page = params[:page].to_i
    page ||= 1
    offset = (page * limit) - limit
    @search = Product.basic_search(params['search']).limit(limit).offset(offset)
  end
end
