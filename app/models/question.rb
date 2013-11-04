class Question < ActiveRecord::Base
  mount_uploader :qavatar, QavatarUploader
  attr_accessible :correct_answer,:qavatar, :exam_id, :incorrect_answer_1, :incorrect_answer_2, :incorrect_answer_3, :question
  has_and_belongs_to_many :exams
  validates :correct_answer, :incorrect_answer_1, :incorrect_answer_2, :incorrect_answer_3, :question, :presence=>true
end
