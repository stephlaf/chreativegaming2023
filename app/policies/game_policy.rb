class GamePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    return true
  end

  def new?
    # raise
    return true if @user.master == true
  end

  def create?
    return true if @user.master == true
  end
end
