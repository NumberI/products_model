class ApplicationController < ActionController::Base
	include Pundit
  protect_from_forgery
  before_action :authenticate_role!

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    flash[:alert] = "You are not Admin to perform this action."
    redirect_to(request.referrer || root_path)
  end
end
