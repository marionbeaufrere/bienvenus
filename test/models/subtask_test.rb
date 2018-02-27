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

require 'test_helper'

class SubtaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
