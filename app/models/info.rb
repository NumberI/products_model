# == Schema Information
#Product.first.how_w.create(:described => w)
# Info.first.update(:described => HowW.first)
# Product.first.how_w.save
# Table name: infos
#
#  id             :bigint           not null, primary key
#  name           :string
#  description    :text
#  picture        :string
#  ordernumber    :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  described_type :string
#  described_id   :bigint
#

class Info < ApplicationRecord
	belongs_to :described, polymorphic: true
end
