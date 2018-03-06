class UserSubtaskPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def create?
#le user de la tâche peut créer la user_subtask
    record.user == user
  end

  def destroy?
    record.user == user
  end
end
