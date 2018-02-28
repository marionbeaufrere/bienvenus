class SubtasksController < ApplicationController


  def index
   @subtasks = current_user.subtasks
  end

  def update
     @subtask = Subtask.find(params[:id])
     # current_user.run # > le nouvel etat du user est maintenant state_first
  #créer l'instance pour que si la ligne existe, la tâche soit done
  end
end
