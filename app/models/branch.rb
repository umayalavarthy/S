class Branch < ActiveRecord::Base
  validates :name, :course_id, :presence => true
  attr_accessible :course_id, :name
  belongs_to :course, :foreign_key => :course_id
  has_many :subjects, :dependent => :destroy
  has_many :exams, :dependent => :destroy
end
