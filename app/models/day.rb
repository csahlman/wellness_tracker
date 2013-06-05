# == Schema Information
#
# Table name: days
#
#  id                       :integer          not null, primary key
#  hours_of_sleep           :integer
#  hours_of_work            :integer
#  hours_of_leisure         :integer
#  minutes_spent_exercising :integer
#  calories_consumed        :integer
#  alcoholic_drinks         :integer
#  happiness_index          :integer
#  tracker_id               :integer
#  created_at               :datetime
#  updated_at               :datetime
#  date                     :datetime
#

class Day < ActiveRecord::Base
  belongs_to :tracker

  validates :hours_of_sleep, presence: true, numericality: { 
    greater_than_or_equal_to: 0, less_than_or_equal_to: 24 }
  validates :hours_of_leisure, presence: true, numericality: { 
    greater_than_or_equal_to: 0, less_than_or_equal_to: 24 }
  validates :hours_of_work, presence: true, numericality: { 
    greater_than_or_equal_to: 0, less_than_or_equal_to: 24 }
  validates :minutes_spent_exercising, presence: true, numericality: { 
    greater_than_or_equal_to: 0, less_than_or_equal_to: 600 }
  validates :calories_consumed, presence: true, numericality: { 
    greater_than_or_equal_to: 0, less_than_or_equal_to: 10000 }
  validates :alcoholic_drinks, presence: true, numericality: { 
    greater_than_or_equal_to: 0, less_than_or_equal_to: 35 }
  validates :happiness_index, presence: true, numericality: { 
    greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }

end
