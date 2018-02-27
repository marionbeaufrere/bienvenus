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

require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
