# == Schema Information
#
# Table name: food_entries
#
#  id             :integer          not null, primary key
#  time_period_id :integer
#  user_id        :integer
#  name           :string(255)
#  calories       :integer
#  description    :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#

class FoodEntry < ActiveRecord::Base
  belongs_to :time_period
  belongs_to :user
end
