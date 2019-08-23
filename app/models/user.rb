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

class User < ApplicationRecord
	has_many :products, through: :responces
end
