class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    redirect_to new_wellness_tracker_path, success: "Thanks for signing up"
  end
  

end