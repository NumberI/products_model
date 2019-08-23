class ProductsController < ApplicationController
  def new
	@product = Product.new
  @w = Info.where(:described_type => 'HowW')
  @d = Info.where(:described_type => 'HowDo')
  end

  def create
	# @product = Product.new(params)
	@product = Product.new(product_params)

	if @product.how_w.save
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
