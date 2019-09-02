# == Schema Information
#
# Table name: how_ws
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  product_id :bigint
#

class HowW < ApplicationRecord
	belongs_to :product
	has_many :infos, as: :described

	accepts_nested_attributes_for :infos
	
end
