require 'spec_helper.rb'

feature "Looking up recipes", js: true do
  before do
    Recipe.create!(name: 'Baked Potato w/ Cheese')
    Recipe.create!(name: 'Garlic Mashed Potatoes')
    Recipe.create!(name: 'Potatoes Au Gratin')
    Recipe.create!(name: 'Baked Brussel Sprouts')
  end
  
  scenario "finding recipes" do
    visit '/'
    # Test "baked"
    fill_in "keywords", with: "baked"
    click_on "Search"

    expect(page).to have_content("Baked Potato")
    expect(page).to have_content("Baked Brussel Sprouts")

    # Test "brus"
    fill_in "keywords", with: "brus"
    click_on "Search"

    expect(page).to have_content("Baked Brussel Sprouts")
  end
end
