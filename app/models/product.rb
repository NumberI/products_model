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
	has_many :responses
	has_many :users, through: :responses
	has_one :how_do
	has_one :how_w
	has_one :where_w
	accepts_nested_attributes_for :users
	accepts_nested_attributes_for :how_w
	accepts_nested_attributes_for :how_do
	accepts_nested_attributes_for :where_w

	validates :name, uniqueness: { case_sensitive: false }
end
