class TaskPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # scope.where(user: user)
      scope.all
    end
  end

  def index?
    @user.user_type == "refugee"
  end

  def show?
    @user.user_type == "refugee"
  end

  def initializer?
    @user.user_type == "refugee"
  end

  def complete_subtasks?
    @user.user_type == "refugee"
  end

  def destroy_subtasks?
    @user.user_type == "refugee"
  end
end
