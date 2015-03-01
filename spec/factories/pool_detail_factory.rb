FactoryGirl.define do
  factory :pool_detail do
    row true
    value 0
    position 7
    association :pool, :factory => :pool
  end
end
