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

require 'test_helper'

class UserSubtaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
