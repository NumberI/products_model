class BeginningController < ApplicationController
  def new
	@product = Product.new
  end

  def create
	@product = Product.new(product_params)
	if @product.save
      redirect_to '/'
    else
      render action: "new"
    end
  end

  def show
  end

  def index
  end
  
  private
  
  def product_params
	params.require(:product)
  end
end
