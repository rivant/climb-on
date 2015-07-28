RSpec.describe Location, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:state) }
  it { should validate_presence_of(:region) }
  it { should validate_presence_of(:nearest_town) }
  it { should have_many(:sections) }
end
