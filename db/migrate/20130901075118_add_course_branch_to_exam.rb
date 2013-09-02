class AddCourseBranchToExam < ActiveRecord::Migration
  def change
    add_column :exams, :course_id, :integer
    add_column :exams, :branch_id, :integer
  end
end
