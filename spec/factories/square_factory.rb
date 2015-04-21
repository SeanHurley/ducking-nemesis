FactoryGirl.define do
  factory :square do
    x 0
    y 0
    association :pool, :factory => :pool
    association :user, :factory => :user
  end
end
