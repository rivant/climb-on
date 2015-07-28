# Record and rating of routes climbed or attempted(project)
class Record < ActiveRecord::Base
  validates :rating, :status, presence: true
  belongs_to :user
  has_many :pics
  has_many :comments

  before_save :default_rating

  def default_rating
    if !self.rating.nil?
      self.rating = 5 if self.rating > 5
    end
  end
end
