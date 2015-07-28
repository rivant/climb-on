# List and location of climbing areas
class Location < ActiveRecord::Base
  validates_presence_of :name, :state, :region, :nearest_town
  has_many :sections
end
