class ExamsQuestion < ActiveRecord::Base
  attr_accessible :exam_id, :question_id
  validates :question_id, :uniqueness => {:scope => :exam_id}
end
