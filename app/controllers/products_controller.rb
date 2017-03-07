class ProductsController < ApplicationController
  def index
    @products = Product.where(active: true)
    @categories = Category.all
  end
end
