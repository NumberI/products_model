class ApplicationPolicy
  attr_reader :role, :record

  def initialize(role, record)
    @user = role
    @record = record
  end

  def index?
    false
  end

  def show?
    false
  end

  def create?
    true
  end

  def new?
    create?
  end

  def update?
    false
  end

  def edit?
    update?
  end

  def destroy?
    false
  end

  class Scope
    attr_reader :role, :scope

    def initialize(role, scope)
      @user = role
      @scope = scope
    end

    def resolve
      scope.all
    end
  end
end
