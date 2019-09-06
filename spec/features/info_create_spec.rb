require "rails_helper"

feature "info creation" do
  before(:each) do
    sign_up_admin
  end

  scenario "new info" do
    visit new_products_info_path
    print page.body
    fill_in 'info[name]', :with => 'info_test11111', visible: false
    fill_in :info_description, :with => 'info_description1'
    select 'HowW', :from => :info_described_type
    fill_in :info_picture, :with => '10.jpg'
    fill_in :info_ordernumber, :with => '4'
    click_button 'Create Info'

    p Info.find_by(name: 'info_test11111').ordernumber
  end
end