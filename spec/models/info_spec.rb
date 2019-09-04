require "rails_helper"

describe Info do
  it {should validate_presence_of :name}
  it {should validate_presence_of :description}
  it {should validate_presence_of :ordernumber}
  it {should belong_to :described}

  describe "#order" do
    it "check order" do
      info = create(:info)

      p info.order
      
    end
  end
end