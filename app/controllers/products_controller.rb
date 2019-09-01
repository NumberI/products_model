class ProductsController < ApplicationController
  before_action :authenticate_role!

  def show
    @product = Product.find(params[:id])
  end

  def new
  	@product = Product.new
    @w = Info.where(:described_type => 'HowW', :described_id => nil)
    @d = Info.where(:described_type => 'HowDo', :described_id => nil)
    redirect_to new_products_info_path, :alert => "Не созданы свободные инфоблоки" and return if @w.empty? or @d.empty? 
    @users = User.all
    redirect_to new_products_user_path, :alert => "Не созданы пользователи" and return if @users.empty?
  end

  def create
     
    # if current_role.admin?
      @product = Product.new(name: product_params[:name])
      authorize @product
      if @product.save
        HowW.create(product_id: @product.id)
        HowDo.create(product_id: @product.id)
        product_params[:info_w].each {|w| Info.find(w).update(described: @product.how_w)}
        product_params[:info_d].each {|d| Info.find(d).update(described: @product.how_do)}
        @where_w = WhereW.new(:os => product_params[:os], :domain => product_params[:domain], :wtype => product_params[:wtype], :product_id => @product.id)
        @where_w.save
        product_params[:user].each {|u| @product.users << User.find(u)}
        redirect_to action: 'show', id: @product.id and return
      else
        render action: 'new'
      end
    # else
    #   redirect_to '/', :alert => "Вы не админ!!!" and return 
    # end
  end
	

  private
  
  def product_params
	  params.require(:product).permit(:name, info_w: [], info_d: [], os: [], domain: [], wtype: [], user: [])
  end

  def pundit_user
    current_role
  end
end
