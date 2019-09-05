require "rails_helper"

describe Product do
  describe "validations" do
    it {should validate_presence_of :name}
  end

  describe "association_create" do
    it "return last login" do
      product = create(:product_with_users)

      expect(product.users.last.login).to eq "aks114"
      p product.users.last.fullname
    end
  end
end