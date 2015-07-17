require 'rails_helper'

RSpec.describe Route, type: :model do
  it { should validate_presence_of(:name) }
  it { should belong_to(:section) }

  it 'should not have a rating greater than 10' do
    rate = Route.new(rating: 11)

    expect(rate.default_to_top(rate.rating)).to eql(10)
  end
end
