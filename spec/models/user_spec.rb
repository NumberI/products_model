require "rails_helper"

describe User do
  it {should validate_presence_of :fullname}
  it {should validate_presence_of :login}
  it {should have_many :products}
end