require "rails_helper"

feature "user creation" do 
  before(:all) do
    sign_up_admin  
  end

  scenario "allows access to page" do
    click_link 'Sign Out', :match => :first
    visit new_role_session_path
    within(".new_role") do
      fill_in 'Email', :with => '12345@ya.ru'
      fill_in 'Password', :with => '123456'
    end
    click_button 'Log in'
    expect(page).to have_content 'Hello, 12345@ya.ru'
  end
  


end