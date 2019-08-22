class ProductsController < ApplicationController
  def new
	@product = Product.new
  end

  def create
	# @product = Product.new(params)
	@product = Product.new(product_params)
	if @product.save
      redirect_to '/'
    else
      render action: 'new'
    end
  end

  private
  
  def product_params
	params.require(:product).permit(:name)
  end
end
