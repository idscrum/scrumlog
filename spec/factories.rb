FactoryGirl.define do
  factory :user do
    email 'blah@scrumlog.dev'
    password 'password'
  end

  factory :account do
    id 9999 # hardcode it so we can test it
    subdomain 'test'
  end
end