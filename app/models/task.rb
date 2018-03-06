# == Schema Information
#
# Table name: tasks
#
#  id              :integer          not null, primary key
#  title           :string
#  description     :string
#  status          :string
#  next_occurrence :date
#  periodicity     :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  category        :string
#  position        :integer

class Task < ApplicationRecord
  has_many :subtasks, dependent: :destroy
  has_many :user_subtasks, through: :subtasks
  belongs_to :category
  translates :title, :description

  accepts_nested_attributes_for :subtasks

  def completed?(user)
    user.user_subtasks.where(subtask_id: subtasks.pluck(:id)).count == subtasks.count
  end
end
