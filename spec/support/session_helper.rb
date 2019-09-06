def sign_up_admin
  visit new_role_registration_path
  # within(".new_role") do
    fill_in :role_email, :with => '12345@ya.ru'
    fill_in :role_password, :with => '123456'
    fill_in :role_password_confirmation, :with => '123456'
  # end
  click_button 'Sign up'
  Role.find_by(email: '12345@ya.ru').update_attributes(admin: true)
  p 'fsgsegsegesge'
  # expect(page).to have_content 'Hello, 12345@ya.ru'
end