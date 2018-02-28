class Task < ApplicationRecord
  has_many :subtasks, dependent: :destroy
  belongs_to :category
end
