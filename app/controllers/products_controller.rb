class ProductsController < ApplicationController
  def new
    @product = Product.new
  end

  def create
    @product = Product.create(params.require(:product).permit(:name, :description, :inventory))
    redirect_to product_path(@product)
  end

  def show
  end

  def index
    @products = Product.all
  end
end
