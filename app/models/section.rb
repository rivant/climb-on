# Represents a single portion of a Location
class Section < ActiveRecord::Base
  validates_presence_of :name, :region
  belongs_to :location
  has_many :routes
end
