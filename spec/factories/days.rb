FactoryGirl.define do
  factory :day do
    hours_of_sleep 8
    hours_of_work 8
    hours_of_leisure 8
    minutes_spent_exercising 200
    calories_consumed 4000
    alcoholic_drinks 4
    happiness_index 8
    tracker
  end
end
