require "rails_helper"

describe Info do
  it {should validate_presence_of :name}
  it {should validate_presence_of :description}
  it {should validate_presence_of :ordernumber}
  it {should belong_to :described}

  describe "#order" do
    it "check order" do
      pr =  create :how_do
      re = create(:info, described: pr)

      p re.order
      pr2 =  create :how_do
      re2 = create(:info, described: pr2)

      p re2.order
    end
  end
end