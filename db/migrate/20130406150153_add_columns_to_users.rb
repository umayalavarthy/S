class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_type, :integer
    add_column :users, :name, :string
    add_column :users, :college, :string
    add_column :users, :phone, :string
  end
end
