FactoryBot.define do
  factory :product do
    sequence (:name) { |n| "Prod_aks#{n}" }

    factory :product_with_users, :parent => :product do
      users { create_list :user, 4}
    end
  end
end