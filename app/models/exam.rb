class Exam < ActiveRecord::Base
  attr_accessible :exam_type, :name,:duration, :course_id, :branch_id
  validates :name, :exam_type, :presence=>true
  has_and_belongs_to_many :questions
  belongs_to :course, :foreign_key => :course_id
  belongs_to :branch, :foreign_key => :branch_id
end
