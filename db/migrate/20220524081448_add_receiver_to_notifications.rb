class AddReceiverToNotifications < ActiveRecord::Migration[7.0]
  def change
    add_column :notifications, :email, :string
    add_column :notifications, :seen, :boolean, default: false
  end
end
