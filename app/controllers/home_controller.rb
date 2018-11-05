class HomeController < ApplicationController
    before_action :authenticate_user!
    def index
        @products = Product.includes(:orders, :product_images)
        @popular = find_popular_items
        @shirts = find_category("Shirt")
        @jumpers = find_category("Jumper")
        @pants = find_category("Pants")
        @underwear = find_category("Underwear")
        @collectables = find_category("Collectable")
        @gadgets = find_category("Gadget")
    end

    private

    def find_popular_items
      (@products.sort_by {|k| k.orders.length}).reverse
    end

    def find_category(category)
       @products.to_a.select {|k| k[:category] == category }
    end
end