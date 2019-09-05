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
  
  scenario "sign up" do
    visit 'roles/sign_up'
    # within(".new_role") do
      fill_in :role_email, :with => '12345@ya.ru'
      fill_in :role_password, :with => '123456'
      fill_in :role_password_confirmation, :with => '123456'
    # end
    click_button 'Sign up'
    expect(page).to have_content 'Hello, 12345@ya.ru'
  end

end