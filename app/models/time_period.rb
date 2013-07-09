# == Schema Information
#
# Table name: time_periods
#
#  id            :integer          not null, primary key
#  start_time    :datetime
#  end_time      :datetime
#  activity_type :string(255)
#  tracker_id    :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class TimePeriod < ActiveRecord::Base
  has_many :food_entries, dependent: :destroy
  belongs_to :tracker

end
