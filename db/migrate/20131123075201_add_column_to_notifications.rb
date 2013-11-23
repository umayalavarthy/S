class AddColumnToNotifications < ActiveRecord::Migration
  def change
    add_column :notifications, :day_to_day, :boolean
    add_column :notifications, :link1, :string
    add_column :notifications, :link2, :string
  end
end
