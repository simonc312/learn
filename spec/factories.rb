FactoryGirl.define do
  factory :user do
    email      "Mark@yahoo.com"
    password   "asdfasdfasdfasdf"
    password_confirmation "asdfasdfasdfasdf"
  end
  factory :event do
    name       "my event"
    location   "my location"
    description "this is the description"
  end
end
