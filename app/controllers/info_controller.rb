class InfoController < ApplicationController

  def new
	@info = Info.new
  end

  def create
	info = params.require(:info).permit(:name, :description, :described_type, :picture, :ordernumber)
	create_described(info[:described_type],info[:described])
	@info = @described.infos.build(info)

    if @info.save
      redirect_to '/'
    else
      render action: 'new'
    end
  end
  
  private
  def create_described(type, content)
	@described = type.classify.constantize.new()
	@described.save
  end
end
