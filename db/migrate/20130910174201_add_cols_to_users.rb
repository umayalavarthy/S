class AddColsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :pursuing, :string
    add_column :users, :gate_rank, :string
    add_column :users, :ies_rank, :string
    add_column :users, :address, :text
    add_column :users, :gender, :boolean
    add_column :users, :born, :date

  end
end
