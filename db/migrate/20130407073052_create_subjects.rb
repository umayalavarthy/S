class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.integer :branch_id
      t.integer :course_id
      t.timestamps
    end
  end
end
