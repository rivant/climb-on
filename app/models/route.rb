# A line on a cliff followed by a climber
class Route < ActiveRecord::Base
  validates_presence_of :name
  belongs_to :section
end
