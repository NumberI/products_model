FactoryBot.define do
  factory :info do
    sequence (:name) { |n| "Info_aks#{n}" }
    sequence (:description) { |d| "info description #{d}" }
    sequence (:ordernumber) { |o| o }
    # name { "nmInfo_aks121313" }
    # description {"info description " }
    # ordernumber { 3 }

    association :described, factory: :how_do
    # after(:create) do |info|
    #   create(:how_do, described: info)
    # end
      
    # described {|a| a.association(:how_ws)}
    
  end
end