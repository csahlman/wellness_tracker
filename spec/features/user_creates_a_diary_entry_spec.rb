require "spec_helper"

feature "User creates a diary entry" do 

  scenario "and enters info about a time period" do
    user = create(:user)
    tracker = create(:tracker, user: user)
    sign_in(user)
    click_on tracker.name
    
    select("Diary", from: "activity_types")
    click_on "Create Activity"
  end
end