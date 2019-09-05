FactoryBot.define do
  factory :product do
    # name {"firstName121424523"}
    sequence (:name) { |n| "Prod_aks#{n}" }

    factory :product_with_users, :parent => :product do
      # after :create do |product, evaluator|
      #   create_list :user, 4, products: product
      # end
      users { create_list :user, 4}
    end
  end
end