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
#

class Task < ApplicationRecord
  has_many :subtasks, dependent: :destroy
end
