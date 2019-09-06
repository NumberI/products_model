def sign_up_admin
  visit new_role_registration_path
  # within(".new_role") do
    fill_in :role_email, :with => '12345@ya.ru'
    fill_in :role_password, :with => '123456'
    fill_in :role_password_confirmation, :with => '123456'
  # end
  click_button 'Sign up'
  Role.find_by(email: '12345@ya.ru').update_attributes(admin: true)
end

def sign_up_user
  visit new_role_registration_path
    fill_in :role_email, :with => '098765@ya.ru'
    fill_in :role_password, :with => '098765'
    fill_in :role_password_confirmation, :with => '098765'
  click_button 'Sign up'
end