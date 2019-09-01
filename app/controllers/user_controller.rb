class UserController < ApplicationController
  def new
  	@user = User.new()
  end

  def show
  	@user = User.find(params[:id])
  end

  def create
  	# if current_role.admin?
	  	@user = User.new(user_params)

	    if @user.save
	      redirect_to action: 'show', id: @user.id and return
	      # redirect_to '/products/info/new'
	    else
	      render action: 'new'
	    end
	  # else
	  # 	redirect_to '/', :alert => "Вы не админ!!!" and return 
	  # end
  end
  
  private
	def user_params
		params.require(:user).permit(:fullname, :login, :role)
  end
end