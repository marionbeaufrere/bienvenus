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
      # state :state_200
      # state :state_300
      # state :state_400

      event :activate do
        transitions from: :state_zero, to: :state_first
      end
    end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :user_subtasks
  has_many :subtasks, through: :user_subtasks
  validates :first_name, :last_name, presence: true
end
