require "spec_helper"

feature "User creates a day entry" do 

  scenario "for the current day successfully" do 
    user = create(:user)
    tracker = create(:tracker, user: user)
    sign_in user

    find("a[data-tracker='#{tracker.id}']").click
    
    expect(page).to have_css 'div.calender'

    within '[data-description="currentday"]' do 
      fill_in "Hours of sleep (previous night)", with: 8
      fill_in "Hours spent working", with: 8
      fill_in "Hours of leisure time", with: 8
      fill_in "Minutes spent exercising", with: 45
      fill_in "Calories consumed", with: 3500
      fill_in "Number of alcoholic drinks", with: 0
      fill_in "Happiness", with: 8
      click_on "Create Day" 
    end

    expect(page).to have_css '#flash', text: "Day Saved"
  end

  scenario "for the current day unsuccessfully" do 
    user = create(:user)
    tracker = create(:tracker, user: user)
    sign_in user

    find("a[data-tracker='#{tracker.id}']").click
    
    click_on "Create Day"
    expect(page).to have_css '#error_explanation', text: 'errors'
  end

  scenario "for an older day", js: true do 
    # user = create(:user)
    # tracker = create(:tracker, user: user)
    # sign_in user
    # find("a[data-tracker='#{tracker.id}']").click

    # find('[data-role="datepicker"]').set 2.days.ago.strftime("%m/%d/%Y")

    # # THIS ISN"T TRIGGERING RIGHT NOW
    # expect(current_path).to eq new_tracker_day_path(tracker)
    # expect(page).to have_css 'h3', text: "New Day For #{2.days.ago.strftime('%m/%d/%Y')}"
    pending "Fill this in later"
    
  end

  scenario "for the same day twice, but the second is an update" do 
    user = create(:user)
    tracker = create(:tracker, user: user)
    sign_in user

    date = 2.days.ago.strftime("%m/%d/%Y")

    visit new_tracker_day_path(tracker, date: date)
    expect(page).to_not have_css 'h3', text: "Update Day"
    
    fill_in "Hours of sleep (previous night)", with: 8
    fill_in "Hours spent working", with: 8
    fill_in "Hours of leisure time", with: 8
    fill_in "Minutes spent exercising", with: 45
    fill_in "Calories consumed", with: 3500
    fill_in "Number of alcoholic drinks", with: 0
    fill_in "Happiness", with: 8
    click_on "Create Day" 
    # expect(page).to have_css ".created[data-date='#{date}']"

    visit new_tracker_day_path(tracker, date: date)
    expect(page).to have_css 'h3', text: "Update Day"

    fill_in "Hours of sleep (previous night)", with: 8
    fill_in "Hours spent working", with: 8
    fill_in "Hours of leisure time", with: 8
    fill_in "Minutes spent exercising", with: 45
    fill_in "Calories consumed", with: 3500
    fill_in "Number of alcoholic drinks", with: 0
    fill_in "Happiness", with: 8
    click_on "Create Day" 

    expect(page).to have_css "Day Updated"
  end

end