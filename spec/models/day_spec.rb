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

require "spec_helper"

describe Day do 

  context "validations" do 
    it { should validate_presence_of(:hours_of_sleep) }
    it { should validate_numericality_of(:hours_of_sleep) }
    it { should validate_presence_of(:hours_of_leisure) }
    it { should validate_numericality_of(:hours_of_leisure) }
    it { should validate_presence_of(:hours_of_work) }
    it { should validate_numericality_of(:hours_of_work) }
    it { should validate_presence_of(:minutes_spent_exercising) }
    it { should validate_numericality_of(:minutes_spent_exercising) }
    it { should validate_presence_of(:calories_consumed) }
    it { should validate_numericality_of(:calories_consumed) }
    it { should validate_presence_of(:alcoholic_drinks) }
    it { should validate_numericality_of(:alcoholic_drinks) }
    it { should validate_presence_of(:happiness_index) }
    it { should validate_numericality_of(:happiness_index) }
  end

end
