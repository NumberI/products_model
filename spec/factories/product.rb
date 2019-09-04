FactoryBot.define do
  factory :product do
    # name {"firstName121424523"}
    sequence (:name) { |n| "Prod_aks#{n}" }
  end
end