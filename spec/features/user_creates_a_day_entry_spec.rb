require "spec_helper"

feature "User creates a day entry" do 

  scenario "successfully" do 
    user = create(:user)
    tracker = create(:tracker, user: user)
    sign_in user

    expect(current_path).to eq dashboards_path
    click_on tracker.name
    
    find("a[data-tracker='#{tracker.id}']").click

    # expect(page).to have_css 'a'
  end

end