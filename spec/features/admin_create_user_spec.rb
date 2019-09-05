require "rails_helper"

feature "user creation" do 
  scenario "allows access to page" do
    visit 'products/user/new'

    expect(page).to have_content 'You need to sign in'
  end
  
end