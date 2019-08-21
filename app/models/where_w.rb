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
#

class WhereW < ApplicationRecord
	belongs_to: product
end
