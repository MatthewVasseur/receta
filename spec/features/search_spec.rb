require 'spec_helper.rb'

feature "Looking up recipes", js: true do
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
