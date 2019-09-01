class ProductPolicy < ApplicationPolicy
  def create?
    @user.admin?
  end
end