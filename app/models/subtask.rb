# == Schema Information
#
# Table name: subtasks
#
#  id          :integer          not null, primary key
#  title       :string
#  description :string
#  task_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Subtask < ApplicationRecord
  belongs_to :task
  has_many :user_subtasks, dependent: :destroy
  has_many :users, through: :user_subtasks
  translates :title, :description

end
