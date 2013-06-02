require "spec_helper"


feature "User adds details to a day" do 

  scenario "adding eating details", js: true do 
    user = create(:user)
    tracker = create(:tracker, user: user)
    day = create(:day, tracker: tracker)

    sign_in user

    visit tracker_path(tracker)

    click_on "Add eating details"
      
    fill_in "Eating Description", with: "Ate a large breakfast at McDonalds"
  end
end