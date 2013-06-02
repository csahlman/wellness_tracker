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

require "spec_helper"

describe Tracker do
  context "validations" do 
    it { should ensure_length_of(:name).is_at_least(3).is_at_most(30) }
    it { should ensure_length_of(:description).is_at_most(300) }
    it { should validate_numericality_of(:current_weight) }
    it { should validate_numericality_of(:goal_weight) } 
    it { should ensure_inclusion_of(:happiness_index).in_array(1..10) }
  end
end
