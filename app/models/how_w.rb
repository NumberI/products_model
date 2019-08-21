# == Schema Information
#
# Table name: how_ws
#
#  id         :bigint           not null, primary key
#  text       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class HowW < ApplicationRecord
	belongs_to: product
end
