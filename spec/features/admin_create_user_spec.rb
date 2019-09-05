require "rails_helper"

feature "user creation" do 
  scenario "allows access to page" do
    visit 'products/user/new'
    within(".new_role") do
      fill_in 'Email', :with => '123@ya.ru'
      fill_in 'Password', :with => '123456'
    end
    click_button 'Log in'
    expect(page).to have_content 'Hello, 123@ya.ru'
  end
  
end