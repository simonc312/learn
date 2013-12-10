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
    start_at DateTime.new(2013,12,12,8,0)
    end_at DateTime.new(2013,12,13,21,0)
    user_id 1
  end
  trait :bad_date do
    start_at DateTime.new(2013,12,12,8,0)
    end_at DateTime.new(2013,12,13,21,0) 
  end
end
