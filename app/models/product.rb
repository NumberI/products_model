# == Schema Information
#
# Table name: products
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Product < ApplicationRecord
	has_many :users
	has_one :how_do
	has_one :how_w
	has_one :where_w
	# accepts_nested_attributes_for :users
end
