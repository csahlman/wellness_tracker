require "spec_helper"

feature "guest visits home page" do 

  scenario "and is shown a description of the site" do 
    visit root_path
    expect(page).to have_css "[data-role='title']", text: "Wellness Tracker"
    expect(page).to have_css 'p[data-role="description"]'
  end

  scenario "and creates an account successfully" do 
    visit root_path
    find("[data-role='signup']").click
    fill_in "Email", with: "foo@example.com"
    fill_in "Password", with: "P4ssw0rd"
    fill_in "Confirmation", with: "P4ssw0rd"
    click_on "Create Account"
    expect(page).to have_css 'span', text: "Signed in as foo@example.com"
  end

  scenario "and creates an account unsuccessfully" do 
    visit root_path
    find("[data-role='signup']").click
    click_on "Create Account"

    expect(page).to have_css '#error_explanation', text: "errors"
  end


  
end