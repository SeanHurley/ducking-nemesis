FactoryGirl.define do
  factory :square do
    x 0
    y 0
    pool FactoryGirl.create(:pool)
  end
end
