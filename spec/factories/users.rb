FactoryBot.define do
  factory :user do
    sequence(:login){ |l| "aks11#{l}" }
    fullname { "alex aks" }
  end
end