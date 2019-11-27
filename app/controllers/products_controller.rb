class ProductsController < ApplicationController
  def new
    @product = Product.new
  end

  def create
    @product = Product.create(params.require(:product).permit(:name, :description, :inventory))
  end

  def index
    @products = Product.all
  end
end
