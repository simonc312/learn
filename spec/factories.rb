FactoryGirl.define do
  factory :user do
    email      "user@yahoo.com"
    password   "userpassword"
    password_confirmation "userpassword"
  end
  trait :is_admin do 
    admin true 
  end
  factory :event do
    name       "my event"
    location   "my location"
    description "this is the description"
    user_id 1
  end
end
