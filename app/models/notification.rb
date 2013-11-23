class Notification < ActiveRecord::Base
  attr_accessible :description, :title, :link1, :link2, :day_to_day
  validates :title, :description, :presence => true
end
