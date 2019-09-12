# == Schema Information
#
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
  has_many_attached :pictures


	validates :name, uniqueness: { case_sensitive: false }
	validates :name, :description, :ordernumber, presence: true

  validates :pictures, attached: true, content_type: ['image/png', 'image/jpg', 'image/jpeg'], limit: { min: 1, max: 5 }, size: { less_than: 5000.kilobytes }

  def order
    ordernumber
  end
end
