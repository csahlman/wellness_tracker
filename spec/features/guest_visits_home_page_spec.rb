require "spec_helper"

feature "guest visits home page" do 

  scenario "and is shown a description of the site" do 
    visit root_path
    expect(page).to have_css "[data-role='title']", text: "Wellness Tracker"
    expect(page).to have_css 'p[data-role="description"]'
  end

  scenario "and logs in" do 
    visit root_path
    click_on "Sign Up"
    fill_in "Email", with: "foo@example.com"
    fill_in "Password", with: "P4ssw0rd"
    fill_in "Confirmation", with: "P4ssw0rd"
    click_on "Create Account"
    expect(page).to have_css 'span', text: "Sign in as foo@example.com"
  end
end