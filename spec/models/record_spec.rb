RSpec.describe Record, type: :model do
  it { should validate_presence_of(:rating) }
  it { should validate_presence_of(:status) }
  it { should belong_to(:user) }
  it { should have_many(:pics) }
  it { should have_many(:comments) }

   it 'should default ratings over 5 to 5' do
    record = Record.new(rating: 7)
    record.default_rating

    expect(record.rating).to eql(5)
  end
end
