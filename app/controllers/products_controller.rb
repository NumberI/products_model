class ProductsController < ApplicationController
  def new
  	@product = Product.new
    @w = Info.where(:described_type => 'HowW')
    @d = Info.where(:described_type => 'HowDo')
    @users = User.all
  end

  def create
  	# @product = Product.new(params)
    @where_w = WhereW.new(:os => product_params[:product][:os][], :domain => product_params[:product][:domain][], :type => product_params[:product][:type][])
    if @where_w.save
      # @product = Product.new(name: product_params[:product][:name])
      # if @product.how_w.save
      #     redirect_to '/'
      # else
      #   render action: 'new'
      # end
    else
        render action: 'new'
    end
  end
	

  private
  
  def product_params
	 params.require(:product).permit(:name, info_w: [], info_d: [], os: [], domain: [], type: [], user: [])
  end
end
