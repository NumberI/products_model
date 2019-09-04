FactoryBot.define do
  factory :info do
    sequence (:name) { |n| "Info_aks#{n}" }
    sequence (:description) { |d| "info description #{d}" }
    sequence (:ordernumber) { |o| o }
    sequence (:described) { |m| m }
  end
end