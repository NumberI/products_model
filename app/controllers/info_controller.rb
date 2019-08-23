class InfoController < ApplicationController

  def new
	@info = Info.new
  end

  def create
	info = params.require(:info).permit(:name, :description, :described_type, :picture, :ordernumber)
	create_described(info[:described_type])
	@info = @described.infos.build(info)

    if @info.save
      render action: 'new'
      # redirect_to '/products/info/new'
    else
      render action: 'new'
    end
  end
  
  private
  def create_described(type)
	@described = type.classify.constantize.new()
	@described.save
  end
end
