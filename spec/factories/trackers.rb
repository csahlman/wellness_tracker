FactoryGirl.define do
  factory :tracker do
    name "Tracker Name"
    description "Description for a tracker"
    current_weight 210
    goal_weight 180
    happiness_index 8
    user
  end
end
