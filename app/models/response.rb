# == Schema Information
#
# Table name: responses
#
#  id         :bigint           not null, primary key
#  product_id :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Response < ApplicationRecord
	belongs_to :user
	belongs_to :product
end
