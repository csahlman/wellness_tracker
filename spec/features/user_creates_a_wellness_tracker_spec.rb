require "spec_helper"

feature "user creates a wellness tracker" do 

  scenario "successfully" do 
    user = create(:user)
    sign_in user

    click_on "Create Wellness Tracker"
    fill_in "Name", with: "A new wellness tracker"
    fill_in "Description", with: "Lorem ipsum delorum"
    fill_in "Current Weight", with: 210
    fill_in "Goal Weight", with: 190
    fill_in "Happiness", with: 6
    click_on "Create Wellness Tracker"

    expect(page).to have_css '#flash', text: "Wellness Tracker successfully created"

    # fill_in 
  end

end