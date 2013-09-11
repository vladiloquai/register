FactoryGirl.define do |f|

  sequence :email do |n|
    "user#{n}@factory.com"
  end

  factory :user do
    email
    password  "password"
    password_confirmation "password"
  end

  factory :invalid_user, class: :user do
  end

end

