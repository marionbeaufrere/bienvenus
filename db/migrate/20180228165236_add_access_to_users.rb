class AddAccessToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :access, :integer, default: 1
  end
end
