# == Schema Information
#
# Table name: activities
#
#  id         :integer          not null, primary key
#  start_time :datetime
#  end_time   :datetime
#  type       :string(255)
#  tracker_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class Activity < ActiveRecord::Base
  belongs_to :tracker
end
