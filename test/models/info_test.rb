# == Schema Information
#
# Table name: infos
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :text
#  picture     :string
#  ordernumber :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class InfoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
