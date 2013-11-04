class CreateExamsQuestions < ActiveRecord::Migration
  def change
    create_table :exams_questions do |t|
      t.belongs_to :exam
      t.belongs_to :question
      t.timestamps
    end
  end
end
