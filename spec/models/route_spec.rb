RSpec.describe Route, type: :model do
  it { should validate_presence_of(:name) }
  it { should belong_to(:section) }

  it 'should default rating to 10' do
    route = Route.new(rating: 11)
    route.default_rating

    expect(route.rating).to eql(10)
  end
end
