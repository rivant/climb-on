# Represents a group of many Sections
class Location < ActiveRecord::Base
  validates :name, presence: true
  has_many :sections
end
