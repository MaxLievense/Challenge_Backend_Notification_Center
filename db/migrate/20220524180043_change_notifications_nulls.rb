class ChangeNotificationsNulls < ActiveRecord::Migration[7.0]
  def change
    change_column :notifications, :title, :string, null: false
    change_column :notifications, :email, :string, null: false
  end
end
