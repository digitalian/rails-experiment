FactoryGirl.define do
  factory :admin_member do
    sequence(:email) { |n| "admin#{n}@example.com"}
    password 'pw'
    suspended false
  end
end
