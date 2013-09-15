class AddBranchCourseToUsers < ActiveRecord::Migration
  def change
    add_column :users, :course_id, :integer
    add_column :users, :branch_id, :integer
  end
end
