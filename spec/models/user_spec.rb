require "rails_helper"

describe User do
  describe "validations" do
    it {should validate_presence_of :fullname}
    it {should validate_presence_of :login}
  end
  
  describe "associations" do
    it {should have_many :products}
  end

  describe "#sign" do
    it "check login" do
      user = create(:user)

      expect(user.login).to eq "aks115"
    end
  end
end