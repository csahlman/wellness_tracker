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
end
