RSpec.feature('Climbing information', type: :feature) do
  scenario('Is visible to all users', js: true) do
    record = FactoryGirl.create(:record)

    visit(climbs_path)
    
    expect(page).to have_content(record.route.name)
  end
end
