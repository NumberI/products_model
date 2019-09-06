require "rails_helper"

feature "info no creation" do
  before(:each) do
    sign_up_user
  end

  scenario "new error info" do
    visit new_products_info_path
    # print page.body
    fill_in :info_name, :with => 'info_test11111'
    fill_in :info_description, :with => 'info_description1'
    select 'HowW', :from => :info_described_type
    fill_in :info_picture, :with => '10.jpg'
    fill_in :info_ordernumber, :with => '4'
    click_button 'Create Info'
    expect(page).to have_content("You are not authorized to perform this action")
    # expect(raise_error(RuntimeError)).to eq 4
  end
end