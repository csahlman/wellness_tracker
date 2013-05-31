# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    # sequence(:username) { |n| "#{n}_foobarthebaz" }
    sequence(:email) { |n| "foo_#{n}@foo.foo" }
    password "P4ssword"
    password_confirmation "P4ssword"
  end
end
