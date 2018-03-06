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
    Task.where(position: 1..self.access).order('position DESC, id ASC')
  end

   def update_user_access
    @accessable_tasks = self.visible_tasks
    @completed_tasks = 0
    @accessable_tasks.each do |task|
      if task.completed?(self) == true
        @completed_tasks += 1
      end
    end
    if @completed_tasks == @accessable_tasks.count && self.access < 4
      self.access += 1
      self.save
    end
    # Intermediate Position: Employment
    @french_class = Task.where(title: "Learn French")
    if @french_class[0].completed?(self) && self.access < 5
      self.access += 1
      self.save
    end

    def grant_crisp_admin_access
      url = "https://api.crisp.chat/v1/website/697c7692-c8e1-46a8-b080-94bc635691cb/operator"
      response = RestClient.post(url,
        {email: current_user.email,
         role: "member"}.to_json,
         {content_type: "application/json",
          Authorization: "Basic YjI0YWFjYzYtOTk1MC00NDFkLWJmMTYtYTVlYzJhNWYwYTc0Ojk1NWEyNzY5ODczZTA4MjUwMzFjYTk1OTMwZjM3NTEzNmU0ZmQ2N2U1ZTY1MmNjYjJhYzA1YTdkZmFhODhiZmY="}
      )
    end
    # Intermediate Position: Financial Aid
    # @open_bank_account = Task.where(title: "Open a bank account")
    # if @open_bank_account.status == "completed" && self.access < 6
    #   self.access += 1
    #   self.save
    # end
  end
end

