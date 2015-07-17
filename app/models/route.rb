# A line on a cliff followed by a climber
class Route < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :section

  def default_to_top(rate)
    rating = rate > 10 ? 10 : rate
  end
end
