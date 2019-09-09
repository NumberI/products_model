class InfoController < ApplicationController

  def show
    @info = Info.find(params[:id])
  end

  def new
	  @info = Info.new
  end

  def create
  	# if current_role.admin?
      info = params.require(:info).permit(:name, :description, :described_type, :ordernumber, pictures: [])
    	create_described(info[:described_type])
    	@info = @described.infos.build(info)
      authorize @info
      if @info.save
        redirect_to action: 'show', id: @info.id and return
      else
        render action: 'new'
      end
    # else
    #   redirect_to '/', :alert => "Вы не админ!!!" and return   
    # end
  end
  
  def direct_upload_pictures
    Info.find(params[:id]).pictures.attach(params[pictures: []])
  end

  def upload
    uploaded_file = params[:picture]
    File.open(Rails.root.join('public', 'uploads', uploaded_file.original_filename), 'wb') do |file|
      file.write(uploaded_file.read)
    end
  end

  private
  def create_described(type)
  	@described = type.classify.constantize.new()
  	@described.save
  end

  def pundit_user
    current_role
  end


end
