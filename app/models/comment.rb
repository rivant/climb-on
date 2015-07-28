# Comments of record
class Comment < ActiveRecord::Base
  validates :public, presence: true
  belongs_to :record
end
