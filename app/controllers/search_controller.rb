class SearchController < ApplicationController
  def index
    @search = Product.basic_search(params[:search])
  end
end
