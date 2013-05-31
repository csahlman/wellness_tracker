require "spec_helper"

feature "registered user visits the site" do 

  scenario "and logs in and out" do 
    user = create(:user)
    visit root_path
    click_on "Log In"
    fill_in "Email", with: user.email
    fill_in "Password", with: "#{user.password} + isn't real"
    click_on "Sign In"

    expect(page).to_not have_css 'span', text: "Signed in as #{user.email}"

    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    
    click_on "Sign In"
    expect(page).to have_css 'span', text: "Signed in as #{user.email}"

    click_on "Sign Out"
    expect(page).to have_css 'a', 'Sign Up'
  end

end