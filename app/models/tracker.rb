# == Schema Information
#
# Table name: trackers
#
#  id              :integer          not null, primary key
#  user_id         :integer
#  name            :string(255)
#  description     :text
#  current_weight  :integer
#  goal_weight     :integer
#  happiness_index :integer
#  created_at      :datetime
#  updated_at      :datetime
#

class Tracker < ActiveRecord::Base
  belongs_to :user

  validates :name, length: { within: 3..30 }
  validates :description, length: { maximum: 300 }
  validates :current_weight, numericality: { greater_than_or_equal_to: 50, less_than_or_equal_to: 700 }
  validates :goal_weight, numericality: { greater_than_or_equal_to: 50, less_than_or_equal_to: 700 }
  validates :happiness_index, inclusion: { in: 1..10 }

end
