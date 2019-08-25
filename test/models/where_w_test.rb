# == Schema Information
#
# Table name: where_ws
#
#  id         :bigint           not null, primary key
#  domain     :string           default([]), is an Array
#  wtype      :string           default([]), is an Array
#  os         :string           default([]), is an Array
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
