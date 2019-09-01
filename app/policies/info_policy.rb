class InfoPolicy < ApplicationPolicy
  def create?
    @user.admin?
  end
end