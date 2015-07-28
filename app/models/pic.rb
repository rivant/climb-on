# Picture of record
class Pic < ActiveRecord::Base
  validates :public, presence: true
  belongs_to :record
end
