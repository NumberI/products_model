class InfoController < ApplicationController

  def show
    @info = Info.find(params[:id])
  end

  def new
	  @info = Info.new
  end

  def create
  	if current_role.admin?
      info = params.require(:info).permit(:name, :description, :described_type, :picture, :ordernumber)
    	create_described(info[:described_type])
    	@info = @described.infos.build(info)

      if @info.save
        redirect_to action: 'show', id: @info.id
      else
        render action: 'new'
      end
    else
      redirect_to '/', :alert => "Вы не админ!!!"   
    end
  end
  
  private
  def create_described(type)
  	@described = type.classify.constantize.new()
  	@described.save
  end
end
