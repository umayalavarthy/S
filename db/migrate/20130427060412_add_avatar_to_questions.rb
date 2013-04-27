class AddAvatarToQuestions < ActiveRecord::Migration
  def change
  	add_column :questions, :qavatar, :string
  end
end
