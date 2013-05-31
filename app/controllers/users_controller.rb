class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      redirect_to new_wellness_tracker_path, success: "Thanks for signing up"
    else
      render :new
    end
  end
  
  private

    def user_params
      params[:user].permit(:email, :password, :password_confirmation)  
    end

end