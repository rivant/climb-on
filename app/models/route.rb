# A line on a cliff followed by a climber
class Route < ActiveRecord::Base
  validates_presence_of :name, :rating
  belongs_to :section

  #before_save :default_rating

  def default_rating
    if !self.rating.nil?
      self.rating = 10 if self.rating > 10
    end
  end
end
