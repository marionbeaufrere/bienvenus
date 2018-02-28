# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  phone_number           :string
#  first_name             :string
#  last_name              :string
#  language               :string
#  user_type              :string
#

class User < ApplicationRecord
  include AASM

    aasm do
      state :state_zero, initial: true
      state :state_first
      state :state_second
      state :state_third
      state :state_fourth

      event :run do
        after do
          # add_task_to_user("do that")
        end
        transitions from: :state_zero, to: :state_first
      end
      event :activate do
        transitions from: :state_first, to: :state_second
      end
      event :integrate do
        transitions from: :state_second, to: :state_third
      end
      event :include do
        transitions from: :state_third, to: :state_fourth
      end
    end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :user_subtasks
  has_many :subtasks, through: :user_subtasks
  validates :first_name, :last_name, presence: true

  after_create :setup_state_zero


  def setup_state_zero
    add_task_to_user("Title")
  end

  def add_task_to_user(task_title)
    task = Task.find_by(title: task_title)
  end
end

