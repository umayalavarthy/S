class Question < ActiveRecord::Base
  attr_accessible :correct_answer, :exam_id, :incorrect_answer_1, :incorrect_answer_2, :incorrect_answer_3, :question
  belongs_to :exam, :foreign_key => :exam_id
  validates :correct_answer, :exam_id, :incorrect_answer_1, :incorrect_answer_2, :incorrect_answer_3, :question, :presence=>true
end
