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
#

class User < ApplicationRecord
	has_many :products, through: :responses
	has_many :responses

	validates :login, uniqueness: { case_sensitive: false }
	validates :login, length: { in: 3..20 }
	validates_presence_of :fullname, :login
end
