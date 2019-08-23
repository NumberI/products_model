class UserController < ApplicationController
  def new
  	@user = User.new()
  end

  def show

  end

  def create
  	@user = User.new(user_params)

    if @user.save
      redirect_to action: 'show', id: @user.id
      # redirect_to '/products/info/new'
    else
      render action: 'new'
    end
  end
  
  private
	def user_params
		params.require(:user).permit(:fullname, :login, :role)
  end
end