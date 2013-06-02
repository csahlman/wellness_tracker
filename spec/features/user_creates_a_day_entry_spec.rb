require "spec_helper"

feature "User creates a day entry" do 

  scenario "successfully" do 
    user = create(:user)
    tracker = create(:tracker, user: user)
    sign_in user

    find("a[data-tracker='#{tracker.id}']").click
    
  end

end