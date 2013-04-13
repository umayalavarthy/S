class Subject < ActiveRecord::Base
  validates :name, :course_id,:branch_id, :presence => true
  attr_accessible :branch_id, :course_id, :name
  belongs_to :branch, :foreign_key => :branch_id
  belongs_to :course, :foreign_key => :course_id
end
