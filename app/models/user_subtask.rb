# == Schema Information
#
# Table name: user_subtasks
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  subtask_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserSubtask < ApplicationRecord
  belongs_to :user
  belongs_to :subtask
  #TODO add unicity validation on user and subtask couple
end
