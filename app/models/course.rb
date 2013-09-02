class Course < ActiveRecord::Base
  validates :name, :presence => true
  attr_accessible :name
  has_many :branches, :dependent => :destroy
  has_many :subjects, :dependent => :destroy
  has_many :exams, :dependent => :destroy
end
