# == Schema Information
#
# Table name: where_ws
#
#  id         :bigint           not null, primary key
#  domain     :string
#  type       :string
#  os         :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  product_id :bigint
#

require 'test_helper'

class WhereWTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
