class UserSubtask < ApplicationRecord
  belongs_to :user;
  belongs_to :subtask;
end
