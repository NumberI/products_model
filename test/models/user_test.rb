# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  fullname   :string
#  login      :string
#  role       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  product_id :bigint
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
