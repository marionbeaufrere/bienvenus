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
#  aasm_state             :string
#  photo                  :string
#  access                 :integer          default(1)
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :user_subtasks
  has_many :subtasks, through: :user_subtasks
  validates :first_name, :last_name, presence: true

  mount_uploader :photo, PhotoUploader

  def visible_tasks
    Task.where(position: 1..self.access)
    # AJOUTER TOUTES LES TACHES COMPLETE D'UNE POSITIONE INFERIEUERE
    # tasks_done = SELECT COUNT(*) FROM tasks
    # (JOIN users ON users.access)
    # WHERE self.access < tasks.position
    # AND tasks.status = "completed"

    #tasks_in_progress + tasks_done

    #SHOULD WE JOIN USER_SUBTASKS? SUBTASKS IS THE ISSUE
  end

   def update_user_access
    # tasks_in_progress = Task.where(position: self.access)
    # #STATUS NEEDS TO BE COMPLETED ON ALL VISIBLE TASKS
    #   if tasks_in_progress.status == "completed" && self.access < 6
    #     self.access += 1
    #     #ELSE HE STAYS ON CURRENT ACCESS
    #   end
  end
end

