class SimplePagesController < ApplicationController
  def index
    @products = Product.limit(6)
  end
  def landing_page
    @products = Product.limit(6)
  end
end
