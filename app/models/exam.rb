class Exam < ActiveRecord::Base
  attr_accessible :exam_type, :name
  validates :name, :exam_type, :presence=>true
  has_many :questions, :dependent => :destroy
end
