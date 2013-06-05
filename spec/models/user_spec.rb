# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  password_digest :string(255)
#

require "spec_helper"

describe User do

  context "validations" do 
    it { should validate_presence_of(:email) }
    pending "validate email regex"
  end
  
end
