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

class Info < ApplicationRecord
	belongs_to: product
end
