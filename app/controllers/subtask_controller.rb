class SubtaskController < ApplicationController

def update
   @subtask = Subtask.find(params[:id])
#créer l'instance pour que si la ligne existe, la tâche soit done
end

end
