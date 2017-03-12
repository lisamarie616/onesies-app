class CategoriesController < ApplicationController
  def show
    @category = Category.friendly.find(params[:id])
    @categories = Category.all
    @products = @category.products.where(active: true)
  end
end
