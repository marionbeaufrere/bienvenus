class TaskPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # scope.where(user: user)
      scope.all
    end
  end

  def initializer?
    true
  end

  def complete_subtasks?
    true
  end
end
